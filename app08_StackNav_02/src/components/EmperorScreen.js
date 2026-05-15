import React from "react";
import { FlatList, Image, Text, View } from "react-native";
import ScreenFrame from "./ScreenFrame";
import { estilos } from "../styleSheet/estilos";

function EmperorScreen({ emperor }) {
  return (
    <ScreenFrame
      captainImage={emperor.captainImage}
      eyebrow="YONKO"
      title={emperor.title}
      subtitle={emperor.crew}
    >
      <View style={[estilos.destaqueBox, { backgroundColor: emperor.color }]}>
        <Text style={estilos.destaqueTitulo}>Objetivo do capitao</Text>
        <Text style={estilos.destaqueTexto}>{emperor.objective}</Text>
      </View>

      <Image source={emperor.crewImage} style={estilos.crewImage} resizeMode="cover" />

      <View style={estilos.secaoCard}>
        <Text style={estilos.secaoTitulo}>Sobre o capitao</Text>
        <Text style={estilos.secaoTexto}>{emperor.captainIntro}</Text>
      </View>

      <View style={estilos.secaoCard}>
        <Text style={estilos.secaoTitulo}>Sobre a tripulacao</Text>
        <Text style={estilos.secaoTexto}>{emperor.crewIntro}</Text>
      </View>

      <View style={estilos.secaoCard}>
        <Text style={estilos.secaoTitulo}>Membros principais</Text>
        <FlatList
          data={emperor.mainMembers}
          keyExtractor={(item) => item}
          scrollEnabled={false}
          renderItem={({ item, index }) => (
            <Text style={estilos.listaItem}>
              {index + 1}. {item}
            </Text>
          )}
        />
      </View>
    </ScreenFrame>
  );
}

export default EmperorScreen;
