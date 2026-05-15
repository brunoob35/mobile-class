import React from "react";
import { useNavigation } from "@react-navigation/native";
import SequenceScreen from "../components/SequenceScreen";

function Piratas() {
  const nav = useNavigation();

  return (
    <SequenceScreen
      title="Piratas"
      image={require("../../assets/piratas.webp")}
      paragraphs={[
        "Os piratas buscam liberdade nos mares e seguem suas proprias bandeiras.",
        "• Muitas tripulacoes sonham com o One Piece e com a fama no Novo Mundo.",
        "• Alguns grupos sao heroicos, enquanto outros espalham medo e destruicao.",
        "• Nomes como Luffy, Shanks e Barba Negra mostram lados bem diferentes da pirataria.",
      ]}
      onBack={() => nav.navigate("Principal")}
      onNext={() => nav.navigate("Marinha")}
    />
  );
}

export default Piratas;
