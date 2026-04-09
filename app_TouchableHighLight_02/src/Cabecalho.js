import React from "react";
import { View, Text } from "react-native";
import { estilos } from "./styleSheet/estilo";

function Cabecalho() {
  return (
    <View style={estilos.cabecalho}>
      <Text style={estilos.cabTitulo}>DSV - MOBILE</Text>
    </View>
  );
}

export default Cabecalho;