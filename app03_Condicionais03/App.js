import React, { useState } from 'react';
import { SafeAreaView, View, TouchableOpacity, Text, StyleSheet, StatusBar } from 'react-native';
import Tela1 from './components/Tela1';
import Tela2 from './components/Tela2';

export default function App() {
	const [telaSelecionada, setTelaSelecionada] = useState('Tela1');
	
	return (
			<SafeAreaView style={styles.safeArea}>
			<StatusBar barStyle="dark-content" />
			<View style={styles.container}>
			<View style={styles.topoBotoes}>
			<TouchableOpacity
			style={styles.botao}
			onPress={() => setTelaSelecionada('Tela1')}
			activeOpacity={0.8}
			>
			<Text style={styles.textoBotao}>Tela 1</Text>
			</TouchableOpacity>
			
			<TouchableOpacity
			style={styles.botao}
			onPress={() => setTelaSelecionada('Tela2')}
			activeOpacity={0.8}
			>
			<Text style={styles.textoBotao}>Tela 2</Text>
			</TouchableOpacity>
			</View>
			
			<View style={styles.areaConteudo}>
			{telaSelecionada === 'Tela1' ? <Tela1 /> : <Tela2 />}
			</View>
			</View>
			</SafeAreaView>
			);
}

const styles = StyleSheet.create({
	safeArea: {
		flex: 1,
		backgroundColor: '#f3dd95',
	},
	container: {
		flex: 1,
		backgroundColor: '#f3dd95',
		paddingHorizontal: 8,
		paddingTop: 8,
		paddingBottom: 10,
	},
	topoBotoes: {
		flexDirection: 'row',
		justifyContent: 'center',
		alignItems: 'center',
		gap: 16,
		marginTop: 4,
		marginBottom: 10,
	},
	botao: {
		backgroundColor: '#2f80ed',
		minWidth: 116,
		height: 54,
		borderRadius: 16,
		alignItems: 'center',
		justifyContent: 'center',
		shadowColor: '#000',
		shadowOpacity: 0.08,
		shadowRadius: 5,
		shadowOffset: { width: 0, height: 2 },
		elevation: 2,
	},
	textoBotao: {
		color: '#fff',
		fontSize: 17,
		fontWeight: '700',
	},
	areaConteudo: {
		flex: 1,
	},
});
