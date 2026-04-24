import React, { useState } from "react";
import {
  View,
  Text,
  TextInput,
  TouchableHighlight,
} from "react-native";
import Slider from "@react-native-community/slider";
import { estilos } from "../styles/estilos";

export default function Conteudo() {
  const [nome, setNome] = useState("");

  const [corFundoApp, setCorFundoApp] = useState("#2f80ed");
  const [corTexto, setCorTexto] = useState("#ffffff");

  const [corInput, setCorInput] = useState("#ffffff");

  function verifica() {
    if (nome.trim() === "") {
      alert("Você precisa digitar seu nome!");
    } else {
      alert(`Olá ${nome}! Experimente deslizar os sliders!`);
    }
  }

  function corDeFoco() {
    setCorInput("orange");
  }

  function corNormal() {
    setCorInput("#ffffff");
  }

  function deslizaSlider1() {
    const cor =
      "#" + Math.floor(Math.random() * 16777215).toString(16);
    setCorTexto(cor);
  }

  function deslizaSlider2() {
    const cor =
      "#" + Math.floor(Math.random() * 16777215).toString(16);
    setCorFundoApp(cor);
  }

  return (
    <View style={[estilos.conteudo, { backgroundColor: corFundoApp }]}>
      <Text style={[estilos.textoConteudo, { color: corTexto }]}>
        O componente Slider permite que o usuário escolha um valor de um
        intervalo predefinido de valores, arrastando um botão ao longo de uma linha
        do controle deslizante, como mostrado nas figuras ao lado. Verifique o
        exemplo abaixo:
      </Text>

      <Text style={[estilos.textoConteudo, { color: corTexto }]}>
        Digite seu nome:
      </Text>

      <TextInput
        style={[
          estilos.input,
          { backgroundColor: corInput, color: "#000" },
        ]}
        value={nome}
        onChangeText={setNome}
        onFocus={corDeFoco}
        onBlur={corNormal}
      />

      <Text style={[estilos.textoConteudo, { color: corTexto }]}>
        Deslize o Slider abaixo:
      </Text>

      <Slider
        style={{ width: "75%", marginTop: 20 }}
        minimumValue={0}
        maximumValue={100}
        step={5}
        minimumTrackTintColor="yellow"
        maximumTrackTintColor="white"
        onValueChange={deslizaSlider1}
      />

      <Text style={[estilos.textoConteudo, { color: corTexto }]}>
        Deslize o Slider abaixo:
      </Text>

      <Slider
        style={{ width: "75%", marginTop: 20 }}
        minimumValue={0}
        maximumValue={100}
        step={10}
        minimumTrackTintColor="white"
        maximumTrackTintColor="red"
        onValueChange={deslizaSlider2}
      />

      <TouchableHighlight style={estilos.botao} onPress={verifica}>
        <Text style={estilos.textoBotao}>CLIQUE AQUI</Text>
      </TouchableHighlight>
    </View>
  );
}