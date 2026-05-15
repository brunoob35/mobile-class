import React from "react";
import { Text } from "react-native";
import ScreenLayout from "../components/ScreenLayout";
import { estilos } from "../styleSheet/estilos";

function FestaJunina() {
  return (
    <ScreenLayout emoji="🔥" eyebrow="FESTA JUNINA" title="Curiosidades" scroll>
      <Text style={estilos.secaoTitulo}>Introducao</Text>
      <Text style={estilos.secaoTexto}>
        A festa junina e celebrada com comidas tipicas, dancas e roupas
        coloridas. No Brasil, ela se espalhou por varias regioes e ganhou
        destaque especial nas comemoracoes escolares e nas festas de bairro.
      </Text>

      <Text style={estilos.secaoTitulo}>Origens</Text>
      <Text style={estilos.secaoTexto}>
        A tradicao tem relacao com festas populares da Europa e com homenagens
        a santos do mes de junho, como Sao Joao. Aqui, esses costumes foram
        adaptados e incorporaram elementos do interior brasileiro.
      </Text>

      <Text style={estilos.secaoTitulo}>Qual e o destaque da festa?</Text>
      <Text style={estilos.secaoTexto}>
        Quadrilha, fogueira, bandeirinhas e pratos como canjica, milho e pa de
        moleque fazem parte do clima junino. A festa tambem valoriza o encontro
        entre familias e comunidades em um ambiente alegre e acolhedor.
      </Text>
    </ScreenLayout>
  );
}

export default FestaJunina;
