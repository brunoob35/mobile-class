import React from "react";
import { useNavigation } from "@react-navigation/native";
import SequenceScreen from "../components/SequenceScreen";

function ExercitoRevolucionario() {
  const nav = useNavigation();

  return (
    <SequenceScreen
      title="Exercito Revolucionario"
      image={require("../../assets/exercitorevolucionario.webp")}
      paragraphs={[
        "O Exercito Revolucionario luta contra a opressao do Governo Mundial.",
        "• Dragon lidera o movimento e Sabo e um dos nomes mais importantes do grupo.",
        "• Sua missao principal e libertar povos e enfrentar estruturas injustas de poder.",
        "• Diferente dos piratas, seu foco esta na revolucao politica e social.",
      ]}
      onBack={() => nav.navigate("Marinha")}
    />
  );
}

export default ExercitoRevolucionario;
