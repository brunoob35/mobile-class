import React from "react";
import { Text } from "react-native";
import ScreenLayout from "../components/ScreenLayout";
import { estilos } from "../styleSheet/estilos";

function Carnaval() {
  return (
    <ScreenLayout emoji="🎭" eyebrow="CARNAVAL" title="Curiosidades" scroll>
      <Text style={estilos.secaoTitulo}>Introducao</Text>
      <Text style={estilos.secaoTexto}>
        O carnaval brasileiro mistura musica, fantasia e tradicoes populares em
        uma das festas mais conhecidas do mundo. Desfiles, blocos de rua e
        celebracoes em diferentes regioes mostram como a festa ganhou estilos
        proprios ao longo do tempo.
      </Text>

      <Text style={estilos.secaoTitulo}>Origens</Text>
      <Text style={estilos.secaoTexto}>
        Suas raizes passam por festas europeias trazidas ao Brasil e por
        influencias africanas que ajudaram a construir ritmos, dancas e formas
        de celebracao. Com o passar dos anos, o carnaval virou um simbolo forte
        da cultura brasileira.
      </Text>

      <Text style={estilos.secaoEmoji}>🥁</Text>

      <Text style={estilos.secaoTitulo}>Curiosidade</Text>
      <Text style={estilos.secaoTexto}>
        As escolas de samba nao sao apenas grupos de desfile: elas tambem atuam
        como espacos culturais e comunitarios, envolvendo artistas, musicos,
        costureiras e centenas de participantes na preparacao de cada
        apresentacao.
      </Text>
    </ScreenLayout>
  );
}

export default Carnaval;
