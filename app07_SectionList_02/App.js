import React from 'react';
import { SafeAreaView } from 'react-native';

import Cabecalho from './src/componentes/Cabecalho';
import Conteudo from './src/componentes/Conteudo';
import Rodape from './src/componentes/Rodape';
import { estilos } from './src/styleSheet/estilos';

function App() {
  return (
    <SafeAreaView style={estilos.container}>
      <Cabecalho />
      <Conteudo />
      <Rodape />
    </SafeAreaView>
  );
}

export default App;
