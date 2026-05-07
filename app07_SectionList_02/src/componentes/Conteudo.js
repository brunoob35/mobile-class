import React, { useState } from 'react';
import {
  Alert,
  Platform,
  SectionList,
  Text,
  TextInput,
  TouchableOpacity,
  View,
} from 'react-native';

import { estilos } from '../styleSheet/estilos';

function Conteudo() {
  const [tarefa, setTarefa] = useState('');
  const [data, setData] = useState('');
  const [tarefas, setTarefas] = useState([
    { id: '1', tarefa: 'tarefa1', data: '10/05/2026' },
    { id: '2', tarefa: 'tarefa2', data: '10/05/2026' },
    { id: '3', tarefa: 'tarefa3', data: '11/05/2026' },
  ]);

  function converterData(valor) {
    const partes = valor.split('/');

    if (partes.length !== 3) {
      return null;
    }

    const [dia, mes, ano] = partes;
    return Number(`${ano}${mes}${dia}`);
  }

  const agrupadas = tarefas.reduce((acc, item) => {
    if (!acc[item.data]) {
      acc[item.data] = [];
    }

    acc[item.data].push(item);
    return acc;
  }, {});

  const secoes = Object.keys(agrupadas)
    .sort((a, b) => converterData(a) - converterData(b))
    .map((itemData) => ({
      title: itemData,
      data: agrupadas[itemData],
    }));

  function adicionarTarefa() {
    if (!tarefa.trim() || !data.trim()) {
      return;
    }

    const novaTarefa = {
      id: String(Date.now()),
      tarefa: tarefa.trim(),
      data: data.trim(),
    };

    setTarefas((estadoAtual) => [...estadoAtual, novaTarefa]);
    setTarefa('');
    setData('');
  }

  function removerTarefa(id) {
    setTarefas((estadoAtual) => estadoAtual.filter((item) => item.id !== id));
  }

  function confirmarExclusao(item) {
    if (Platform.OS === 'web') {
      const resposta = globalThis.confirm(`Excluir a tarefa "${item.tarefa}"?`);

      if (resposta) {
        removerTarefa(item.id);
      }

      return;
    }

    Alert.alert('Excluir tarefa', `Deseja excluir "${item.tarefa}"?`, [
      { text: 'Nao', style: 'cancel' },
      { text: 'Sim', onPress: () => removerTarefa(item.id) },
    ]);
  }

  function renderizarItem({ item }) {
    return (
      <TouchableOpacity
        style={estilos.item}
        activeOpacity={0.7}
        onPress={() => confirmarExclusao(item)}>
        <Text style={estilos.itemTexto}>{item.tarefa}</Text>
      </TouchableOpacity>
    );
  }

  function renderizarSecao({ section }) {
    return (
      <View style={estilos.secao}>
        <Text style={estilos.secaoTexto}>{section.title}</Text>
      </View>
    );
  }

  return (
    <>
      <TextInput
        style={estilos.entrada}
        placeholder="Digite a tarefa"
        value={tarefa}
        onChangeText={setTarefa}
      />
      <TextInput
        style={estilos.entrada}
        placeholder="Data (ex: 10/05/2026)"
        value={data}
        onChangeText={setData}
      />
      <TouchableOpacity style={estilos.botao} onPress={adicionarTarefa}>
        <Text style={estilos.botaoTexto}>Adicionar</Text>
      </TouchableOpacity>

      <View style={estilos.conteudo}>
        <SectionList
          sections={secoes}
          keyExtractor={(item) => item.id}
          renderItem={renderizarItem}
          renderSectionHeader={renderizarSecao}
          ListEmptyComponent={<Text style={estilos.vazio}>Nenhuma tarefa cadastrada.</Text>}
          showsVerticalScrollIndicator={false}
        />
      </View>
    </>
  );
}

export default Conteudo;
