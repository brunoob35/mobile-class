import React from "react";
import { Text, TouchableOpacity, View } from "react-native";
import ScreenLayout from "../components/ScreenLayout";
import { estilos } from "../styleSheet/estilos";
import { TOPICS } from "../utils/appData";

function Principal({ navigation }) {
  return (
    <ScreenLayout
      emoji="🎉"
      eyebrow="Tela Principal"
      title="Stack Navigation"
      subtitle="DSV Mobile"
    >
      <Text style={estilos.titulo}>Curiosidades</Text>

      <View style={estilos.botoesArea}>
        {TOPICS.map((topic) => (
          <TouchableOpacity
            key={topic.route}
            style={estilos.botao}
            onPress={() => navigation.navigate(topic.route)}
          >
            <Text style={estilos.botaoTexto}>{topic.label}</Text>
          </TouchableOpacity>
        ))}
      </View>
    </ScreenLayout>
  );
}

export default Principal;
