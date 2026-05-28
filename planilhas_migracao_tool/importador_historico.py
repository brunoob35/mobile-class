#!/usr/bin/env python3
from __future__ import annotations

import argparse
import csv
import json
import re
import unicodedata
import zipfile
from collections import Counter, defaultdict
from dataclasses import dataclass
from datetime import datetime, timedelta
from difflib import SequenceMatcher
from pathlib import Path
from typing import Any
from xml.etree import ElementTree as ET


NS = {
    "main": "http://schemas.openxmlformats.org/spreadsheetml/2006/main",
    "rel": "http://schemas.openxmlformats.org/officeDocument/2006/relationships",
    "pkgrel": "http://schemas.openxmlformats.org/package/2006/relationships",
}


@dataclass(frozen=True)
class WorkbookSource:
    filename: str
    year: int | None
    clients_sheet: str | None = None
    contracts_sheet: str | None = None
    records_sheet: str | None = None
    teachers_sheet: str | None = None


WORKBOOKS = [
    WorkbookSource("Controle 2022.xlsx", 2022, contracts_sheet="Contratos", records_sheet="Registros"),
    WorkbookSource("Controle 2023.xlsx", 2023, clients_sheet="Dados Clientes", records_sheet="Registros"),
    WorkbookSource("Controle 2024.xlsx", 2024, clients_sheet="Banco Clientes", contracts_sheet="Contratos Clientes", records_sheet="Registros"),
    WorkbookSource("Controle - 2025.xlsx", 2025, clients_sheet="DB-Clientes", contracts_sheet="Contratos Clientes", records_sheet="Registros"),
    WorkbookSource("Controle - 2026.xlsx", 2026, clients_sheet="DB-Clientes", contracts_sheet="Contratos Clientes", records_sheet="Registros"),
    WorkbookSource("Informações Professoras Tree House.xlsx", None, teachers_sheet="Respostas ao formulário 1"),
]

DEFAULT_TEACHER_PASSWORD_HASH = "$2b$12$.lsWfPiEuHjLDtXrLJwxAe/LaFgoRXoDj/8i3l.7wnY/qkaACLAB6"
TODAY_ISO = "2026-05-19"


CLIENT_HEADER_ALIASES = {
    "contract_active": ["contrato ativo?", "contrato ativo", "c. ativo", "ativo?", "f"],
    "student_name": ["nome completo do aluno", "nome aluno", "nome alunos:"],
    "responsible_name": ["nome responsável", "nome responsavel", "pais", "nome completo dos pais"],
    "family_name": ["nome família", "nome familia"],
    "phone": ["celular contato", "contato (celular)", "telefone para contato", "telefone"],
    "birth_date": ["data nascimento aluno", "data de nascimento"],
    "address": ["endereço", "endereco"],
    "cep": ["cep"],
    "cpf": ["cpf"],
    "rg": ["rg"],
    "email": ["e-mail", "email"],
}

CONTRACT_HEADER_ALIASES = {
    "student_name": ["aluno", "nome aluno"],
    "responsible_name": ["responsável", "responsavel", "pais"],
    "contract_start": ["início do contrato", "inicio do contrato", "data inicio contrato"],
    "contract_end": ["fim do contrato", "final c. 07/11", "vencimento contrato"],
    "lesson_count": ["número de aulas contrato", "numero de aulas contrato", "quantidade aulas"],
    "contract_value": ["valor do contrato", "valor", "valor mensal", "valor pago", "valor com desconto"],
    "remaining_days": ["dias faltantes"],
}

RECORD_HEADER_ALIASES = {
    "month_label": ["mes da aula", "mês de aula", "mes de aula"],
    "submitted_at": ["carimbo de data/hora"],
    "teacher_name": ["professora:", "professora"],
    "lesson_status": ["status aula"],
    "student_name": ["aluno:", "aluno"],
    "lesson_hours": ["horas de aula"],
    "lesson_date": ["data"],
    "comments": ["comentarios", "comentários", "observações:", "observacoes:", "saldo: o que aprendeu?", "saldo"],
    "performance": ["desempenho do aluno", "desempenho"],
}

TEACHER_HEADER_ALIASES = {
    "submitted_at": ["carimbo de data/hora"],
    "teacher_name": ["nome completo"],
    "birth_date": ["data de nascimento"],
    "rg": ["rg"],
    "cpf": ["cpf"],
    "nationality": ["nacionalidade"],
    "marital_status": ["estado civil"],
    "address": ["endereço", "endereco"],
    "phone": ["telefone"],
    "email": ["e-mail", "email"],
}


def strip_accents(value: str) -> str:
    return "".join(
        c for c in unicodedata.normalize("NFD", value or "") if unicodedata.category(c) != "Mn"
    )


def normalize_text(value: Any) -> str:
    text = str(value or "").strip()
    text = text.replace("\xa0", " ")
    text = re.sub(r"\s+", " ", text)
    return text


def normalize_key(value: Any) -> str:
    text = normalize_text(value).lower()
    text = strip_accents(text)
    text = re.sub(r"[^a-z0-9 ]+", " ", text)
    text = re.sub(r"\s+", " ", text).strip()
    return text


def slugify(value: str) -> str:
    text = strip_accents(normalize_text(value)).lower()
    text = re.sub(r"[^a-z0-9]+", ".", text)
    text = re.sub(r"\.+", ".", text).strip(".")
    return text


def clean_phone(value: str) -> str:
    digits = re.sub(r"\D+", "", normalize_text(value))
    return digits


def clean_document(value: str) -> str:
    return re.sub(r"\D+", "", normalize_text(value))


def clean_active_flag(value: str) -> str:
    key = normalize_key(value)
    if key in {"ativo", "sim", "s", "true", "1"}:
        return "Ativo"
    if key in {"inativo", "nao", "n", "false", "0"}:
        return "Inativo"
    return normalize_text(value)


def excel_serial_to_iso(value: str, include_time: bool = False) -> str:
    text = normalize_text(value)
    if not re.fullmatch(r"\d+(\.\d+)?", text):
        return text
    try:
        serial = float(text)
    except ValueError:
        return text
    if serial < 20000 or serial > 70000:
        return text
    base = datetime(1899, 12, 30)
    converted = base + timedelta(days=serial)
    if include_time and abs(serial - int(serial)) > 1e-9:
        return converted.strftime("%Y-%m-%d %H:%M:%S")
    return converted.strftime("%Y-%m-%d")


def sql_literal(value: Any) -> str:
    if value is None:
        return "NULL"
    text = normalize_text(str(value))
    if text == "":
        return "NULL"
    escaped = text.replace("\\", "\\\\").replace("'", "''")
    return f"'{escaped}'"


def normalize_decimal_string(value: str) -> str:
    text = normalize_text(value)
    if not text:
        return text
    if "," in text and "." in text:
        text = text.replace(".", "").replace(",", ".")
    elif "," in text:
        text = text.replace(",", ".")
    return text


def is_numeric_decimal(value: str) -> bool:
    return bool(re.fullmatch(r"\d+(\.\d+)?", normalize_text(value)))


def looks_like_header(value: str) -> bool:
    key = normalize_key(value)
    return any(
        key in aliases
        for alias_map in (
            CLIENT_HEADER_ALIASES,
            CONTRACT_HEADER_ALIASES,
            RECORD_HEADER_ALIASES,
            TEACHER_HEADER_ALIASES,
        )
        for aliases in alias_map.values()
    )


class XlsxReader:
    def __init__(self, path: Path) -> None:
        self.path = path
        self.zf = zipfile.ZipFile(path)
        self.shared_strings = self._load_shared_strings()
        self.sheet_files = self._load_sheet_files()

    def _xml(self, name: str) -> ET.Element:
        return ET.fromstring(self.zf.read(name))

    def _load_shared_strings(self) -> list[str]:
        try:
            root = self._xml("xl/sharedStrings.xml")
        except KeyError:
            return []
        values: list[str] = []
        for si in root.findall("main:si", NS):
            parts = []
            for node in si.iter():
                if node.tag == f"{{{NS['main']}}}t":
                    parts.append(node.text or "")
            values.append("".join(parts))
        return values

    def _load_sheet_files(self) -> dict[str, str]:
        workbook = self._xml("xl/workbook.xml")
        rels = self._xml("xl/_rels/workbook.xml.rels")
        rel_map = {
            rel.attrib["Id"]: rel.attrib["Target"]
            for rel in rels.findall("pkgrel:Relationship", NS)
        }
        sheet_files: dict[str, str] = {}
        for sheet in workbook.findall("main:sheets/main:sheet", NS):
            rid = sheet.attrib.get(f"{{{NS['rel']}}}id")
            target = rel_map.get(rid, "")
            if target and not target.startswith("xl/"):
                target = f"xl/{target}"
            sheet_files[sheet.attrib["name"]] = target
        return sheet_files

    def available_sheets(self) -> list[str]:
        return list(self.sheet_files.keys())

    def read_sheet(self, sheet_name: str) -> list[list[str]]:
        if sheet_name not in self.sheet_files:
            raise KeyError(f"Aba ausente: {sheet_name}")
        root = self._xml(self.sheet_files[sheet_name])
        rows: list[list[str]] = []
        max_index = 0
        parsed_rows: list[dict[int, str]] = []
        for row in root.findall(".//main:sheetData/main:row", NS):
            data: dict[int, str] = {}
            for cell in row.findall("main:c", NS):
                ref = cell.attrib.get("r", "")
                index = self._col_to_index(ref)
                value = self._cell_value(cell)
                data[index] = value
                if index > max_index:
                    max_index = index
            parsed_rows.append(data)
        for data in parsed_rows:
            rows.append([normalize_text(data.get(i, "")) for i in range(max_index + 1)])
        return rows

    def _cell_value(self, cell: ET.Element) -> str:
        cell_type = cell.attrib.get("t")
        if cell_type == "inlineStr":
            node = cell.find("main:is/main:t", NS)
            return node.text if node is not None and node.text else ""
        node = cell.find("main:v", NS)
        if node is None or node.text is None:
            return ""
        raw = node.text
        if cell_type == "s":
            try:
                return self.shared_strings[int(raw)]
            except (ValueError, IndexError):
                return raw
        return raw

    @staticmethod
    def _col_to_index(ref: str) -> int:
        letters = "".join(ch for ch in ref if ch.isalpha())
        result = 0
        for ch in letters:
            result = result * 26 + (ord(ch.upper()) - ord("A") + 1)
        return max(result - 1, 0)


def score_header(row: list[str], alias_map: dict[str, list[str]]) -> int:
    score = 0
    keys = [normalize_key(value) for value in row if normalize_text(value)]
    for aliases in alias_map.values():
        if any(key in aliases for key in keys):
            score += 1
    return score


def locate_header(rows: list[list[str]], alias_map: dict[str, list[str]]) -> tuple[int, list[str]]:
    best_idx = -1
    best_score = -1
    for idx, row in enumerate(rows[:15]):
        current = score_header(row, alias_map)
        if current > best_score:
            best_idx = idx
            best_score = current
    if best_idx < 0 or best_score <= 0:
        raise ValueError("Nao foi possivel identificar o cabecalho da aba")
    return best_idx, rows[best_idx]


def canonicalize_headers(headers: list[str], alias_map: dict[str, list[str]]) -> list[str]:
    result = []
    for idx, header in enumerate(headers):
        key = normalize_key(header)
        mapped = None
        for canonical, aliases in alias_map.items():
            if key in aliases:
                mapped = canonical
                break
        result.append(mapped or f"extra_{idx}")
    return result


def rows_to_dicts(rows: list[list[str]], alias_map: dict[str, list[str]]) -> list[dict[str, str]]:
    header_idx, headers = locate_header(rows, alias_map)
    previous_row = rows[header_idx - 1] if header_idx > 0 else []
    row_offset = 0
    full_score = score_header(headers, alias_map)
    shifted_score = score_header(headers[1:], alias_map) if len(headers) > 1 else -1
    prev_first = previous_row[0] if previous_row else ""
    if prev_first and looks_like_header(prev_first) and headers and not looks_like_header(headers[0]):
        headers = [prev_first] + headers[1:]
        full_score = score_header(headers, alias_map)
        shifted_score = score_header(headers[1:], alias_map) if len(headers) > 1 else -1
    if shifted_score > full_score and not looks_like_header(headers[0]):
        row_offset = 1
        headers = headers[1:]

    canonical_headers = canonicalize_headers(headers, alias_map)
    parsed: list[dict[str, str]] = []
    for row in rows[header_idx + 1 :]:
        if not any(normalize_text(value) for value in row):
            continue
        item = {}
        for idx, header in enumerate(canonical_headers):
            source_idx = idx + row_offset
            item[header] = normalize_text(row[source_idx]) if source_idx < len(row) else ""
        parsed.append(item)
    return parsed


def filter_real_rows(rows: list[dict[str, str]], required_fields: list[str]) -> list[dict[str, str]]:
    filtered = []
    for row in rows:
        if any(normalize_text(row.get(field, "")) for field in required_fields):
            filtered.append(row)
    return filtered


def pick_workbook(input_dir: Path, filename: str) -> Path:
    path = input_dir / filename
    if not path.exists():
        raise FileNotFoundError(f"Arquivo ausente: {filename}")
    return path


def build_teacher_registry(info_rows: list[dict[str, str]], lesson_rows: list[dict[str, str]]) -> list[dict[str, str]]:
    by_key: dict[str, dict[str, str]] = {}
    for row in info_rows:
        name = row.get("teacher_name", "")
        key = normalize_key(name)
        if not key:
            continue
        by_key[key] = {
            "nome": name,
            "nome_normalizado": key,
            "email": row.get("email", ""),
            "telefone": clean_phone(row.get("phone", "")),
            "cpf": clean_document(row.get("cpf", "")),
            "rg": clean_document(row.get("rg", "")),
            "nascimento": excel_serial_to_iso(row.get("birth_date", "")),
            "endereco": row.get("address", ""),
            "origem": "informacoes_professoras",
            "ativo_2026": "FALSE",
            "aulas_2026": "0",
        }
    for row in lesson_rows:
        name = row.get("teacher_name", "") or row.get("professora_nome", "")
        key = normalize_key(name) or row.get("professora_nome_normalizado", "")
        if not key:
            continue
        item = by_key.setdefault(
            key,
            {
                "nome": name,
                "nome_normalizado": key,
                "email": "",
                "telefone": "",
                "cpf": "",
                "rg": "",
                "nascimento": "",
                "endereco": "",
                "origem": "registros_aulas",
                "ativo_2026": "FALSE",
                "aulas_2026": "0",
            },
        )
        if row.get("ano_origem") == "2026":
            item["ativo_2026"] = "TRUE"
            item["aulas_2026"] = str(int(item.get("aulas_2026", "0") or "0") + 1)
    return sorted(by_key.values(), key=lambda item: item["nome_normalizado"])


def build_teacher_user_rows(teachers: list[dict[str, str]]) -> list[dict[str, str]]:
    taken_emails: set[str] = set()
    result: list[dict[str, str]] = []
    for idx, teacher in enumerate(teachers, start=1):
        base_email = normalize_text(teacher.get("email", "")).lower()
        email_provisorio = "FALSE"
        if not base_email:
            slug = slugify(teacher["nome"]) or f"professora.{idx}"
            base_email = f"{slug}@treehouse.import"
            email_provisorio = "TRUE"
        email = base_email
        suffix = 2
        while email in taken_emails:
            local, _, domain = base_email.partition("@")
            email = f"{local}.{suffix}@{domain or 'treehouse.import'}"
            suffix += 1
        taken_emails.add(email)
        missing_fields = []
        if email_provisorio == "TRUE":
            missing_fields.append("email_real")
        if not normalize_text(teacher.get("telefone", "")):
            missing_fields.append("telefone")
        if not normalize_text(teacher.get("cpf", "")):
            missing_fields.append("cpf")
        if not normalize_text(teacher.get("rg", "")):
            missing_fields.append("rg")
        if not normalize_text(teacher.get("nascimento", "")):
            missing_fields.append("nascimento")
        if teacher.get("origem", "") == "registros_aulas":
            missing_fields.append("cadastro_base_ausente")
        result.append(
            {
                "import_key": f"teacher::{teacher['nome_normalizado']}",
                "nome": teacher["nome"],
                "email": email,
                "telefone": teacher.get("telefone", ""),
                "cpf": teacher.get("cpf", ""),
                "rg": teacher.get("rg", ""),
                "nascimento": teacher.get("nascimento", ""),
                "senha_hash": DEFAULT_TEACHER_PASSWORD_HASH,
                "permissao_id": "2",
                "ativo": teacher.get("ativo_2026", "FALSE"),
                "aulas_2026": teacher.get("aulas_2026", "0"),
                "email_provisorio": email_provisorio,
                "cadastro_incompleto": "TRUE" if missing_fields else "FALSE",
                "campos_pendentes": " | ".join(missing_fields),
                "origem": teacher.get("origem", ""),
            }
        )
    return result


def choose_primary_key(*candidates: str) -> str:
    for candidate in candidates:
        if normalize_text(candidate):
            return normalize_text(candidate)
    return ""


def build_normalized_clients(current_clients: list[dict[str, str]]) -> list[dict[str, str]]:
    buckets: dict[str, dict[str, Any]] = {}
    for row in current_clients:
        key = choose_primary_key(
            f"cpf::{row['cpf']}" if row["cpf"] else "",
            f"email::{normalize_text(row['email']).lower()}" if row["email"] else "",
            f"phone::{row['telefone']}::{row['responsavel_nome_normalizado']}" if row["telefone"] else "",
            f"name::{row['responsavel_nome_normalizado']}",
        )
        if not key:
            continue
        item = buckets.setdefault(
            key,
            {
                "import_key": key,
                "nome": row["responsavel_nome"],
                "nome_normalizado": row["responsavel_nome_normalizado"],
                "telefone": row["telefone"],
                "cpf": row["cpf"],
                "rg": row["rg"],
                "email": normalize_text(row["email"]).lower(),
                "endereco": row["endereco"],
                "cep": row["cep"],
                "clientes_familia": set(),
                "alunos": set(),
                "linhas_origem": 0,
                "contratos_ativos": 0,
            },
        )
        item["linhas_origem"] += 1
        if row["familia_nome"]:
            item["clientes_familia"].add(row["familia_nome"])
        if row["aluno_nome"]:
            item["alunos"].add(row["aluno_nome"])
        if row["contrato_ativo"] == "Ativo":
            item["contratos_ativos"] += 1
        if not item["telefone"] and row["telefone"]:
            item["telefone"] = row["telefone"]
        if not item["cpf"] and row["cpf"]:
            item["cpf"] = row["cpf"]
        if not item["rg"] and row["rg"]:
            item["rg"] = row["rg"]
        if not item["email"] and row["email"]:
            item["email"] = normalize_text(row["email"]).lower()
        if not item["endereco"] and row["endereco"]:
            item["endereco"] = row["endereco"]
        if not item["cep"] and row["cep"]:
            item["cep"] = row["cep"]

    result = []
    for item in buckets.values():
        result.append(
            {
                "import_key": item["import_key"],
                "nome": item["nome"],
                "nome_normalizado": item["nome_normalizado"],
                "telefone": item["telefone"],
                "cpf": item["cpf"],
                "rg": item["rg"],
                "email": item["email"],
                "endereco": item["endereco"],
                "cep": item["cep"],
                "familias": " | ".join(sorted(item["clientes_familia"])),
                "alunos_vinculados": len(item["alunos"]),
                "contratos_ativos": item["contratos_ativos"],
                "linhas_origem": item["linhas_origem"],
            }
        )
    return sorted(result, key=lambda row: row["nome_normalizado"])


def build_normalized_students(current_clients: list[dict[str, str]], lessons: list[dict[str, str]]) -> list[dict[str, str]]:
    buckets: dict[str, dict[str, Any]] = {}
    for row in current_clients:
        key = choose_primary_key(
            f"name_birth::{row['aluno_nome_normalizado']}::{row['nascimento_aluno']}" if row["nascimento_aluno"] else "",
            f"name::{row['aluno_nome_normalizado']}",
        )
        if not key:
            continue
        item = buckets.setdefault(
            key,
            {
                "import_key": key,
                "nome": row["aluno_nome"],
                "nome_normalizado": row["aluno_nome_normalizado"],
                "nascimento": row["nascimento_aluno"],
                "responsaveis": set(),
                "enderecos": set(),
                "origens": set(),
            },
        )
        item["responsaveis"].add(row["responsavel_nome"])
        if row["endereco"]:
            item["enderecos"].add(row["endereco"])
        item["origens"].add("clientes_2026")

    for row in lessons:
        key = choose_primary_key(f"name::{row['aluno_nome_normalizado']}")
        if not key:
            continue
        item = buckets.setdefault(
            key,
            {
                "import_key": key,
                "nome": row["aluno_nome"],
                "nome_normalizado": row["aluno_nome_normalizado"],
                "nascimento": "",
                "responsaveis": set(),
                "enderecos": set(),
                "origens": set(),
            },
        )
        item["origens"].add(f"registros_{row['ano_origem']}")

    result = []
    for item in buckets.values():
        result.append(
            {
                "import_key": item["import_key"],
                "nome": item["nome"],
                "nome_normalizado": item["nome_normalizado"],
                "nascimento": item["nascimento"],
                "responsaveis_referencia": " | ".join(sorted(item["responsaveis"])),
                "enderecos_referencia": " | ".join(sorted(item["enderecos"])),
                "origens": " | ".join(sorted(item["origens"])),
            }
        )
    return sorted(result, key=lambda row: row["nome_normalizado"])


def build_client_student_links(current_clients: list[dict[str, str]]) -> list[dict[str, str]]:
    links = {}
    for row in current_clients:
        client_key = choose_primary_key(
            f"cpf::{row['cpf']}" if row["cpf"] else "",
            f"email::{normalize_text(row['email']).lower()}" if row["email"] else "",
            f"phone::{row['telefone']}::{row['responsavel_nome_normalizado']}" if row["telefone"] else "",
            f"name::{row['responsavel_nome_normalizado']}",
        )
        student_key = choose_primary_key(
            f"name_birth::{row['aluno_nome_normalizado']}::{row['nascimento_aluno']}" if row["nascimento_aluno"] else "",
            f"name::{row['aluno_nome_normalizado']}",
        )
        if not client_key or not student_key:
            continue
        links[(client_key, student_key)] = {
            "cliente_import_key": client_key,
            "aluno_import_key": student_key,
            "cliente_nome": row["responsavel_nome"],
            "aluno_nome": row["aluno_nome"],
            "contrato_ativo": row["contrato_ativo"],
        }
    return sorted(links.values(), key=lambda row: (row["cliente_import_key"], row["aluno_import_key"]))


def infer_primary_teacher_by_student(lessons: list[dict[str, str]], year: str | None = None) -> dict[str, str]:
    by_student: dict[str, Counter[str]] = defaultdict(Counter)
    for row in lessons:
        if year and row["ano_origem"] != year:
            continue
        student_key = row["aluno_nome_normalizado"]
        teacher_key = row["professora_nome_normalizado"]
        if student_key and teacher_key:
            by_student[student_key][teacher_key] += 1
    resolved = {}
    for student_key, counter in by_student.items():
        resolved[student_key] = counter.most_common(1)[0][0]
    return resolved


def map_raw_status_to_status_id(raw_status: str, lesson_date: str) -> str:
    key = normalize_key(raw_status)
    if key == "aula indenizada":
        return "6"
    if key in {"aula ok", "colonia ferias", "treinamento", "treinamento inicial", "office hours", "aula experimental"}:
        return "2"
    if lesson_date and lesson_date < TODAY_ISO:
        return "2"
    return "1"


def build_legacy_classes(lessons: list[dict[str, str]], teacher_lookup: dict[str, dict[str, str]]) -> list[dict[str, str]]:
    buckets = {}
    for row in lessons:
        student_key = row["aluno_nome_normalizado"]
        teacher_key = row["professora_nome_normalizado"]
        if not student_key:
            continue
        class_key = f"legacy::{teacher_key or 'sem-professora'}::{student_key}"
        teacher_name = teacher_lookup.get(teacher_key, {}).get("nome", row["professora_nome"])
        item = buckets.setdefault(
            class_key,
            {
                "import_key": class_key,
                "nome": f"Legacy - {row['aluno_nome']}",
                "descricao_recorrencia": f"Histórico importado de planilhas - professora {teacher_name or 'não informada'}",
                "professora_import_key": f"teacher::{teacher_key}" if teacher_key else "",
                "professora_nome": teacher_name or row["professora_nome"],
                "aluno_nome": row["aluno_nome"],
                "aluno_import_key": f"name::{student_key}",
                "primeira_aula": row["data_aula"],
                "ultima_aula": row["data_aula"],
                "quantidade_aulas": 0,
            },
        )
        item["quantidade_aulas"] += 1
        if row["data_aula"] and (not item["primeira_aula"] or row["data_aula"] < item["primeira_aula"]):
            item["primeira_aula"] = row["data_aula"]
        if row["data_aula"] and (not item["ultima_aula"] or row["data_aula"] > item["ultima_aula"]):
            item["ultima_aula"] = row["data_aula"]
    return sorted(buckets.values(), key=lambda row: row["import_key"])


def build_normalized_lessons(lessons: list[dict[str, str]]) -> list[dict[str, str]]:
    result = []
    for idx, row in enumerate(sorted(lessons, key=lambda item: (item["data_aula"], item["professora_nome_normalizado"], item["aluno_nome_normalizado"])), start=1):
        class_key = f"legacy::{row['professora_nome_normalizado'] or 'sem-professora'}::{row['aluno_nome_normalizado']}"
        result.append(
            {
                "import_key": f"lesson::{idx:05d}",
                "turma_import_key": class_key,
                "professora_import_key": f"teacher::{row['professora_nome_normalizado']}" if row["professora_nome_normalizado"] else "",
                "aluno_import_key": f"name::{row['aluno_nome_normalizado']}",
                "ano_origem": row["ano_origem"],
                "status_bruto": row["status_aula"],
                "status_id_sugerido": map_raw_status_to_status_id(row["status_aula"], row["data_aula"]),
                "data_aula": row["data_aula"],
                "horas_aula": row["horas_aula"],
                "assunto": row["status_aula"],
                "saldo": row["comentarios"],
                "observacoes": row["desempenho"],
            }
        )
    return result


def build_contract_candidates(
    current_contracts: list[dict[str, str]],
    current_clients: list[dict[str, str]],
    teacher_by_student_2026: dict[str, str],
    contract_value_overrides: dict[tuple[str, str, str, str], str],
) -> list[dict[str, str]]:
    client_index = {}
    student_birth = {}
    for row in current_clients:
        student_index_key = row["aluno_nome_normalizado"]
        student_birth.setdefault(student_index_key, row["nascimento_aluno"])
        client_key = choose_primary_key(
            f"cpf::{row['cpf']}" if row["cpf"] else "",
            f"email::{normalize_text(row['email']).lower()}" if row["email"] else "",
            f"phone::{row['telefone']}::{row['responsavel_nome_normalizado']}" if row["telefone"] else "",
            f"name::{row['responsavel_nome_normalizado']}",
        )
        if client_key:
            client_index[(row["responsavel_nome_normalizado"], row["aluno_nome_normalizado"])] = client_key

    result = []
    for idx, row in enumerate(current_contracts, start=1):
        student_key = choose_primary_key(
            f"name_birth::{row['aluno_nome_normalizado']}::{student_birth.get(row['aluno_nome_normalizado'], '')}" if student_birth.get(row["aluno_nome_normalizado"], "") else "",
            f"name::{row['aluno_nome_normalizado']}",
        )
        client_key = client_index.get((row["responsavel_nome_normalizado"], row["aluno_nome_normalizado"])) or f"name::{row['responsavel_nome_normalizado']}"
        teacher_norm = teacher_by_student_2026.get(row["aluno_nome_normalizado"], "")
        turma_key = f"current::{row['aluno_nome_normalizado']}"
        override_key = (
            row["aluno_nome_normalizado"],
            row["responsavel_nome_normalizado"],
            row["inicio_contrato"],
            row["fim_contrato"],
        )
        valor = normalize_decimal_string(row["valor_contrato"])
        if override_key in contract_value_overrides:
            valor = contract_value_overrides[override_key]
        result.append(
            {
                "import_key": f"contract::{idx:04d}",
                "cliente_representante_import_key": client_key,
                "cliente_responsavel_import_key": client_key,
                "aluno_import_key": student_key,
                "turma_import_key": turma_key,
                "professora_import_key": f"teacher::{teacher_norm}" if teacher_norm else "",
                "aluno_nome": row["aluno_nome"],
                "responsavel_nome": row["responsavel_nome"],
                "inicio_contrato": row["inicio_contrato"],
                "fim_contrato": row["fim_contrato"],
                "numero_aulas": row["numero_aulas"],
                "valor": valor,
                "status_id_sugerido": "1" if row["fim_contrato"] >= TODAY_ISO else "3",
                "tipo_contrato_id_sugerido": "1",
            }
        )
    return result


def build_current_classes(contract_candidates: list[dict[str, str]], teacher_lookup: dict[str, dict[str, str]]) -> list[dict[str, str]]:
    result = []
    seen = set()
    for contract in contract_candidates:
        turma_key = contract["turma_import_key"]
        if turma_key in seen:
            continue
        seen.add(turma_key)
        teacher_key = contract["professora_import_key"].replace("teacher::", "", 1) if contract["professora_import_key"] else ""
        teacher_name = teacher_lookup.get(teacher_key, {}).get("nome", "")
        result.append(
            {
                "import_key": turma_key,
                "nome": f"Turma {contract['aluno_nome']}",
                "descricao_recorrencia": "Turma inferida a partir do contrato vigente 2026",
                "professora_import_key": contract["professora_import_key"],
                "professora_nome": teacher_name,
                "aluno_nome": contract["aluno_nome"],
                "aluno_import_key": contract["aluno_import_key"],
                "primeira_aula": contract["inicio_contrato"],
                "ultima_aula": contract["fim_contrato"],
                "quantidade_aulas": contract["numero_aulas"],
            }
        )
    return sorted(result, key=lambda row: row["import_key"])


def write_json(path: Path, payload: Any) -> None:
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")


def build_teacher_seed_sql(teacher_users: list[dict[str, str]]) -> str:
    statements = [
        "-- Seed de usuarias professoras importadas das planilhas",
        "-- Senha inicial padrao: NovoUser",
        "-- Quando o cadastro estiver incompleto, os comentarios abaixo indicam os campos pendentes.",
        "",
    ]
    for teacher in teacher_users:
        if teacher.get("cadastro_incompleto") == "TRUE":
            statements.append(
                f"-- CADASTRO INCOMPLETO: {teacher['nome']} | pendencias: {teacher.get('campos_pendentes', 'nao informado')}"
            )
        statements.append(
            "INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)\n"
            f"VALUES ({sql_literal(teacher['senha_hash'])}, {sql_literal(teacher['nome'])}, {sql_literal(teacher['email'])}, "
            f"{sql_literal(teacher['cpf'])}, {sql_literal(teacher['rg'])}, {sql_literal(teacher['telefone'])}, {teacher['ativo']}, {sql_literal(teacher['nascimento'])})\n"
            "ON DUPLICATE KEY UPDATE\n"
            "    nome = VALUES(nome),\n"
            "    cpf = COALESCE(NULLIF(VALUES(cpf), ''), usuarios.cpf),\n"
            "    rg = COALESCE(NULLIF(VALUES(rg), ''), usuarios.rg),\n"
            "    telefone = COALESCE(NULLIF(VALUES(telefone), ''), usuarios.telefone),\n"
            "    nascimento = COALESCE(VALUES(nascimento), usuarios.nascimento),\n"
            "    ativo = VALUES(ativo);\n"
        )
        statements.append(
            "INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao)\n"
            f"SELECT id, 2 FROM usuarios WHERE email = {sql_literal(teacher['email'])};\n"
        )
    return "\n".join(statements)


def build_staging_schema_sql() -> str:
    return """-- Tabelas de staging para revisao e futura importacao
CREATE TABLE IF NOT EXISTS import_professoras (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(20) NULL,
    cpf VARCHAR(14) NULL,
    rg VARCHAR(20) NULL,
    nascimento DATE NULL,
    senha_hash VARCHAR(255) NOT NULL,
    permissao_id INT NOT NULL,
    origem VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS import_clientes_2026 (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    nome_normalizado VARCHAR(150) NOT NULL,
    telefone VARCHAR(20) NULL,
    cpf VARCHAR(14) NULL,
    rg VARCHAR(20) NULL,
    email VARCHAR(150) NULL,
    endereco TEXT NULL,
    cep VARCHAR(8) NULL,
    familias TEXT NULL,
    alunos_vinculados INT NOT NULL,
    contratos_ativos INT NOT NULL,
    linhas_origem INT NOT NULL
);

CREATE TABLE IF NOT EXISTS import_alunos (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    nome_normalizado VARCHAR(150) NOT NULL,
    nascimento DATE NULL,
    responsaveis_referencia TEXT NULL,
    enderecos_referencia TEXT NULL,
    origens TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS import_clientes_alunos (
    cliente_import_key VARCHAR(255) NOT NULL,
    aluno_import_key VARCHAR(255) NOT NULL,
    cliente_nome VARCHAR(150) NOT NULL,
    aluno_nome VARCHAR(150) NOT NULL,
    contrato_ativo VARCHAR(20) NULL,
    PRIMARY KEY (cliente_import_key, aluno_import_key)
);

CREATE TABLE IF NOT EXISTS import_turmas (
    import_key VARCHAR(255) PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    descricao_recorrencia TEXT NULL,
    professora_import_key VARCHAR(255) NULL,
    professora_nome VARCHAR(150) NULL,
    aluno_nome VARCHAR(150) NULL,
    aluno_import_key VARCHAR(255) NULL,
    primeira_aula DATE NULL,
    ultima_aula DATE NULL,
    quantidade_aulas VARCHAR(30) NULL
);

CREATE TABLE IF NOT EXISTS import_contratos_2026 (
    import_key VARCHAR(255) PRIMARY KEY,
    cliente_representante_import_key VARCHAR(255) NOT NULL,
    cliente_responsavel_import_key VARCHAR(255) NOT NULL,
    aluno_import_key VARCHAR(255) NOT NULL,
    turma_import_key VARCHAR(255) NOT NULL,
    professora_import_key VARCHAR(255) NULL,
    aluno_nome VARCHAR(150) NOT NULL,
    responsavel_nome VARCHAR(150) NOT NULL,
    inicio_contrato DATE NULL,
    fim_contrato DATE NULL,
    numero_aulas VARCHAR(30) NULL,
    valor VARCHAR(30) NULL,
    status_id_sugerido INT NOT NULL,
    tipo_contrato_id_sugerido INT NOT NULL
);

CREATE TABLE IF NOT EXISTS import_aulas_historicas (
    import_key VARCHAR(255) PRIMARY KEY,
    turma_import_key VARCHAR(255) NOT NULL,
    professora_import_key VARCHAR(255) NULL,
    aluno_import_key VARCHAR(255) NOT NULL,
    ano_origem INT NOT NULL,
    status_bruto VARCHAR(100) NULL,
    status_id_sugerido INT NOT NULL,
    data_aula DATE NOT NULL,
    horas_aula VARCHAR(30) NULL,
    assunto VARCHAR(255) NULL,
    saldo TEXT NULL,
    observacoes TEXT NULL
);
"""


def build_import_plan_markdown(summary: dict[str, Any]) -> str:
    return f"""# Plano de importacao historica

## Resumo atual

- Clientes atuais 2026: {summary['totais']['clientes_atuais_2026']}
- Clientes ativos 2026: {summary['totais']['clientes_ativos_2026']}
- Contratos atuais 2026: {summary['totais']['contratos_atuais_2026']}
- Aulas historicas: {summary['totais']['aulas_historicas']}
- Alunos historicos unicos: {summary['totais']['alunos_historicos_unicos']}
- Professoras historicas unicas: {summary['totais']['professoras_historicas_unicas']}
- Professoras ativas em 2026: {summary['totais']['professoras_ativas_2026']}
- Professoras inativas em 2026: {summary['totais']['professoras_inativas_2026']}

## Ordem sugerida de importacao

1. Revisar `ambiguidades.json`
2. Importar `professoras_usuarios_seed.sql`
3. Carregar arquivos `import_*` nas tabelas de staging
4. Validar clientes/alunos/turmas inferidas
5. Gerar a carga final para tabelas reais

## Observacoes importantes

- `Controle - 2026.xlsx` continua sendo a fonte da verdade do estado atual.
- As aulas historicas foram inferidas a partir das abas `Registros`.
- As turmas historicas foram sintetizadas por combinacao professora + aluno.
- Isso preserva o historico, mas nao reconstrói perfeitamente aulas em grupo.
- Para professoras sem e-mail, a ferramenta gera e-mails temporarios `@treehouse.import`.
- A senha inicial padrao das professoras e `NovoUser`, ja em hash bcrypt.
"""


def build_quality_report(
    teacher_users: list[dict[str, str]],
    normalized_clients: list[dict[str, str]],
    contract_candidates: list[dict[str, str]],
) -> dict[str, Any]:
    incomplete_teacher_records = [row for row in teacher_users if row.get("cadastro_incompleto") == "TRUE"]
    invalid_teacher_cpfs = [row for row in teacher_users if row["cpf"] and len(row["cpf"]) != 11]
    invalid_teacher_rgs = [row for row in teacher_users if row["rg"] and len(row["rg"]) < 5]
    suspicious_teacher_phones = [row for row in teacher_users if row["telefone"] and len(row["telefone"]) not in {10, 11, 12, 13}]
    invalid_client_cpfs = [row for row in normalized_clients if row["cpf"] and len(row["cpf"]) != 11]
    suspicious_client_phones = [row for row in normalized_clients if row["telefone"] and len(row["telefone"]) not in {10, 11, 12, 13}]
    invalid_contract_values = [row for row in contract_candidates if not re.fullmatch(r"\d+(\.\d+)?", normalize_text(row["valor"]))]

    return {
        "teacher_incomplete_records": incomplete_teacher_records[:100],
        "teacher_cpfs_invalid_length": invalid_teacher_cpfs[:50],
        "teacher_rgs_suspicious": invalid_teacher_rgs[:50],
        "teacher_phones_suspicious": suspicious_teacher_phones[:50],
        "client_cpfs_invalid_length": invalid_client_cpfs[:50],
        "client_phones_suspicious": suspicious_client_phones[:50],
        "contract_values_non_numeric": invalid_contract_values[:50],
        "counts": {
            "teacher_incomplete_records": len(incomplete_teacher_records),
            "teacher_cpfs_invalid_length": len(invalid_teacher_cpfs),
            "teacher_rgs_suspicious": len(invalid_teacher_rgs),
            "teacher_phones_suspicious": len(suspicious_teacher_phones),
            "client_cpfs_invalid_length": len(invalid_client_cpfs),
            "client_phones_suspicious": len(suspicious_client_phones),
            "contract_values_non_numeric": len(invalid_contract_values),
        },
    }


def build_current_import_review_report(
    teacher_users: list[dict[str, str]],
    normalized_clients: list[dict[str, str]],
    contract_candidates: list[dict[str, str]],
    lessons: list[dict[str, str]],
) -> dict[str, Any]:
    active_client_keys = {row["import_key"] for row in normalized_clients if int(str(row.get("contratos_ativos", 0) or 0)) > 0}
    current_teacher_keys = {row["professora_import_key"] for row in contract_candidates if row.get("professora_import_key")}
    for row in lessons:
        if row.get("ano_origem") == "2026" and row.get("professora_import_key"):
            current_teacher_keys.add(row["professora_import_key"])

    active_teachers_with_doc_issues = []
    for row in teacher_users:
        issues = []
        cpf = normalize_text(row.get("cpf", ""))
        telefone = normalize_text(row.get("telefone", ""))
        if cpf and len(cpf) != 11:
            issues.append("CPF com tamanho inválido")
        if telefone and len(telefone) not in {10, 11, 12, 13}:
            issues.append("Telefone suspeito")
        if row["import_key"] in current_teacher_keys and issues:
            active_teachers_with_doc_issues.append(
                {
                    "nome": row["nome"],
                    "email": row["email"],
                    "cpf": cpf,
                    "telefone": telefone,
                    "issues": issues,
                    "blocking": False,
                    "reason": "Dados cadastrais opcionais ou burocráticos; não bloqueiam a importação.",
                }
            )

    active_clients_with_doc_issues = []
    for row in normalized_clients:
        issues = []
        cpf = normalize_text(row.get("cpf", ""))
        telefone = normalize_text(row.get("telefone", ""))
        if cpf and len(cpf) != 11:
            issues.append("CPF com tamanho inválido")
        if telefone and len(telefone) not in {10, 11, 12, 13}:
            issues.append("Telefone suspeito")
        if row["import_key"] in active_client_keys and issues:
            active_clients_with_doc_issues.append(
                {
                    "nome": row["nome"],
                    "cpf": cpf,
                    "telefone": telefone,
                    "email": row.get("email", ""),
                    "issues": issues,
                    "blocking": False,
                    "reason": "Documentos/telefone podem ficar pendentes; não bloqueiam a importação.",
                }
            )

    active_contract_value_issues = []
    for row in contract_candidates:
        value = normalize_text(row.get("valor", ""))
        if row.get("status_id_sugerido") == "1" and not re.fullmatch(r"\d+(\.\d+)?", value):
            active_contract_value_issues.append(
                {
                    "aluno_nome": row["aluno_nome"],
                    "responsavel_nome": row["responsavel_nome"],
                    "inicio_contrato": row["inicio_contrato"],
                    "fim_contrato": row["fim_contrato"],
                    "valor": value,
                    "issues": ["Valor do contrato ausente ou inválido"],
                    "blocking": True,
                    "reason": "Contrato vigente sem valor confiável precisa de revisão manual antes da carga final.",
                }
            )

    return {
        "summary": {
            "active_teachers_with_doc_issues": len(active_teachers_with_doc_issues),
            "active_clients_with_doc_issues": len(active_clients_with_doc_issues),
            "active_contracts_with_blocking_value_issues": len(active_contract_value_issues),
        },
        "blocking_items": {
            "active_contract_value_issues": active_contract_value_issues,
        },
        "non_blocking_items": {
            "active_teachers_with_doc_issues": active_teachers_with_doc_issues,
            "active_clients_with_doc_issues": active_clients_with_doc_issues,
        },
    }


def build_current_import_review_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Pendências para revisão manual do vigente 2026",
        "",
        "## Resumo",
        "",
        f"- Professoras ativas com pendências cadastrais não bloqueantes: {report['summary']['active_teachers_with_doc_issues']}",
        f"- Clientes ativos com pendências cadastrais não bloqueantes: {report['summary']['active_clients_with_doc_issues']}",
        f"- Contratos ativos com pendência bloqueante: {report['summary']['active_contracts_with_blocking_value_issues']}",
        "",
        "## Pendências bloqueantes",
        "",
    ]

    blocking = report["blocking_items"]["active_contract_value_issues"]
    if not blocking:
        lines.append("- Nenhuma pendência bloqueante encontrada.")
    else:
        for item in blocking:
            lines.append(
                f"- {item['aluno_nome']} / {item['responsavel_nome']}: valor `{item['valor'] or 'vazio'}` "
                f"({item['inicio_contrato']} até {item['fim_contrato']})"
            )

    lines.extend(["", "## Pendências não bloqueantes", ""])

    teacher_items = report["non_blocking_items"]["active_teachers_with_doc_issues"]
    if teacher_items:
        lines.append("### Professoras ativas")
        lines.append("")
        for item in teacher_items:
            lines.append(f"- {item['nome']}: {', '.join(item['issues'])}")
        lines.append("")

    client_items = report["non_blocking_items"]["active_clients_with_doc_issues"]
    if client_items:
        lines.append("### Clientes ativos")
        lines.append("")
        for item in client_items:
            lines.append(f"- {item['nome']}: {', '.join(item['issues'])}")
        lines.append("")

    if not teacher_items and not client_items:
        lines.append("- Nenhuma pendência não bloqueante encontrada.")

    lines.extend(
        [
            "## Observação",
            "",
            "- Conforme combinado, CPF/RG faltando ou inválido não precisa bloquear a importação.",
            "- O principal ponto de revisão manual do vigente 2026 são os contratos ativos com valor inválido ou ausente.",
            "",
        ]
    )
    return "\n".join(lines)


def valid_cpf_or_blank(value: str) -> str:
    value = clean_document(value)
    return value if len(value) == 11 else ""


def valid_phone_or_blank(value: str) -> str:
    value = clean_phone(value)
    return value if len(value) in {10, 11, 12, 13} else ""


def valid_rg_or_blank(value: str) -> str:
    value = clean_document(value)
    return value if 5 <= len(value) <= 20 else ""


def infer_contract_type_id(start_date: str, end_date: str) -> str:
    if not start_date or not end_date:
        return "5"
    try:
        start = datetime.strptime(start_date, "%Y-%m-%d")
        end = datetime.strptime(end_date, "%Y-%m-%d")
    except ValueError:
        return "5"
    months = (end.year - start.year) * 12 + (end.month - start.month)
    if months >= 11:
        return "1"
    if months >= 5:
        return "2"
    if months >= 2:
        return "3"
    if months >= 1:
        return "4"
    return "5"


def lookup_clause_for_client(row: dict[str, str]) -> str:
    cpf = valid_cpf_or_blank(row.get("cpf", ""))
    email = normalize_text(row.get("email", "")).lower()
    if cpf:
        return f"cpf = {sql_literal(cpf)}"
    if email:
        return f"email = {sql_literal(email)}"
    return f"nome = {sql_literal(row['nome'])}"


def lookup_clause_for_student(row: dict[str, str]) -> str:
    birth = normalize_text(row.get("nascimento", ""))
    if birth:
        return f"nome = {sql_literal(row['nome'])} AND nascimento = {sql_literal(birth)}"
    return f"nome = {sql_literal(row['nome'])}"


def sql_var_name(prefix: str, import_key: str) -> str:
    suffix = re.sub(r"[^a-zA-Z0-9]+", "_", import_key).strip("_").lower()
    return f"@{prefix}_{suffix[:40]}"


def build_current_2026_core_import_sql(
    teacher_users: list[dict[str, str]],
    normalized_clients: list[dict[str, str]],
    normalized_students: list[dict[str, str]],
    client_student_links: list[dict[str, str]],
    current_classes: list[dict[str, str]],
    contract_candidates: list[dict[str, str]],
) -> str:
    relevant_student_keys = {row["aluno_import_key"] for row in client_student_links} | {
        row["aluno_import_key"] for row in contract_candidates
    }
    relevant_client_keys = {
        row["cliente_import_key"] for row in client_student_links
    } | {row["cliente_representante_import_key"] for row in contract_candidates}

    students_by_key = {
        row["import_key"]: row
        for row in normalized_students
        if row["import_key"] in relevant_student_keys
    }
    clients_by_key = {
        row["import_key"]: row
        for row in normalized_clients
        if row["import_key"] in relevant_client_keys
    }
    teachers_by_key = {row["import_key"]: row for row in teacher_users}
    classes_by_key = {row["import_key"]: row for row in current_classes}

    statements = [
        "-- Carga do nucleo vigente 2026",
        "-- Premissa: executar em base limpa ou cuidadosamente revisada.",
        "-- Escopo: professoras, clientes, alunos, vinculos, turmas e contratos vigentes/registrados em 2026.",
        "-- Enderecos estruturados e aulas historicas ficam para etapas separadas.",
        "",
        "START TRANSACTION;",
        "SET @app_usuario_id = NULL;",
        "",
        "-- 1. Professoras / usuarios",
        "",
    ]

    for teacher in teacher_users:
        user_var = sql_var_name("usr", teacher["import_key"])
        statements.extend(
            [
                f"-- {teacher['nome']}",
                "INSERT INTO usuarios (senha, nome, email, cpf, rg, telefone, ativo, nascimento)",
                "SELECT "
                f"{sql_literal(teacher['senha_hash'])}, {sql_literal(teacher['nome'])}, {sql_literal(teacher['email'])}, "
                f"{sql_literal(valid_cpf_or_blank(teacher['cpf']))}, {sql_literal(valid_rg_or_blank(teacher['rg']))}, "
                f"{sql_literal(valid_phone_or_blank(teacher['telefone']))}, {teacher['ativo']}, {sql_literal(teacher['nascimento'])}",
                f"WHERE NOT EXISTS (SELECT 1 FROM usuarios WHERE email = {sql_literal(teacher['email'])});",
                f"SET {user_var} = (SELECT id FROM usuarios WHERE email = {sql_literal(teacher['email'])} LIMIT 1);",
                f"INSERT IGNORE INTO usuarios_permissoes (id_usuario, id_permissao) VALUES ({user_var}, 2);",
                "",
            ]
        )

    statements.extend(["-- 2. Clientes", ""])
    for client in sorted(clients_by_key.values(), key=lambda row: row["nome_normalizado"]):
        client_var = sql_var_name("cli", client["import_key"])
        lookup = lookup_clause_for_client(client)
        statements.extend(
            [
                f"-- {client['nome']}",
                "INSERT INTO clientes (nome, email, cpf, rg, telefone, ativo, nascimento)",
                "SELECT "
                f"{sql_literal(client['nome'])}, {sql_literal(normalize_text(client.get('email', '')).lower())}, "
                f"{sql_literal(valid_cpf_or_blank(client.get('cpf', '')))}, {sql_literal(valid_rg_or_blank(client.get('rg', '')))}, "
                f"{sql_literal(valid_phone_or_blank(client.get('telefone', '')))}, "
                f"{'TRUE' if int(client.get('contratos_ativos', 0) or 0) > 0 else 'FALSE'}, NULL",
                f"WHERE NOT EXISTS (SELECT 1 FROM clientes WHERE {lookup});",
                f"SET {client_var} = (SELECT id FROM clientes WHERE {lookup} LIMIT 1);",
                "",
            ]
        )

    statements.extend(["-- 3. Alunos", ""])
    for student in sorted(students_by_key.values(), key=lambda row: row["nome_normalizado"]):
        student_var = sql_var_name("alu", student["import_key"])
        lookup = lookup_clause_for_student(student)
        statements.extend(
            [
                f"-- {student['nome']}",
                "INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)",
                "SELECT "
                f"{sql_literal(student['nome'])}, NULL, NULL, {sql_literal(student.get('nascimento', ''))}, TRUE",
                f"WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE {lookup});",
                f"SET {student_var} = (SELECT id FROM alunos WHERE {lookup} LIMIT 1);",
                "",
            ]
        )

    statements.extend(["-- 4. Vinculos cliente/aluno", ""])
    for link in sorted(client_student_links, key=lambda row: (row["cliente_import_key"], row["aluno_import_key"])):
        client_var = sql_var_name("cli", link["cliente_import_key"])
        student_var = sql_var_name("alu", link["aluno_import_key"])
        statements.append(
            f"INSERT IGNORE INTO clientes_alunos (id_cliente, id_aluno) VALUES ({client_var}, {student_var});"
        )
    statements.append("")

    statements.extend(["-- 5. Turmas vigentes 2026", ""])
    for turma in sorted(current_classes, key=lambda row: row["import_key"]):
        turma_var = sql_var_name("tur", turma["import_key"])
        teacher_var = sql_var_name("usr", turma["professora_import_key"]) if turma["professora_import_key"] else "NULL"
        statements.extend(
            [
                f"-- {turma['nome']}",
                "INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)",
                "SELECT "
                f"{teacher_var}, NULL, {sql_literal(turma['nome'])}, {sql_literal(turma['descricao_recorrencia'])}, NULL, NULL",
                "WHERE NOT EXISTS (SELECT 1 FROM turmas "
                f"WHERE nome = {sql_literal(turma['nome'])} AND COALESCE(id_professor, 0) = COALESCE({teacher_var}, 0));",
                f"SET {turma_var} = (SELECT id FROM turmas WHERE nome = {sql_literal(turma['nome'])} "
                f"AND COALESCE(id_professor, 0) = COALESCE({teacher_var}, 0) LIMIT 1);",
                "",
            ]
        )

    statements.extend(["-- 6. Vinculos aluno/turma", ""])
    for turma in sorted(current_classes, key=lambda row: row["import_key"]):
        turma_var = sql_var_name("tur", turma["import_key"])
        student_var = sql_var_name("alu", turma["aluno_import_key"])
        statements.append(
            f"INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES ({student_var}, {turma_var});"
        )
    statements.append("")

    statements.extend(["-- 7. Contratos 2026", ""])
    for contract in sorted(contract_candidates, key=lambda row: row["import_key"]):
        client_var = sql_var_name("cli", contract["cliente_representante_import_key"])
        student_var = sql_var_name("alu", contract["aluno_import_key"])
        turma_var = sql_var_name("tur", contract["turma_import_key"])
        statements.extend(
            [
                f"-- {contract['aluno_nome']} / {contract['responsavel_nome']}",
                "INSERT INTO contratos ("
                "id_cliente_representante, id_cliente_responsavel, id_aluno, id_tipo_contrato, id_status, id_turma, "
                "valor, email_representante, cpf_representante, rg, telefone_representante, desconto_porcentagem, valor_final, "
                "parcelas, parcelas_descricao, numero_aulas, periodicidade, tempo_aula, tempo_contrato, inicio_contrato, vencimento_contrato, primeira_aula"
                ")",
                "SELECT "
                f"{client_var}, {client_var}, {student_var}, {infer_contract_type_id(contract['inicio_contrato'], contract['fim_contrato'])}, "
                f"{contract['status_id_sugerido']}, {turma_var}, {normalize_decimal_string(contract['valor'])}, NULL, NULL, NULL, NULL, 0.00, "
                f"{normalize_decimal_string(contract['valor'])}, NULL, NULL, {contract['numero_aulas'] or 'NULL'}, NULL, NULL, NULL, "
                f"{sql_literal(contract['inicio_contrato'])}, {sql_literal(contract['fim_contrato'])}, {sql_literal(contract['inicio_contrato'])}",
                f"WHERE NOT EXISTS (SELECT 1 FROM contratos WHERE id_turma = {turma_var});",
                "",
            ]
        )

    statements.extend(
        [
            "COMMIT;",
            "",
            "-- Fim da carga do nucleo vigente 2026",
        ]
    )
    return "\n".join(statements)


def split_contract_candidates_for_core_import(
    contract_candidates: list[dict[str, str]],
) -> tuple[list[dict[str, str]], list[dict[str, str]]]:
    eligible: list[dict[str, str]] = []
    skipped: list[dict[str, str]] = []
    for row in contract_candidates:
        if is_numeric_decimal(row.get("valor", "")):
            eligible.append(row)
            continue
        skipped.append(
            {
                **row,
                "motivo_exclusao": "Valor do contrato ausente ou invalido para carga SQL",
            }
        )
    return eligible, skipped


def split_historical_lessons_for_import(
    normalized_lessons: list[dict[str, str]],
) -> tuple[list[dict[str, str]], list[dict[str, str]]]:
    eligible: list[dict[str, str]] = []
    skipped: list[dict[str, str]] = []
    for row in normalized_lessons:
        data_aula = normalize_text(row.get("data_aula", ""))
        if re.fullmatch(r"\d{4}-\d{2}-\d{2}", data_aula):
            try:
                datetime.strptime(data_aula, "%Y-%m-%d")
                eligible.append(row)
                continue
            except ValueError:
                pass
        if not data_aula:
            motivo = "Aula historica sem data_aula valida"
        else:
            motivo = "Aula historica com data_aula fora do padrao ISO"
        skipped.append(
            {
                **row,
                "motivo_exclusao": motivo,
            }
        )
    return eligible, skipped


def extract_student_key_from_import_key(import_key: str) -> str:
    text = normalize_text(import_key)
    if text.startswith("name_birth::"):
        parts = text.split("::")
        if len(parts) >= 3:
            return parts[1]
    if text.startswith("name::"):
        parts = text.split("::")
        if len(parts) >= 2:
            return parts[1]
    return text


def infer_future_lessons_from_current_contracts(
    contract_candidates: list[dict[str, str]],
    normalized_lessons: list[dict[str, str]],
) -> tuple[list[dict[str, str]], list[dict[str, str]]]:
    lessons_by_pair: dict[tuple[str, str], list[datetime]] = defaultdict(list)
    for row in normalized_lessons:
        data_aula = normalize_text(row.get("data_aula", ""))
        teacher_key = normalize_text(row.get("professora_import_key", ""))
        student_key = extract_student_key_from_import_key(row.get("aluno_import_key", ""))
        if not data_aula or not teacher_key or not student_key:
            continue
        try:
            lesson_dt = datetime.strptime(data_aula, "%Y-%m-%d")
        except ValueError:
            continue
        lessons_by_pair[(teacher_key, student_key)].append(lesson_dt)

    generated: list[dict[str, str]] = []
    skipped: list[dict[str, str]] = []
    today_dt = datetime.strptime(TODAY_ISO, "%Y-%m-%d")

    for contract in contract_candidates:
        if contract.get("status_id_sugerido") != "1":
            continue

        teacher_key = normalize_text(contract.get("professora_import_key", ""))
        student_key = normalize_key(contract.get("aluno_nome", ""))
        numero_aulas = normalize_text(contract.get("numero_aulas", ""))
        fim_contrato = normalize_text(contract.get("fim_contrato", ""))
        inicio_contrato = normalize_text(contract.get("inicio_contrato", ""))

        if not teacher_key:
            skipped.append({**contract, "motivo_exclusao": "Contrato vigente sem professora vinculada"})
            continue
        if not is_numeric_decimal(numero_aulas):
            skipped.append({**contract, "motivo_exclusao": "Contrato vigente sem numero_aulas numerico"})
            continue
        if not inicio_contrato or not fim_contrato:
            skipped.append({**contract, "motivo_exclusao": "Contrato vigente sem datas completas"})
            continue

        try:
            start_dt = datetime.strptime(inicio_contrato, "%Y-%m-%d")
            end_dt = datetime.strptime(fim_contrato, "%Y-%m-%d")
        except ValueError:
            skipped.append({**contract, "motivo_exclusao": "Datas do contrato em formato invalido"})
            continue

        pair_dates = sorted(
            dt
            for dt in lessons_by_pair.get((teacher_key, student_key), [])
            if start_dt <= dt <= end_dt
        )
        if not pair_dates:
            skipped.append({**contract, "motivo_exclusao": "Sem aulas datadas para inferir padrao vigente"})
            continue

        total_aulas = int(float(numero_aulas))
        existing_count = len(pair_dates)
        remaining = total_aulas - existing_count
        if remaining <= 0:
            skipped.append({**contract, "motivo_exclusao": "Contrato sem saldo de aulas a gerar"})
            continue

        weekday_counter = Counter(dt.weekday() for dt in pair_dates)
        span_days = max(1, (pair_dates[-1] - pair_dates[0]).days + 1)
        span_weeks = max(1, round(span_days / 7))
        lessons_per_week = max(1, min(len(weekday_counter), round(existing_count / span_weeks)))
        preferred_weekdays = sorted(
            [weekday for weekday, _ in weekday_counter.most_common(lessons_per_week)]
        )

        generation_start = max(today_dt + timedelta(days=1), pair_dates[-1] + timedelta(days=1))
        existing_dates = {dt.date() for dt in pair_dates}
        generated_for_contract = 0
        current_dt = generation_start

        while current_dt <= end_dt and generated_for_contract < remaining:
            if current_dt.weekday() in preferred_weekdays and current_dt.date() not in existing_dates:
                generated.append(
                    {
                        "contract_import_key": contract["import_key"],
                        "turma_import_key": contract["turma_import_key"],
                        "professora_import_key": teacher_key,
                        "aluno_import_key": contract["aluno_import_key"],
                        "aluno_nome": contract["aluno_nome"],
                        "responsavel_nome": contract["responsavel_nome"],
                        "data_aula": current_dt.strftime("%Y-%m-%d"),
                        "id_status": "1",
                        "aulas_existentes_no_periodo": str(existing_count),
                        "aulas_previstas_contrato": str(total_aulas),
                        "aulas_geradas_neste_passo": "",
                        "dias_semana_inferidos": ",".join(str(day) for day in preferred_weekdays),
                    }
                )
                generated_for_contract += 1
            current_dt += timedelta(days=1)

        if generated_for_contract == 0:
            skipped.append({**contract, "motivo_exclusao": "Nao foi possivel encaixar novas datas ate o fim do contrato"})
            continue

        for row in generated[-generated_for_contract:]:
            row["aulas_geradas_neste_passo"] = str(generated_for_contract)

        if generated_for_contract < remaining:
            skipped.append(
                {
                    **contract,
                    "motivo_exclusao": f"Padrao inferido gerou apenas {generated_for_contract} de {remaining} aulas restantes",
                }
            )

    return generated, skipped


def build_current_2026_core_import_notes(
    normalized_clients: list[dict[str, str]],
    normalized_students: list[dict[str, str]],
    current_classes: list[dict[str, str]],
    contract_candidates: list[dict[str, str]],
    skipped_contract_candidates: list[dict[str, str]],
    incomplete_teacher_users: list[dict[str, str]],
) -> str:
    return f"""# Carga do núcleo vigente 2026

## Escopo

- Clientes normalizados: {len(normalized_clients)}
- Alunos normalizados totais: {len(normalized_students)}
- Turmas vigentes candidatas: {len(current_classes)}
- Contratos 2026 elegíveis para carga SQL: {len(contract_candidates)}
- Contratos pulados por valor inválido: {len(skipped_contract_candidates)}
- Usuárias professoras com cadastro incompleto mapeado: {len(incomplete_teacher_users)}

## O que este script importa

- Usuárias professoras
  Professoras sem aparição em registros de 2026 são marcadas como inativas (`ativo = FALSE`)
- Clientes
- Alunos
- Vínculos cliente/aluno
- Turmas vigentes 2026
- Vínculos aluno/turma
- Contratos vigentes/registrados em 2026

## O que fica de fora por enquanto

- Endereços estruturados de clientes e turmas
- Recorrência detalhada das turmas
- Aulas históricas
- Contratos com valor ausente/inválido; revisar arquivo `contratos_pulados_importacao.csv`
- Professoras com cadastro parcial; revisar arquivo `professoras_cadastro_incompleto.csv`

## Recomendação

- Executar primeiro em banco local limpo
- Validar contagens no final
- Só depois pensar na carga das aulas históricas
"""


def build_historical_lessons_import_sql(
    teacher_users: list[dict[str, str]],
    normalized_students: list[dict[str, str]],
    legacy_classes: list[dict[str, str]],
    normalized_lessons: list[dict[str, str]],
) -> str:
    relevant_student_keys = {row["aluno_import_key"] for row in legacy_classes} | {
        row["aluno_import_key"] for row in normalized_lessons
    }
    students_by_key = {
        row["import_key"]: row
        for row in normalized_students
        if row["import_key"] in relevant_student_keys
    }

    statements = [
        "-- Carga historica de aulas",
        "-- Premissa: executar apos a carga do nucleo vigente 2026.",
        "-- Escopo: alunos faltantes, turmas legado, vinculos aluno/turma e aulas historicas.",
        "-- Aulas sem data valida foram excluidas e reportadas separadamente.",
        "",
        "START TRANSACTION;",
        "SET @app_usuario_id = NULL;",
        "",
        "-- 1. Alunos complementares para o historico",
        "",
    ]

    for student in sorted(students_by_key.values(), key=lambda row: row["nome_normalizado"]):
        student_var = sql_var_name("alu", student["import_key"])
        lookup = lookup_clause_for_student(student)
        student_active = "TRUE" if "clientes_2026" in normalize_text(student.get("origens", "")) else "FALSE"
        statements.extend(
            [
                f"-- {student['nome']}",
                "INSERT INTO alunos (nome, livro, alfabetizacao, nascimento, ativo)",
                "SELECT "
                f"{sql_literal(student['nome'])}, NULL, NULL, {sql_literal(student.get('nascimento', ''))}, {student_active}",
                f"WHERE NOT EXISTS (SELECT 1 FROM alunos WHERE {lookup});",
                f"SET {student_var} = (SELECT id FROM alunos WHERE {lookup} LIMIT 1);",
                "",
            ]
        )

    statements.extend(["-- 2. Turmas legado", ""])
    for turma in sorted(legacy_classes, key=lambda row: row["import_key"]):
        turma_var = sql_var_name("tur", turma["import_key"])
        teacher_var = sql_var_name("usr", turma["professora_import_key"]) if turma["professora_import_key"] else "NULL"
        statements.extend(
            [
                f"-- {turma['nome']}",
                "INSERT INTO turmas (id_professor, id_endereco, nome, descricao_recorrencia, recorrencia_json, deleted_at)",
                "SELECT "
                f"{teacher_var}, NULL, {sql_literal(turma['nome'])}, {sql_literal(turma['descricao_recorrencia'])}, NULL, NULL",
                "WHERE NOT EXISTS (SELECT 1 FROM turmas "
                f"WHERE nome = {sql_literal(turma['nome'])} AND COALESCE(id_professor, 0) = COALESCE({teacher_var}, 0));",
                f"SET {turma_var} = (SELECT id FROM turmas WHERE nome = {sql_literal(turma['nome'])} "
                f"AND COALESCE(id_professor, 0) = COALESCE({teacher_var}, 0) LIMIT 1);",
                "",
            ]
        )

    statements.extend(["-- 3. Vinculos aluno/turma legado", ""])
    for turma in sorted(legacy_classes, key=lambda row: row["import_key"]):
        turma_var = sql_var_name("tur", turma["import_key"])
        student_var = sql_var_name("alu", turma["aluno_import_key"])
        statements.append(
            f"INSERT IGNORE INTO alunos_turmas (id_aluno, id_turma) VALUES ({student_var}, {turma_var});"
        )
    statements.append("")

    statements.extend(["-- 4. Aulas historicas", ""])
    for lesson in sorted(
        normalized_lessons,
        key=lambda row: (row["data_aula"], row["turma_import_key"], row["import_key"]),
    ):
        turma_var = sql_var_name("tur", lesson["turma_import_key"])
        teacher_var = sql_var_name("usr", lesson["professora_import_key"]) if lesson["professora_import_key"] else "NULL"
        data_aula = f"{lesson['data_aula']} 00:00:00"
        assunto = normalize_text(lesson.get("assunto", ""))
        saldo = normalize_text(lesson.get("saldo", ""))
        observacoes = normalize_text(lesson.get("observacoes", ""))
        dedupe_where = (
            f"id_turma = {turma_var} "
            f"AND data_aula = {sql_literal(data_aula)} "
            f"AND COALESCE(assunto, '') = COALESCE({sql_literal(assunto)}, '') "
            f"AND COALESCE(saldo, '') = COALESCE({sql_literal(saldo)}, '') "
            f"AND COALESCE(observacoes, '') = COALESCE({sql_literal(observacoes)}, '')"
        )
        statements.extend(
            [
                f"-- {lesson['import_key']}",
                "INSERT INTO aulas ("
                "id_status, id_professor, id_turma, assunto, vocabulario, saldo, observacoes, data_aula, data_aula_original, data_aula_solicitada"
                ")",
                "SELECT "
                f"{lesson['status_id_sugerido']}, {teacher_var}, {turma_var}, {sql_literal(assunto)}, NULL, "
                f"{sql_literal(saldo)}, {sql_literal(observacoes)}, {sql_literal(data_aula)}, NULL, NULL",
                f"WHERE NOT EXISTS (SELECT 1 FROM aulas WHERE {dedupe_where});",
                "",
            ]
        )

    statements.extend(
        [
            "COMMIT;",
            "",
            "-- Fim da carga historica de aulas",
        ]
    )
    return "\n".join(statements)


def build_historical_lessons_import_notes(
    legacy_classes: list[dict[str, str]],
    eligible_lessons: list[dict[str, str]],
    skipped_lessons: list[dict[str, str]],
) -> str:
    return f"""# Carga histórica de aulas

## Escopo

- Turmas legado candidatas: {len(legacy_classes)}
- Aulas históricas elegíveis para carga SQL: {len(eligible_lessons)}
- Aulas históricas puladas por ausência de data: {len(skipped_lessons)}

## O que este script importa

- Alunos complementares para cobrir o histórico
  Alunos criados apenas por histórico entram como inativos (`ativo = FALSE`)
- Turmas legado sintetizadas por professora + aluno
- Vínculos aluno/turma do legado
- Aulas históricas com deduplicação para reruns

## O que fica de fora por enquanto

- Aulas sem `data_aula` válida; revisar `aulas_historicas_puladas.csv`
- Reconstrução perfeita de aulas em grupo antigas

## Recomendação

- Executar somente após a carga do núcleo vigente
- Validar contagens por ano e por professora após a importação
"""


def build_future_current_lessons_import_sql(
    generated_future_lessons: list[dict[str, str]],
    current_classes: list[dict[str, str]],
) -> str:
    classes_by_key = {row["import_key"]: row for row in current_classes}
    used_turma_keys = []
    seen_turma_keys: set[str] = set()
    for row in generated_future_lessons:
        turma_key = row["turma_import_key"]
        if turma_key in seen_turma_keys:
            continue
        if turma_key in classes_by_key:
            used_turma_keys.append(turma_key)
            seen_turma_keys.add(turma_key)

    statements = [
        "-- Carga de aulas futuras dos contratos vigentes",
        "-- Premissa: executar apos o nucleo vigente e, preferencialmente, apos a carga historica.",
        "-- As datas foram inferidas a partir do padrao ja observado em aulas do contrato vigente.",
        "-- O proprio script resolve as turmas vigentes antes de inserir as aulas.",
        "",
        "START TRANSACTION;",
        "SET @app_usuario_id = NULL;",
        "",
        "-- 1. Resolver turmas vigentes referenciadas",
        "",
    ]

    for turma_key in used_turma_keys:
        turma = classes_by_key[turma_key]
        turma_var = sql_var_name("tur", turma_key)
        statements.extend(
            [
                f"-- {turma['nome']}",
                f"SET {turma_var} = (SELECT id FROM turmas WHERE nome = {sql_literal(turma['nome'])} LIMIT 1);",
                "",
            ]
        )

    statements.extend(["-- 2. Aulas futuras geradas automaticamente", ""])

    for row in generated_future_lessons:
        turma_var = sql_var_name("tur", row["turma_import_key"])
        data_aula = f"{row['data_aula']} 00:00:00"
        observacoes = (
            "Gerada automaticamente a partir do padrao inferido nas aulas do contrato vigente."
        )
        statements.extend(
            [
                f"-- {row['aluno_nome']} / {row['data_aula']}",
                "INSERT INTO aulas ("
                "id_status, id_professor, id_turma, assunto, vocabulario, saldo, observacoes, data_aula, data_aula_original, data_aula_solicitada"
                ")",
                "SELECT "
                f"1, (SELECT id_professor FROM turmas WHERE id = {turma_var}), {turma_var}, NULL, NULL, NULL, {sql_literal(observacoes)}, {sql_literal(data_aula)}, NULL, NULL",
                f"WHERE {turma_var} IS NOT NULL "
                f"AND NOT EXISTS (SELECT 1 FROM aulas WHERE id_turma = {turma_var} AND data_aula = {sql_literal(data_aula)});",
                "",
            ]
        )

    statements.extend(
        [
            "COMMIT;",
            "",
            "-- Fim da carga de aulas futuras dos contratos vigentes",
        ]
    )
    return "\n".join(statements)


def build_future_current_lessons_import_notes(
    generated_future_lessons: list[dict[str, str]],
    skipped_contracts: list[dict[str, str]],
) -> str:
    contract_keys = {row["contract_import_key"] for row in generated_future_lessons}
    return f"""# Carga de aulas futuras dos vigentes

## Escopo

- Contratos vigentes com aulas futuras geradas: {len(contract_keys)}
- Aulas futuras geradas: {len(generated_future_lessons)}
- Contratos vigentes pulados ou parcialmente atendidos: {len(skipped_contracts)}

## Como a inferência foi feita

- Usa as aulas já observadas para a dupla professora + aluno
- Estima os dias da semana mais frequentes dentro do período do contrato
- Gera novas aulas pendentes até o fim do contrato, sem duplicar datas já existentes

## O que revisar

- `aulas_futuras_vigentes_geradas.csv`
- `aulas_futuras_vigentes_puladas.csv`

## Recomendação

- Rodar depois da carga histórica, para aproveitar o máximo de padrão observado
- Validar visualmente alguns contratos antes de usar em produção
"""


def build_ambiguities(label: str, values: list[str]) -> dict[str, Any]:
    normalized_map: dict[str, set[str]] = defaultdict(set)
    cleaned = [normalize_text(value) for value in values if normalize_text(value)]
    for value in cleaned:
        normalized_map[normalize_key(value)].add(value)

    exact_variants = [
        {
            "normalized_key": key,
            "variants": sorted(raw_values),
            "count_variants": len(raw_values),
        }
        for key, raw_values in normalized_map.items()
        if key and len(raw_values) > 1
    ]

    fuzzy_candidates = []
    keys = sorted(key for key in normalized_map.keys() if key)
    for idx, key_a in enumerate(keys):
        for key_b in keys[idx + 1 :]:
            if abs(len(key_a) - len(key_b)) > 4:
                continue
            ratio = SequenceMatcher(None, key_a, key_b).ratio()
            if ratio >= 0.90:
                fuzzy_candidates.append(
                    {
                        "similarity": round(ratio, 4),
                        "key_a": key_a,
                        "variants_a": sorted(normalized_map[key_a]),
                        "key_b": key_b,
                        "variants_b": sorted(normalized_map[key_b]),
                    }
                )

    return {
        "entity": label,
        "total_values": len(cleaned),
        "exact_variants": sorted(exact_variants, key=lambda item: (-item["count_variants"], item["normalized_key"])),
        "fuzzy_candidates": sorted(fuzzy_candidates, key=lambda item: (-item["similarity"], item["key_a"], item["key_b"])),
    }


def write_csv(path: Path, rows: list[dict[str, Any]]) -> None:
    if not rows:
        path.write_text("", encoding="utf-8")
        return
    fieldnames = list(rows[0].keys())
    with path.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)


def extract_clients_2026(rows: list[dict[str, str]]) -> list[dict[str, str]]:
    result = []
    for row in filter_real_rows(rows, ["student_name", "responsible_name"]):
        result.append(
            {
                "contrato_ativo": clean_active_flag(row.get("contract_active", "")),
                "aluno_nome": row.get("student_name", ""),
                "aluno_nome_normalizado": normalize_key(row.get("student_name", "")),
                "responsavel_nome": row.get("responsible_name", ""),
                "responsavel_nome_normalizado": normalize_key(row.get("responsible_name", "")),
                "familia_nome": row.get("family_name", ""),
                "telefone": clean_phone(row.get("phone", "")),
                "nascimento_aluno": excel_serial_to_iso(row.get("birth_date", "")),
                "endereco": row.get("address", ""),
                "cep": clean_document(row.get("cep", "")),
                "cpf": clean_document(row.get("cpf", "")),
                "rg": clean_document(row.get("rg", "")),
                "email": row.get("email", ""),
            }
        )
    return result


def extract_contracts_2026(rows: list[dict[str, str]]) -> list[dict[str, str]]:
    result = []
    for row in filter_real_rows(rows, ["student_name", "responsible_name", "contract_start"]):
        result.append(
            {
                "aluno_nome": row.get("student_name", ""),
                "aluno_nome_normalizado": normalize_key(row.get("student_name", "")),
                "responsavel_nome": row.get("responsible_name", ""),
                "responsavel_nome_normalizado": normalize_key(row.get("responsible_name", "")),
                "inicio_contrato": excel_serial_to_iso(row.get("contract_start", "")),
                "fim_contrato": excel_serial_to_iso(row.get("contract_end", "")),
                "numero_aulas": row.get("lesson_count", ""),
                "valor_contrato": row.get("contract_value", ""),
                "dias_faltantes": row.get("remaining_days", ""),
            }
        )
    return result


def extract_lessons(year: int, rows: list[dict[str, str]]) -> list[dict[str, str]]:
    result = []
    for row in filter_real_rows(rows, ["teacher_name", "student_name", "lesson_date"]):
        result.append(
            {
                "ano_origem": str(year),
                "mes_referencia": row.get("month_label", ""),
                "carimbo": excel_serial_to_iso(row.get("submitted_at", ""), include_time=True),
                "professora_nome": row.get("teacher_name", ""),
                "professora_nome_normalizado": normalize_key(row.get("teacher_name", "")),
                "status_aula": row.get("lesson_status", ""),
                "aluno_nome": row.get("student_name", ""),
                "aluno_nome_normalizado": normalize_key(row.get("student_name", "")),
                "horas_aula": row.get("lesson_hours", ""),
                "data_aula": excel_serial_to_iso(row.get("lesson_date", "")),
                "comentarios": row.get("comments", ""),
                "desempenho": row.get("performance", ""),
            }
        )
    return result


def build_summary(
    lessons: list[dict[str, str]],
    current_clients: list[dict[str, str]],
    current_contracts: list[dict[str, str]],
    teachers: list[dict[str, str]],
) -> dict[str, Any]:
    lessons_by_year = Counter(item["ano_origem"] for item in lessons)
    statuses = Counter(normalize_text(item["status_aula"]) for item in lessons if normalize_text(item["status_aula"]))
    current_active_clients = sum(1 for item in current_clients if item["contrato_ativo"] == "Ativo")
    unique_students = {item["aluno_nome_normalizado"] for item in lessons if item["aluno_nome_normalizado"]}
    unique_teachers = {item["professora_nome_normalizado"] for item in lessons if item["professora_nome_normalizado"]}
    active_teachers_2026 = sum(1 for item in teachers if item.get("ativo_2026") == "TRUE")

    return {
        "arquivos_processados": [source.filename for source in WORKBOOKS],
        "totais": {
            "clientes_atuais_2026": len(current_clients),
            "clientes_ativos_2026": current_active_clients,
            "contratos_atuais_2026": len(current_contracts),
            "aulas_historicas": len(lessons),
            "alunos_historicos_unicos": len(unique_students),
            "professoras_historicas_unicas": len(unique_teachers),
            "cadastros_professoras": len(teachers),
            "professoras_ativas_2026": active_teachers_2026,
            "professoras_inativas_2026": len(teachers) - active_teachers_2026,
        },
        "aulas_por_ano": dict(sorted(lessons_by_year.items())),
        "status_aulas_top": dict(statuses.most_common(20)),
    }


def load_sheet_dicts(reader: XlsxReader, sheet_name: str, aliases: dict[str, list[str]]) -> list[dict[str, str]]:
    rows = reader.read_sheet(sheet_name)
    return rows_to_dicts(rows, aliases)


def load_contract_overrides(script_dir: Path) -> dict[tuple[str, str, str, str], str]:
    path = script_dir / "overrides_contratos_2026.json"
    if not path.exists():
        return {}
    payload = json.loads(path.read_text(encoding="utf-8"))
    overrides = {}
    for item in payload:
        key = (
            normalize_key(item.get("aluno_nome", "")),
            normalize_key(item.get("responsavel_nome", "")),
            normalize_text(item.get("inicio_contrato", "")),
            normalize_text(item.get("fim_contrato", "")),
        )
        value = normalize_decimal_string(item.get("valor", ""))
        if all(key) and value:
            overrides[key] = value
    return overrides


def main() -> None:
    parser = argparse.ArgumentParser(description="Extrai e consolida dados historicos das planilhas Tree House.")
    parser.add_argument("--input-dir", default=".", help="Diretorio onde estao os arquivos .xlsx")
    parser.add_argument("--output-dir", default="saida", help="Diretorio de saida")
    args = parser.parse_args()

    input_dir = Path(args.input_dir).resolve()
    output_dir = Path(args.output_dir).resolve()
    script_dir = Path(__file__).resolve().parent
    output_dir.mkdir(parents=True, exist_ok=True)
    contract_value_overrides = load_contract_overrides(script_dir)

    current_clients: list[dict[str, str]] = []
    current_contracts: list[dict[str, str]] = []
    lessons: list[dict[str, str]] = []
    teacher_info_rows: list[dict[str, str]] = []

    for source in WORKBOOKS:
        path = pick_workbook(input_dir, source.filename)
        reader = XlsxReader(path)
        if source.clients_sheet:
            try:
                rows = load_sheet_dicts(reader, source.clients_sheet, CLIENT_HEADER_ALIASES)
                if source.year == 2026:
                    current_clients = extract_clients_2026(rows)
            except Exception as exc:
                print(f"[warn] Falha ao ler clientes em {source.filename}: {exc}")

        if source.contracts_sheet:
            try:
                rows = load_sheet_dicts(reader, source.contracts_sheet, CONTRACT_HEADER_ALIASES)
                if source.year == 2026:
                    current_contracts = extract_contracts_2026(rows)
            except Exception as exc:
                print(f"[warn] Falha ao ler contratos em {source.filename}: {exc}")

        if source.records_sheet and source.year:
            try:
                rows = load_sheet_dicts(reader, source.records_sheet, RECORD_HEADER_ALIASES)
                lessons.extend(extract_lessons(source.year, rows))
            except Exception as exc:
                print(f"[warn] Falha ao ler registros em {source.filename}: {exc}")

        if source.teachers_sheet:
            try:
                teacher_info_rows = load_sheet_dicts(reader, source.teachers_sheet, TEACHER_HEADER_ALIASES)
            except Exception as exc:
                print(f"[warn] Falha ao ler professoras em {source.filename}: {exc}")

    teachers = build_teacher_registry(teacher_info_rows, lessons)
    teacher_lookup = {row["nome_normalizado"]: row for row in teachers}
    teacher_users = build_teacher_user_rows(teachers)
    normalized_clients = build_normalized_clients(current_clients)
    normalized_students = build_normalized_students(current_clients, lessons)
    client_student_links = build_client_student_links(current_clients)
    teacher_by_student_2026 = infer_primary_teacher_by_student(lessons, year="2026")
    contract_candidates = build_contract_candidates(current_contracts, current_clients, teacher_by_student_2026, contract_value_overrides)
    eligible_contract_candidates, skipped_contract_candidates = split_contract_candidates_for_core_import(contract_candidates)
    current_classes = build_current_classes(eligible_contract_candidates, teacher_lookup)
    legacy_classes = build_legacy_classes(lessons, teacher_lookup)
    normalized_lessons = build_normalized_lessons(lessons)
    eligible_historical_lessons, skipped_historical_lessons = split_historical_lessons_for_import(normalized_lessons)
    generated_future_current_lessons, skipped_future_current_contracts = infer_future_lessons_from_current_contracts(
        eligible_contract_candidates,
        eligible_historical_lessons,
    )
    incomplete_teacher_users = [row for row in teacher_users if row.get("cadastro_incompleto") == "TRUE"]
    quality_report = build_quality_report(teacher_users, normalized_clients, contract_candidates)
    current_review_report = build_current_import_review_report(teacher_users, normalized_clients, contract_candidates, normalized_lessons)
    current_core_sql = build_current_2026_core_import_sql(
        teacher_users,
        normalized_clients,
        normalized_students,
        client_student_links,
        current_classes,
        eligible_contract_candidates,
    )
    current_core_notes = build_current_2026_core_import_notes(
        normalized_clients,
        normalized_students,
        current_classes,
        eligible_contract_candidates,
        skipped_contract_candidates,
        incomplete_teacher_users,
    )
    historical_lessons_sql = build_historical_lessons_import_sql(
        teacher_users,
        normalized_students,
        legacy_classes,
        eligible_historical_lessons,
    )
    historical_lessons_notes = build_historical_lessons_import_notes(
        legacy_classes,
        eligible_historical_lessons,
        skipped_historical_lessons,
    )
    future_current_lessons_sql = build_future_current_lessons_import_sql(
        generated_future_current_lessons,
        current_classes,
    )
    future_current_lessons_notes = build_future_current_lessons_import_notes(
        generated_future_current_lessons,
        skipped_future_current_contracts,
    )

    ambiguities = {
        "alunos": build_ambiguities("alunos", [row["aluno_nome"] for row in lessons] + [row["aluno_nome"] for row in current_clients]),
        "responsaveis": build_ambiguities("responsaveis", [row["responsavel_nome"] for row in current_clients] + [row["responsavel_nome"] for row in current_contracts]),
        "professoras": build_ambiguities("professoras", [row["nome"] for row in teachers] + [row["professora_nome"] for row in lessons]),
    }
    summary = build_summary(lessons, current_clients, current_contracts, teachers)

    write_csv(output_dir / "clientes_atuais_2026.csv", current_clients)
    write_csv(output_dir / "contratos_atuais_2026.csv", current_contracts)
    write_csv(output_dir / "aulas_historicas.csv", lessons)
    write_csv(output_dir / "professoras_cadastro.csv", teachers)
    write_csv(output_dir / "professoras_usuarios.csv", teacher_users)
    write_csv(output_dir / "professoras_cadastro_incompleto.csv", incomplete_teacher_users)
    write_csv(output_dir / "clientes_normalizados_2026.csv", normalized_clients)
    write_csv(output_dir / "alunos_normalizados.csv", normalized_students)
    write_csv(output_dir / "vinculos_cliente_aluno_2026.csv", client_student_links)
    write_csv(output_dir / "contratos_2026_candidatos.csv", contract_candidates)
    write_csv(output_dir / "contratos_pulados_importacao.csv", skipped_contract_candidates)
    write_csv(output_dir / "turmas_atuais_2026_candidatas.csv", current_classes)
    write_csv(output_dir / "turmas_legado_candidatas.csv", legacy_classes)
    write_csv(output_dir / "aulas_historicas_normalizadas.csv", normalized_lessons)
    write_csv(output_dir / "aulas_historicas_puladas.csv", skipped_historical_lessons)
    write_csv(output_dir / "aulas_futuras_vigentes_geradas.csv", generated_future_current_lessons)
    write_csv(output_dir / "aulas_futuras_vigentes_puladas.csv", skipped_future_current_contracts)
    write_json(output_dir / "diagnostico_resumo.json", summary)
    write_json(output_dir / "ambiguidades.json", ambiguities)
    write_json(output_dir / "qualidade_dados.json", quality_report)
    write_json(output_dir / "pendencias_importacao_vigente_2026.json", current_review_report)
    (output_dir / "professoras_usuarios_seed.sql").write_text(build_teacher_seed_sql(teacher_users), encoding="utf-8")
    (output_dir / "staging_schema.sql").write_text(build_staging_schema_sql(), encoding="utf-8")
    (output_dir / "plano_importacao.md").write_text(build_import_plan_markdown(summary), encoding="utf-8")
    (output_dir / "pendencias_importacao_vigente_2026.md").write_text(
        build_current_import_review_markdown(current_review_report),
        encoding="utf-8",
    )
    (output_dir / "carga_nucleo_vigente_2026.sql").write_text(current_core_sql, encoding="utf-8")
    (output_dir / "carga_nucleo_vigente_2026.md").write_text(current_core_notes, encoding="utf-8")
    (output_dir / "carga_historico_aulas.sql").write_text(historical_lessons_sql, encoding="utf-8")
    (output_dir / "carga_historico_aulas.md").write_text(historical_lessons_notes, encoding="utf-8")
    (output_dir / "carga_aulas_futuras_vigentes.sql").write_text(future_current_lessons_sql, encoding="utf-8")
    (output_dir / "carga_aulas_futuras_vigentes.md").write_text(future_current_lessons_notes, encoding="utf-8")

    print(f"Arquivos gerados em: {output_dir}")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
