import React from "react";
import { View, Text, ScrollView } from "react-native";
import { estilos } from "./styleSheet/estilos";

function Conteudo() {
	let itemConteudo = null;
	
	let ArrayPaises = [
		"Brasil",
		"Portugal",
		"Angola",
		"EUA",
		"China",
		"Índia"
	];
	
	for (let i = 0; i < ArrayPaises.length; i++) {
		itemConteudo = (
						<>
						{itemConteudo}
						<View
						key={i}
						style={{
							backgroundColor: "blue",
							marginTop: 10,
							height: 100,
							width: "100%",
						}}
						>
						<Text style={{ color: "white", fontSize: 25 }}>
						{ArrayPaises[i]}
						</Text>
						</View>
						</>
						);
	}
	
	return (
			<ScrollView style={estilos.conteudo}>
			{itemConteudo}
			</ScrollView>
			);
}

export default Conteudo;
