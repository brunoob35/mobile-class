import React from "react";
import { View, Text } from "react-native";
import { estilos } from "./styleSheet/estilo";

function Rodape() {
  let autor = "Luiz Fernando Corcini";
  let data = "<dd/mm/aaaa>";

  return (
    <View style={estilos.rodape}>
      <Text style={estilos.rodTexto}>{autor}</Text>
      <Text style={estilos.rodTexto}>{data}</Text>
    </View>
  );
}

export default Rodape;