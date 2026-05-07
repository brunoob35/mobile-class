import React from 'react';
import { Image, Text, View } from 'react-native';

import { estilos } from '../styleSheet/estilos';

function Cabecalho() {
  return (
    <View style={estilos.cabecalho}>
      <View style={estilos.faixaBandeiras}>
        <Image source={{ uri: 'https://flagcdn.com/w80/br.png' }} style={estilos.bandeiraTopo} />
        <Image source={{ uri: 'https://flagcdn.com/w80/pt.png' }} style={estilos.bandeiraTopo} />
        <Image source={{ uri: 'https://flagcdn.com/w80/py.png' }} style={estilos.bandeiraTopo} />
      </View>
      <Text style={estilos.tituloApp}>Desafio 02</Text>
      <Text style={estilos.subtitulo}>Lista de paises e capitais</Text>
    </View>
  );
}

export default Cabecalho;
