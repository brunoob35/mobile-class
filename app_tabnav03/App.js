import { StatusBar } from "expo-status-bar";
import React, { useState } from "react";
import {
  Pressable,
  SafeAreaView,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";

const treinoSemanal = [
  {
    id: "A",
    titulo: "Treino A",
    foco: "Peito, ombro e triceps",
    cor: "#d4572c",
    descricao: "Inicio de semana com empurradas e estabilidade de ombros.",
    exercicios: [
      "Supino reto com barra - 4x10",
      "Supino inclinado com halteres - 3x12",
      "Desenvolvimento militar - 4x10",
      "Elevacao lateral - 3x15",
      "Triceps pulley - 3x12",
      "Mergulho no banco - 3x15",
    ],
    dica: "Descanse 60 a 90 segundos entre series e mantenha o abdomen firme.",
  },
  {
    id: "B",
    titulo: "Treino B",
    foco: "Costas e biceps",
    cor: "#226f54",
    descricao: "Dia de puxadas para reforcar postura, dorsais e bracos.",
    exercicios: [
      "Puxada frontal - 4x10",
      "Remada curvada - 4x10",
      "Remada baixa - 3x12",
      "Pulldown com bracos retos - 3x15",
      "Rosca direta - 3x12",
      "Rosca martelo - 3x12",
    ],
    dica: "Concentre o movimento nas costas antes de pensar em dobrar os bracos.",
  },
  {
    id: "C",
    titulo: "Treino C",
    foco: "Pernas completas",
    cor: "#3c6e71",
    descricao: "Treino mais intenso da semana com foco em quadriceps e gluteos.",
    exercicios: [
      "Agachamento livre - 4x10",
      "Leg press - 4x12",
      "Cadeira extensora - 3x15",
      "Mesa flexora - 3x15",
      "Stiff - 3x12",
      "Panturrilha em pe - 4x20",
    ],
    dica: "Capriche na amplitude e reduza a carga se perder a tecnica.",
  },
  {
    id: "D",
    titulo: "Treino D",
    foco: "Core e condicionamento",
    cor: "#7b2cbf",
    descricao: "Fechamento da fracao com abdomen, lombar e circuito metabolico.",
    exercicios: [
      "Prancha frontal - 4x40s",
      "Abdominal infra - 3x15",
      "Abdominal bicicleta - 3x20",
      "Extensao lombar - 3x15",
      "Burpee - 3x12",
      "Bike ou esteira - 15 minutos moderado",
    ],
    dica: "Controle a respiracao para manter ritmo e qualidade no circuito.",
  },
  {
    id: "R",
    titulo: "Descanso",
    foco: "Recuperacao ativa",
    cor: "#4f5d75",
    descricao: "O corpo cresce no descanso. Use o dia para recuperar e preparar a proxima rodada.",
    exercicios: [
      "Caminhada leve - 20 a 30 minutos",
      "Alongamento de quadril e ombros - 10 minutos",
      "Mobilidade de coluna toracica - 3 series",
      "Hidratacao reforcada ao longo do dia",
      "Sono de 7 a 9 horas",
      "Revisar cargas e anotar evolucao da semana",
    ],
    dica: "Descanso nao e falta de treino, e parte da estrategia para evoluir.",
  },
];

function Aba({ item, ativa, onPress }) {
  return (
    <Pressable
      onPress={onPress}
      style={[
        styles.aba,
        { borderColor: item.cor },
        ativa && { backgroundColor: item.cor },
      ]}
    >
      <Text style={[styles.abaTitulo, ativa && styles.abaTituloAtiva]}>
        {item.id}
      </Text>
      <Text style={[styles.abaSubtitulo, ativa && styles.abaSubtituloAtiva]}>
        {item.titulo}
      </Text>
    </Pressable>
  );
}

export default function App() {
  const [abaAtiva, setAbaAtiva] = useState("A");

  const treinoAtual =
    treinoSemanal.find((treino) => treino.id === abaAtiva) || treinoSemanal[0];

  return (
    <SafeAreaView style={styles.container}>
      <StatusBar style="light" />

      <View style={styles.topo}>
        <Text style={styles.kicker}>Academia</Text>
        <Text style={styles.titulo}>Fracao de treino 4x por semana</Text>
        <Text style={styles.subtitulo}>
          Abas para navegar entre A, B, C, D e o dia de descanso.
        </Text>
      </View>

      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={styles.abasContainer}
      >
        {treinoSemanal.map((item) => (
          <Aba
            key={item.id}
            item={item}
            ativa={item.id === treinoAtual.id}
            onPress={() => setAbaAtiva(item.id)}
          />
        ))}
      </ScrollView>

      <ScrollView
        style={styles.conteudo}
        showsVerticalScrollIndicator={false}
        contentContainerStyle={styles.conteudoInterno}
      >
        <View style={[styles.cardHero, { backgroundColor: treinoAtual.cor }]}>
          <Text style={styles.cardHeroTitulo}>{treinoAtual.titulo}</Text>
          <Text style={styles.cardHeroFoco}>{treinoAtual.foco}</Text>
          <Text style={styles.cardHeroDescricao}>{treinoAtual.descricao}</Text>
        </View>

        <View style={styles.card}>
          <Text style={styles.cardTitulo}>Sequencia do dia</Text>
          {treinoAtual.exercicios.map((exercicio) => (
            <View key={exercicio} style={styles.exercicioLinha}>
              <View
                style={[
                  styles.marcador,
                  { backgroundColor: treinoAtual.cor },
                ]}
              />
              <Text style={styles.exercicioTexto}>{exercicio}</Text>
            </View>
          ))}
        </View>

        <View style={styles.card}>
          <Text style={styles.cardTitulo}>Observacao</Text>
          <Text style={styles.observacaoTexto}>{treinoAtual.dica}</Text>
        </View>

        <View style={styles.rodapeInfo}>
          <Text style={styles.rodapeTexto}>
            Sugestao de ordem semanal: A, B, descanso, C, D, descanso.
          </Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#111827",
  },
  topo: {
    paddingTop: 18,
    paddingHorizontal: 20,
    paddingBottom: 10,
  },
  kicker: {
    color: "#f4a261",
    fontSize: 13,
    fontWeight: "700",
    textTransform: "uppercase",
    letterSpacing: 1,
  },
  titulo: {
    color: "#f8fafc",
    fontSize: 28,
    fontWeight: "800",
    marginTop: 6,
  },
  subtitulo: {
    color: "#cbd5e1",
    fontSize: 15,
    lineHeight: 22,
    marginTop: 8,
  },
  abasContainer: {
    paddingHorizontal: 16,
    paddingVertical: 8,
    gap: 10,
  },
  aba: {
    minWidth: 88,
    borderWidth: 1,
    borderRadius: 18,
    paddingVertical: 12,
    paddingHorizontal: 14,
    backgroundColor: "#1f2937",
  },
  abaTitulo: {
    color: "#f8fafc",
    fontSize: 18,
    fontWeight: "800",
  },
  abaSubtitulo: {
    color: "#94a3b8",
    fontSize: 12,
    marginTop: 2,
    fontWeight: "600",
  },
  abaTituloAtiva: {
    color: "#ffffff",
  },
  abaSubtituloAtiva: {
    color: "#f8fafc",
  },
  conteudo: {
    flex: 1,
  },
  conteudoInterno: {
    padding: 20,
    gap: 16,
    paddingBottom: 32,
  },
  cardHero: {
    borderRadius: 28,
    padding: 22,
    shadowColor: "#000000",
    shadowOpacity: 0.22,
    shadowRadius: 14,
    shadowOffset: { width: 0, height: 8 },
    elevation: 6,
  },
  cardHeroTitulo: {
    color: "#ffffff",
    fontSize: 28,
    fontWeight: "800",
  },
  cardHeroFoco: {
    color: "#f8fafc",
    fontSize: 16,
    fontWeight: "700",
    marginTop: 4,
  },
  cardHeroDescricao: {
    color: "#e2e8f0",
    fontSize: 15,
    lineHeight: 22,
    marginTop: 12,
  },
  card: {
    backgroundColor: "#f8fafc",
    borderRadius: 24,
    padding: 20,
  },
  cardTitulo: {
    color: "#0f172a",
    fontSize: 20,
    fontWeight: "800",
    marginBottom: 14,
  },
  exercicioLinha: {
    flexDirection: "row",
    alignItems: "flex-start",
    marginBottom: 12,
  },
  marcador: {
    width: 10,
    height: 10,
    borderRadius: 999,
    marginTop: 6,
    marginRight: 12,
  },
  exercicioTexto: {
    flex: 1,
    color: "#334155",
    fontSize: 15,
    lineHeight: 22,
    fontWeight: "600",
  },
  observacaoTexto: {
    color: "#475569",
    fontSize: 15,
    lineHeight: 24,
    fontWeight: "600",
  },
  rodapeInfo: {
    paddingHorizontal: 6,
  },
  rodapeTexto: {
    color: "#cbd5e1",
    fontSize: 14,
    lineHeight: 22,
    textAlign: "center",
  },
});
