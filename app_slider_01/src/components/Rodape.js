import React from "react";
import { View, Text } from "react-native";
import Logo from "../../assets/tech-color-keyboard-svgrepo-com.svg";
import { estilos } from "../styles/estilos";

export default function Rodape() {
  return (
    <View style={estilos.rodape}>
      <View style={estilos.rodapeLinha}>
        <Logo width={30} height={30} />
        <Text style={estilos.textoRodape}>
          Bruno Schmaiske Quoos
        </Text>
      </View>

      <Text style={estilos.textoRodape}>2026</Text>
    </View>
  );
}