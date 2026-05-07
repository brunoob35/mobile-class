import React from 'react';
import { Text, View } from 'react-native';

import { estilos } from '../styleSheet/estilos';

function Cabecalho() {
  return (
    <View style={estilos.cabecalho}>
      <Text style={estilos.tituloTopo}>SECTIONLIST</Text>
      <Text style={estilos.titulo}>Lista de Tarefas</Text>
    </View>
  );
}

export default Cabecalho;
