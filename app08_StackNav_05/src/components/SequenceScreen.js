import React from "react";
import { Button, Image, Text, View } from "react-native";
import { estilos } from "../styleSheet/estilos";

function SequenceScreen({ title, image, paragraphs, onBack, onNext }) {
  return (
    <View style={estilos.telaFaccao}>
      <Text style={estilos.telaTitulo}>{title}</Text>
      <Image source={image} style={estilos.telaImagem} resizeMode="cover" />

      {paragraphs.map((paragraph) => (
        <Text key={paragraph} style={estilos.telaTexto}>
          {paragraph}
        </Text>
      ))}

      <View style={onNext ? estilos.botoesLinha : estilos.botaoUnico}>
        <View style={estilos.botaoBox}>
          <Button title="Voltar" onPress={onBack} />
        </View>
        {onNext ? (
          <View style={estilos.botaoBox}>
            <Button title="Proxima Tela" onPress={onNext} />
          </View>
        ) : null}
      </View>
    </View>
  );
}

export default SequenceScreen;
