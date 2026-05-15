import React from "react";
import { View, Text, Image, Button } from "react-native";
import { useNavigation } from "@react-navigation/native";
import { estilos } from "../styleSheet/estilos";

function Tela01() {
  const nav = useNavigation();
  const img = require("../../assets/mercurio.jpg");

  return (
    <View style={estilos.telaPlaneta}>
      <Text style={estilos.planetaTitulo}>Mercurio</Text>
      <Image source={img} style={estilos.planetaImagem} />
      <Text style={estilos.planetaTexto}>Mercurio e o planeta mais proximo do Sol.</Text>
      <Text style={estilos.planetaTexto}>• E o menor planeta do Sistema Solar.</Text>
      <Text style={estilos.planetaTexto}>• Um ano em Mercurio dura apenas 88 dias terrestres.</Text>
      <Text style={estilos.planetaTexto}>• Durante o dia, a temperatura pode ultrapassar 400°C.</Text>
      <Text style={estilos.planetaTexto}>• A noite, a temperatura pode chegar a -180°C.</Text>

      <View style={estilos.botoesLinha}>
        <View style={estilos.botaoBox}>
          <Button title="Voltar" onPress={() => nav.navigate("Principal")} />
        </View>
        <View style={estilos.botaoBox}>
          <Button title="Proximo Planeta" onPress={() => nav.navigate("Tela02")} />
        </View>
      </View>
    </View>
  );
}

export default Tela01;
