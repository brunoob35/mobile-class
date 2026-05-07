import React from 'react';
import { Image, Text, View } from 'react-native';

import { estilos } from '../styleSheet/estilos';

function Rodape() {
  return (
    <View style={estilos.rodape}>
      <View style={estilos.faixaBandeiras}>
        <Image source={{ uri: 'https://flagcdn.com/w80/ar.png' }} style={estilos.bandeiraTopo} />
        <Image source={{ uri: 'https://flagcdn.com/w80/us.png' }} style={estilos.bandeiraTopo} />
        <Image source={{ uri: 'https://flagcdn.com/w80/fr.png' }} style={estilos.bandeiraTopo} />
      </View>
      <Text style={estilos.textoRodape}>FlatList com dados de um arquivo JSON</Text>
    </View>
  );
}

export default Rodape;
