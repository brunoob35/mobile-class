import React from "react";
import { View, Text, Image, Button } from "react-native";
import { useNavigation } from "@react-navigation/native";
import { estilos } from "../styleSheet/estilos";

function Tela03() {
  const nav = useNavigation();
  const img = require("../../assets/marte.jpeg");

  return (
    <View style={estilos.telaPlaneta}>
      <Text style={estilos.planetaTitulo}>Marte</Text>
      <Image source={img} style={estilos.planetaImagem} />
      <Text style={estilos.planetaTexto}>Marte e conhecido como o planeta vermelho.</Text>
      <Text style={estilos.planetaTexto}>• A coloracao avermelhada e causada por oxido de ferro.</Text>
      <Text style={estilos.planetaTexto}>• Marte possui o maior vulcao do Sistema Solar.</Text>
      <Text style={estilos.planetaTexto}>• Cientistas estudam a possibilidade de vida antiga no planeta.</Text>
      <Text style={estilos.planetaTexto}>• Missoes espaciais investigam Marte constantemente.</Text>

      <View style={estilos.botaoUnico}>
        <Button title="Voltar" onPress={() => nav.navigate("Tela02")} />
      </View>
    </View>
  );
}

export default Tela03;
