import React from 'react';
import {
	SafeAreaView,
	View,
	Text,
	StyleSheet,
	ScrollView,
} from 'react-native';

export default function App() {
	const nomes = [
		'Bruno',
		'Kawan',
		'Arthur',
		'PH',
		'Alberto',
		'Eduardo',
		'Maria',
		'Luiz',
		'Izadora',
		'Moisés',
		'Fernanda',
		'Carlos',
		'Bianca',
		'Rafael',
		'Juliana',
		'Patrícia',
		'Henrique',
		'Camila',
		'André',
	];
	
	return (
			<SafeAreaView style={styles.container}>
			<View style={styles.card}>
			<View style={styles.header}>
			<Text style={styles.headerTitle}>LAÇOS DE REPETIÇÃO</Text>
			<Text style={styles.headerSubtitle}>DSV MOBILE</Text>
			</View>
			
			<ScrollView style={styles.body} contentContainerStyle={styles.scrollContent}>
			{nomes.map((nome, index) => (
										 <View key={index} style={styles.linha}>
										 <Text style={styles.label}>Nome:</Text>
										 <Text style={styles.nome}>{nome}</Text>
										 </View>
										 ))}
			</ScrollView>
			
			<View style={styles.footer}>
			<Text style={styles.footerText}>Bruno S Quoos</Text>
			<Text style={styles.footerText}>ADS - B</Text>
			</View>
			</View>
			</SafeAreaView>
			);
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: '#f2f2f2',
		justifyContent: 'center',
		alignItems: 'center',
		padding: 20,
	},
	
	card: {
		width: '95%',
		height: '90%',
		backgroundColor: '#ffffff',
		borderWidth: 1,
		borderColor: '#ccc',
	},
	
	header: {
		backgroundColor: '#8B0000',
		height: 150,
		justifyContent: 'center',
		alignItems: 'center',
		paddingHorizontal: 10,
	},
	
	headerTitle: {
		color: '#fff',
		fontSize: 28,
		fontWeight: 'bold',
		textAlign: 'center',
	},
	
	headerSubtitle: {
		color: '#FFD700',
		fontSize: 20,
		fontWeight: 'bold',
		marginTop: 12,
	},
	
	body: {
		flex: 1,
		backgroundColor: '#cfeff7',
	},
	
	scrollContent: {
		paddingBottom: 10,
	},
	
	linha: {
		flexDirection: 'row',
		alignItems: 'center',
		minHeight: 70,
		borderBottomWidth: 2,
		borderBottomColor: '#ffffff',
		paddingHorizontal: 12,
	},
	
	label: {
		fontSize: 22,
		color: '#444',
		marginRight: 20,
	},
	
	nome: {
		fontSize: 24,
		fontWeight: 'bold',
		color: '#111',
	},
	
	footer: {
		backgroundColor: '#8B0000',
		height: 70,
		flexDirection: 'row',
		justifyContent: 'space-around',
		alignItems: 'center',
		paddingHorizontal: 10,
	},
	
	footerText: {
		color: '#FFD700',
		fontSize: 18,
		fontStyle: 'italic',
	},
});
