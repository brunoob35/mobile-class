import { StatusBar } from 'expo-status-bar';
import { FlatList, Image, SafeAreaView, StyleSheet, Text, View } from 'react-native';

import tripulacao from './src/dados/tripulacao.json';

export default function App() {
  function renderizarItem({ item }) {
    return (
      <View style={styles.card}>
        <Image source={{ uri: item.imagem }} style={styles.imagem} />
        <Text style={styles.nome}>{item.nome}</Text>
        <Text style={styles.funcao}>{item.funcao}</Text>
        <Text style={styles.info}>Idade: {item.idade}</Text>
        <Text style={styles.info}>Habilidades: {item.habilidades}</Text>
        <Text style={styles.info}>Fruta do Diabo: {item.fruta}</Text>
        <Text style={styles.info}>Recompensa: {item.recompensa}</Text>
      </View>
    );
  }

  return (
    <SafeAreaView style={styles.container}>
      <Text style={styles.titulo}>Tripulacao do Luffy em One Piece</Text>
      <FlatList
        data={tripulacao}
        keyExtractor={(item) => item.id}
        renderItem={renderizarItem}
        ItemSeparatorComponent={() => <View style={styles.separador} />}
        showsVerticalScrollIndicator={false}
      />
      <StatusBar style="auto" />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f3efe6',
    paddingTop: 20,
    paddingHorizontal: 16,
    paddingBottom: 12,
  },
  titulo: {
    fontSize: 30,
    fontWeight: 'bold',
    color: '#7a1f1f',
    textAlign: 'center',
  },
  subtitulo: {
    fontSize: 16,
    color: '#3d3d3d',
    textAlign: 'center',
    marginTop: 6,
    marginBottom: 18,
  },
  card: {
    backgroundColor: '#ffffff',
    borderRadius: 12,
    padding: 14,
    borderWidth: 1,
    borderColor: '#e3d7c8',
  },
  imagem: {
    width: '100%',
    height: 220,
    borderRadius: 10,
    marginBottom: 12,
    backgroundColor: '#ddd',
  },
  nome: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#1f1f1f',
    marginBottom: 4,
  },
  funcao: {
    fontSize: 17,
    fontWeight: '600',
    color: '#8c3a1b',
    marginBottom: 8,
  },
  info: {
    fontSize: 15,
    color: '#333',
    marginBottom: 4,
    lineHeight: 21,
  },
  separador: {
    height: 14,
  },
});
