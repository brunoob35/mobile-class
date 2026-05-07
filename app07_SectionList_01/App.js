import React from 'react';
import {
  Alert,
  Platform,
  SectionList,
  Text,
  TouchableOpacity,
  View,
} from 'react-native';

import dados_Alunos from './src/dados/alunos.json';
import { estilos1 } from './src/styleSheet/estilos1';

function App() {
  function mostrarDetalhes(aluno) {
    const mensagem =
      `CPF: ${aluno.cpf}\n` +
      `Nascimento: ${aluno.nascimento}\n` +
      `Ano: ${aluno.ano}`;

    if (Platform.OS === 'web') {
      alert(aluno.nome + '\n\n' + mensagem);
    } else {
      Alert.alert(aluno.nome, mensagem);
    }
  }

  function mostraItem({ item }) {
    return (
      <TouchableOpacity
        style={estilos1.item}
        onPress={() => mostrarDetalhes(item)}
        activeOpacity={0.2}>
        <Text style={estilos1.nome}>{item.nome}</Text>
      </TouchableOpacity>
    );
  }

  function mostraCabecalhoLista({ section }) {
    return (
      <View style={estilos1.cabecalhoLista}>
        <Text style={estilos1.cabTexto}>{section.title}</Text>
      </View>
    );
  }

  function extrairId(item) {
    return item.id;
  }

  return (
    <View style={estilos1.fundo}>
      <Text style={estilos1.cabecalho}>Lista de Alunos por Curso</Text>
      <SectionList
        sections={dados_Alunos}
        keyExtractor={extrairId}
        renderItem={mostraItem}
        renderSectionHeader={mostraCabecalhoLista}
      />
    </View>
  );
}

export default App;
