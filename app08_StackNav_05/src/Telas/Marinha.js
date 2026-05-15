import React from "react";
import { useNavigation } from "@react-navigation/native";
import SequenceScreen from "../components/SequenceScreen";

function Marinha() {
  const nav = useNavigation();

  return (
    <SequenceScreen
      title="Marinha"
      image={require("../../assets/marinha.avif")}
      paragraphs={[
        "A Marinha e a principal forca militar do Governo Mundial em One Piece.",
        "• Sua funcao e combater piratas e manter a ordem pelos oceanos.",
        "• Existem marinheiros com visoes diferentes sobre o que significa justica.",
        "• Almirantes e vice-almirantes representam o maior poder de combate da instituicao.",
      ]}
      onBack={() => nav.navigate("Piratas")}
      onNext={() => nav.navigate("Exercito Revolucionario")}
    />
  );
}

export default Marinha;
