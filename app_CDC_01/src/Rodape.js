import React from "react";
import { View, Text } from "react-native";
import { estilos } from "./styleSheet/estilos";

function Rodape() {
	let autor = "Bruno S. Quoos";
	let data = "09/04/2026";
	
	return (
			<View style={estilos.rodape}>
			<Text style={estilos.rodAutor}>{autor}</Text>
			<Text style={estilos.rodAutor}>{data}</Text>
			</View>
			);
}

export default Rodape;
