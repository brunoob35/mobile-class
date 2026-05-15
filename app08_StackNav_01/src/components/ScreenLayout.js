import React from "react";
import { ScrollView, Text, View } from "react-native";
import { estilos } from "../styleSheet/estilos";
import { AUTHOR_NAME, getTodayLabel } from "../utils/appData";

function ScreenLayout({ emoji, eyebrow, title, subtitle, scroll, children }) {
  const Container = scroll ? ScrollView : View;
  const containerProps = scroll
    ? { contentContainerStyle: estilos.corpoScroll }
    : { style: estilos.corpoPrincipal };

  return (
    <View style={estilos.telaFundo}>
      <View style={estilos.cartao}>
        <View style={estilos.cabecalho}>
          <View style={estilos.cabecalhoLinha}>
            <Text style={estilos.figuraEmoji}>{emoji}</Text>
            <View style={estilos.tituloBloco}>
              <Text style={estilos.subtitulo}>{eyebrow}</Text>
              <Text style={estilos.titulo}>{title}</Text>
              {subtitle ? <Text style={estilos.textoPequeno}>{subtitle}</Text> : null}
            </View>
          </View>
        </View>

        <Container {...containerProps}>{children}</Container>

        <View style={estilos.rodape}>
          <Text style={estilos.rodapeTexto}>{AUTHOR_NAME}</Text>
          <Text style={estilos.rodapeTexto}>{getTodayLabel()}</Text>
        </View>
      </View>
    </View>
  );
}

export default ScreenLayout;
