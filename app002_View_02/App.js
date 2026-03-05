import React from 'react';
import { View, Text } from 'react-native';

export default function App() {
  const hoje = new Date();
  const dataFormatada = hoje.toLocaleDateString('pt-BR');

  return (
    <View
      style={{
        backgroundColor: '#9ACD32', // verde (fundo)
        width: '100%',
        height: '100%',
        padding: 15,
      }}
    >
      {/* Topo vermelho arredondado */}
      <View
        style={{
          backgroundColor: 'red',
          width: '100%',
          height: 90,
          borderColor: 'black',
          borderWidth: 3,
          borderTopLeftRadius: 18,
          borderTopRightRadius: 18,
          padding: 10,
        }}
      >
        <Text style={{ color: 'black' }}>COMPONENTE VIEW</Text>
      </View>

      {/* Caixa amarela "CONTEÚDO" */}
      <View
        style={{
          backgroundColor: 'yellow',
          width: '100%',
          height: 290,
          borderColor: 'black',
          borderWidth: 3,
          marginTop: 15,
          padding: 12,
        }}
      >
        <Text style={{ fontSize: 22, color: 'black' }}>CONTEÚDO</Text>
      </View>

      {/* Rodapé cinza arredondado */}
      <View
        style={{
          backgroundColor: 'lightgray',
          width: '100%',
          height: 75,
          borderColor: 'black',
          borderWidth: 3,
          borderBottomLeftRadius: 18,
          borderBottomRightRadius: 18,
          marginTop: 15,
          padding: 10,
        }}
      >
        <Text style={{ color: 'black' }}>Bruno S Quoos</Text>
        <Text style={{ color: 'black' }}>{dataFormatada}</Text>
      </View>
    </View>
  );
}
