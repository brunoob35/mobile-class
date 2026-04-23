import React from "react";
import { View } from "react-native";
import Cabecalho from "./src/components/Cabecalho";
import Conteudo from "./src/components/Conteudo";
import Rodape from "./src/components/Rodape";
import { estilos } from "./src/styles/estilos";

export default function App() {
  return (
    <View style={estilos.container}>
      <View style={estilos.app}>
        <Cabecalho />
        <Conteudo />
        <Rodape />
      </View>
    </View>
  );
}