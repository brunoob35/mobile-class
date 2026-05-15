import React from "react";
import { Button, Image, Text, View } from "react-native";
import { useNavigation } from "@react-navigation/native";
import { estilos } from "../styleSheet/estilos";

function Principal() {
  const nav = useNavigation();

  return (
    <View style={estilos.principalFundo}>
      <Text style={estilos.principalSubTitulo}>Stack Navigation - One Piece</Text>
      <Image source={require("../../assets/One-Piece-Logo.png")} style={estilos.logo} />
      <Text style={estilos.principalTitulo}>GRANDES FORCAS</Text>
      <Text style={estilos.principalTexto}>
        Piratas, Marinha e Exercito Revolucionario em uma viagem pelo mundo de
        One Piece.
      </Text>
      <Button title="Iniciar Jornada" onPress={() => nav.navigate("Piratas")} />
      <Text style={estilos.principalRodape}>DSV MOBILE</Text>
    </View>
  );
}

export default Principal;
