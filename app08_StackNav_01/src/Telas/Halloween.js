import React from "react";
import { Text } from "react-native";
import ScreenLayout from "../components/ScreenLayout";
import { estilos } from "../styleSheet/estilos";

function Halloween() {
  return (
    <ScreenLayout emoji="🎃" eyebrow="HALLOWEEN" title="Curiosidades" scroll>
      <Text style={estilos.secaoTitulo}>Introducao</Text>
      <Text style={estilos.secaoTexto}>
        O Halloween e lembrado por fantasias, decoracoes assustadoras e pela
        brincadeira de pedir doces. A data se tornou popular em varios paises e
        tambem aparece em festas tematicas e eventos culturais no Brasil.
      </Text>

      <Text style={estilos.secaoTitulo}>Origens</Text>
      <Text style={estilos.secaoTexto}>
        A comemoracao tem ligacao com antigas tradicoes celtas associadas ao
        fim do verao e a crenças sobre a aproximacao entre o mundo dos vivos e
        o dos espiritos. Com o tempo, o costume foi ressignificado e ganhou um
        tom mais divertido.
      </Text>

      <Text style={estilos.secaoEmoji}>🕸️👻</Text>

      <Text style={estilos.secaoTitulo}>Curiosidade</Text>
      <Text style={estilos.secaoTexto}>
        A abobora iluminada, um dos simbolos mais famosos do Halloween, vem da
        lenda de Jack O'Lantern. Em algumas versoes antigas, o nabo era usado
        antes da abobora se popularizar.
      </Text>
    </ScreenLayout>
  );
}

export default Halloween;
