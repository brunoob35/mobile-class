import React, { useState } from "react";
import { Image, Switch, Text, TouchableOpacity, View } from "react-native";
import { estilos } from "../styleSheet/estilos";
import { emperors } from "../utils/appData";
import ScreenFrame from "../components/ScreenFrame";

function Principal({ navigation }) {
  const [showObjectives, setShowObjectives] = useState(true);

  return (
    <ScreenFrame
      captainImage={require("../../assets/shankscrew.webp")}
      eyebrow="GRAND LINE"
      title="4 Imperadores do Mar"
      subtitle="One Piece"
    >
      <View style={estilos.principalHero}>
        <Image
          source={require("../../assets/luffycrew.jpg.webp")}
          style={estilos.principalImagem}
          resizeMode="cover"
        />
        <Text style={estilos.principalTitulo}>Uma rota pelos Yonko atuais</Text>
        <Text style={estilos.principalTexto}>
          Explore os capitães Luffy, Buggy, Shanks e Barba Negra, conhecendo seus
          objetivos, o perfil de cada tripulação e alguns dos membros mais
          importantes de cada grupo.
        </Text>
      </View>

      <View style={estilos.switchLinha}>
        <Text style={estilos.switchLabel}>Mostrar resumo dos objetivos dos capitães</Text>
        <Switch value={showObjectives} onValueChange={setShowObjectives} />
      </View>

      {showObjectives ? (
        <View style={estilos.resumoBox}>
          {emperors.map((emperor) => (
            <Text key={emperor.route} style={estilos.resumoItem}>
              <Text style={{ fontWeight: "700" }}>{emperor.route}:</Text> {emperor.objective}
            </Text>
          ))}
        </View>
      ) : null}

      <View style={estilos.botoesArea}>
        {emperors.map((emperor) => (
          <TouchableOpacity
            key={emperor.route}
            style={estilos.botao}
            onPress={() => navigation.navigate(emperor.route)}
          >
            <Text style={estilos.botaoTitulo}>{emperor.route}</Text>
            <Text style={estilos.botaoSubtitulo}>{emperor.crew}</Text>
          </TouchableOpacity>
        ))}
      </View>
    </ScreenFrame>
  );
}

export default Principal;
