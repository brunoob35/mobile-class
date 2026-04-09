import { StyleSheet } from "react-native";

const estilos = StyleSheet.create({
	fundo: {
		flex: 1,
		backgroundColor: 'lightgray',
		marginTop: 25,
		paddingHorizontal: 10,
		paddingVertical: 10,
	},
	
	cabecalho: {
		flex: 0.25,
		backgroundColor: 'darkred',
		flexDirection: 'column-reverse',
		borderTopStartRadius: 25,
		borderTopEndRadius: 25,
		borderWidth: 1,
		borderColor: 'gray',
		alignItems: 'center',
		justifyContent: 'space-around',
	},
	
	cabimagem: {
		width: 130,
		height: 130,
	},
	
	cabTitulo: {
		color: 'white',
		fontSize: 30,
	},
	
	cabSubTitulo: {
		color: 'white',
		fontSize: 20,
		fontWeight: 'bold',
	},
	
	conteudo: {
		flex: 0.60,
		backgroundColor: 'white',
	},
	
	rodape: {
		flex: 0.10,
		backgroundColor: 'darkred',
		flexDirection: 'row',
		alignItems: 'center',
		justifyContent: 'space-around',
	},
	
	rodAutor: {
		color: 'yellow',
		fontSize: 18,
		fontWeight: 'bold',
	}
});

export { estilos };
