import React from 'react';
import { FlatList, Image, Text, View } from 'react-native';

import paises from '../dados/paises.json';
import { estilos } from '../styleSheet/estilos';

function Conteudo() {
  function recuperaId(item) {
    return item.id;
  }

  function mostrarItem({ item }) {
    return (
      <View style={estilos.card}>
        <View style={estilos.cardConteudo}>
          <View style={estilos.infoPais}>
            <Text style={estilos.pais}>{item.pais}</Text>
            <Text style={estilos.capital}>Capital: {item.capital}</Text>
          </View>
          <Image source={{ uri: item.bandeira }} style={estilos.bandeiraItem} />
        </View>
      </View>
    );
  }

  function mostrarSeparador() {
    return <View style={estilos.separador} />;
  }

  function mostrarCabecalho() {
    return <Text style={estilos.cabecalhoLista}>Paises</Text>;
  }

  function mostrarRodape() {
    return <Text style={estilos.rodapeLista}>Total: {paises.length}</Text>;
  }

  return (
    <FlatList
      style={{ flex: 1 }}
      data={paises}
      keyExtractor={recuperaId}
      renderItem={mostrarItem}
      ItemSeparatorComponent={mostrarSeparador}
      ListHeaderComponent={mostrarCabecalho}
      ListFooterComponent={mostrarRodape}
      showsVerticalScrollIndicator={false}
    />
  );
}

export default Conteudo;
