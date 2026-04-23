import React, { useState } from "react";
import { TextInput } from "react-native";
import { estilos } from "../styles/estilos";

export default function CampoNome({ nome, setNome }) {
  const [corFundo, setCorFundo] = useState("#fff");

  function corDeFoco(cor) {
    setCorFundo(cor);
  }

  return (
    <TextInput
      style={[estilos.input, { backgroundColor: corFundo }]}
      placeholder="Digite seu nome"
      value={nome}
      onChangeText={setNome}
      onFocus={() => corDeFoco("orange")}
      onBlur={() => corDeFoco("#fff")}
    />
  );
}