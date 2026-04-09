import React from "react";
import { View, Text, Image } from "react-native";
import { estilos } from "./styleSheet/estilos";

function Cabecalho() {
	let img1 = require("../img/logo2.png");
	
	return (
			<View style={estilos.cabecalho}>
			<Text style={estilos.cabSubTitulo}>DSV MOBILE</Text>
			<Image source={img1} style={estilos.cabimagem} />
			<Text style={estilos.cabTitulo}>FUNDAMENTOS II</Text>
			</View>
			);
}

export default Cabecalho;
