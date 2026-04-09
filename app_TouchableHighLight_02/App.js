import React from "react";
import { View } from "react-native";
import { estilos } from "./src/styleSheet/estilo";
import Cabecalho from "./src/Cabecalho";
import Conteudo from "./src/Conteudo";
import Rodape from "./src/Rodape";

function App() {
  return (
    <View style={estilos.fundo}>
      <Cabecalho />
      <Conteudo />
      <Rodape />
    </View>
  );
}

export default App;