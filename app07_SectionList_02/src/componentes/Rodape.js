import React from 'react';
import { Text, View } from 'react-native';

import { estilos } from '../styleSheet/estilos';

function Rodape() {
  return (
    <View style={estilos.rodape}>
      <Text style={estilos.rodapeTexto}>SectionList</Text>
      <Text style={estilos.rodapeTexto}>dd/mm/aaaa</Text>
    </View>
  );
}

export default Rodape;
