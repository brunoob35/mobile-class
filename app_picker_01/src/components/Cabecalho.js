import React from "react";
import { View, Text } from "react-native";
import Logo from "../../assets/tech-color-keyboard-svgrepo-com.svg";
import { estilos } from "../styles/estilos";

export default function Cabecalho() {
  return (
    <View>
      <View style={estilos.barraTopo} />

      <View style={estilos.cabecalho}>
        <Logo width={90} height={90} />
        <Text style={estilos.titulo}>Componente Picker</Text>
      </View>
    </View>
  );
}