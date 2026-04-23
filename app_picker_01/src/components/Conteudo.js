import React, { useState } from "react";
import { View, Text, TouchableHighlight } from "react-native";
import { Picker } from "@react-native-picker/picker";
import CampoNome from "./CampoNome";
import { estilos } from "../styles/estilos";

export default function Conteudo() {
  const [nome, setNome] = useState("");
  const [linguagem, setLinguagem] = useState("Python");
  const [mensagem, setMensagem] = useState("");

  function confirmar() {
    if (nome.trim() === "") {
      setMensagem("Por favor, Digite seu nome!");
    } else {
      setMensagem(
        `Olá ${nome}, a sua linguagem de programação favorita é ${linguagem}`
      );
    }
  }

  return (
    <View style={estilos.conteudo}>
      <Text style={estilos.subtitulo}>Escolha Linguagem Favorita</Text>

      <CampoNome nome={nome} setNome={setNome} />

      <Text style={estilos.label}>Escolha uma linguagem:</Text>

      <View style={estilos.pickerBox}>
        <Picker
          selectedValue={linguagem}
          style={estilos.picker}
          onValueChange={(itemValue) => setLinguagem(itemValue)}
        >
          <Picker.Item label="Java" value="Java" />
          <Picker.Item label="JavaScript" value="JavaScript" />
          <Picker.Item label="Python" value="Python" />
          <Picker.Item label="C#" value="C#" />
        </Picker>
      </View>

      <TouchableHighlight style={estilos.botao} onPress={confirmar}>
        <Text style={estilos.textoBotao}>Confirmar</Text>
      </TouchableHighlight>

      <Text style={estilos.resultado}>{mensagem}</Text>
    </View>
  );
}