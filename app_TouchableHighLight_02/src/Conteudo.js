import React, { useState } from "react";
import { View, Text, Image, TouchableHighlight } from "react-native";
import { estilos } from "./styleSheet/estilo";

function Conteudo() {
  const [enunciado, setEnunciado] = useState(
    "Clique no botão para trocar a cor do fundo da tela!"
  );
  const [descricao, setDescricao] = useState("");
  const [corFundo, setCorFundo] = useState("white");
  const [imgPersonagem, setImgPersonagem] = useState(
    require("../assets/aceDay.png")
  );
  const [corTexto, setCorTexto] = useState("darkred");

  function alteraState() {
    if (corFundo === "white") {
      setEnunciado(
        "A cor do fundo do Componente Conteúdo foi trocada para cinza. Clique novamente para voltar ao estado inicial."
      );
      setDescricao("Modo noturno ativado");
      setCorFundo("gray");
      setImgPersonagem(require("../assets/aceNight.png"));
      setCorTexto("white");
    } else {
      setEnunciado("Clique no botão para trocar a cor do fundo da tela!");
      setDescricao("");
      setCorFundo("white");
      setImgPersonagem(require("../assets/aceDay.png"));
      setCorTexto("darkred");
    }
  }

  return (
    <View style={[estilos.conteudo, { backgroundColor: corFundo }]}>
      <Image source={imgPersonagem} style={estilos.imgPersonagem} />

      <Text style={[estilos.tituloConteudo, { color: corTexto }]}>
        UseState
      </Text>

      <Text style={[estilos.textoEnunciado, { color: corTexto }]}>
        {enunciado}
      </Text>

      <TouchableHighlight
        onPress={alteraState}
        style={estilos.botao}
        underlayColor="#7a0000"
      >
        <Text style={estilos.botaoTexto}>CLIQUE AQUI</Text>
      </TouchableHighlight>

      <Text style={[estilos.textoDescricao, { color: corTexto }]}>
        {descricao}
      </Text>
    </View>
  );
}

export default Conteudo;