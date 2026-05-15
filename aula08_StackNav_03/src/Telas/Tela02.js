import React from "react";
import { View, Text, Image, Button } from "react-native";
import { useNavigation } from "@react-navigation/native";
import { estilos } from "../styleSheet/estilos";

function Tela02() {
  const nav = useNavigation();
  const img = require("../../assets/venus.jpg.webp");

  return (
    <View style={estilos.telaPlaneta}>
      <Text style={estilos.planetaTitulo}>Venus</Text>
      <Image source={img} style={estilos.planetaImagem} />
      <Text style={estilos.planetaTexto}>Venus e o planeta mais quente do Sistema Solar.</Text>
      <Text style={estilos.planetaTexto}>• Venus possui uma atmosfera extremamente densa.</Text>
      <Text style={estilos.planetaTexto}>• Sua temperatura media e superior a 460°C.</Text>
      <Text style={estilos.planetaTexto}>• O planeta gira no sentido contrario da maioria dos planetas.</Text>
      <Text style={estilos.planetaTexto}>• E conhecido como a estrela d'alva.</Text>

      <View style={estilos.botoesLinha}>
        <View style={estilos.botaoBox}>
          <Button title="Voltar" onPress={() => nav.navigate("Tela01")} />
        </View>
        <View style={estilos.botaoBox}>
          <Button title="Proximo Planeta" onPress={() => nav.navigate("Tela03")} />
        </View>
      </View>
    </View>
  );
}

export default Tela02;
