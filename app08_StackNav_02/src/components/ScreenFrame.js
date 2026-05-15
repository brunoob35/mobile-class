import React from "react";
import { Image, ScrollView, Text, View } from "react-native";
import { estilos } from "../styleSheet/estilos";
import { AUTHOR_NAME, getTodayLabel } from "../utils/appData";

function ScreenFrame({ captainImage, eyebrow, title, subtitle, children }) {
  return (
    <View style={estilos.telaFundo}>
      <View style={estilos.cartao}>
        <View style={estilos.cabecalho}>
          <View style={estilos.cabecalhoTopo}>
            <Image source={captainImage} style={estilos.imagemCapitao} resizeMode="cover" />
            <View style={estilos.tituloArea}>
              <Text style={estilos.eyebrow}>{eyebrow}</Text>
              <Text style={estilos.titulo}>{title}</Text>
              <Text style={estilos.subtitulo}>{subtitle}</Text>
            </View>
          </View>
        </View>

        <ScrollView contentContainerStyle={estilos.scrollConteudo}>{children}</ScrollView>

        <View style={estilos.rodape}>
          <Text style={estilos.rodapeTexto}>{AUTHOR_NAME}</Text>
          <Text style={estilos.rodapeTexto}>{getTodayLabel()}</Text>
        </View>
      </View>
    </View>
  );
}

export default ScreenFrame;
