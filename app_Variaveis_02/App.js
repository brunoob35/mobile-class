import React from 'react';
import { View, Text, StyleSheet, Image } from 'react-native';

export default function CardUI() {
	return (
			<View style={styles.screen}>
			<View style={styles.header}>
			<Image
			source={{ uri: 'https://cdn-icons-png.flaticon.com/512/1144/1144760.png' }}
			style={styles.avatar}
			/>
			<Text style={styles.headerText}>
			Site com varias categorias diferentes
			</Text>
			</View>
			
			<View style={styles.card}>
			<Text style={styles.title}>Categorias</Text>
			
			<View style={styles.iconRow}>
			<View style={[styles.iconBox, { backgroundColor: '#FF8A00' }]}>
			<Image
			source={{ uri: 'https://cdn-icons-png.flaticon.com/512/0/191.png' }}
			style={styles.iconImage}
			/>
			</View>
			
			<View style={[styles.iconBox, { backgroundColor: '#8E7CFF' }]}>
			<Image
			source={{ uri: 'https://cdn-icons-png.flaticon.com/512/8277/8277564.png' }}
			style={styles.iconImage}
			/>
			</View>
			
			<View style={[styles.iconBox, { backgroundColor: '#19C37D' }]}>
			<Image
			source={{ uri: 'https://cdn-icons-png.flaticon.com/512/91/91236.png' }}
			style={styles.iconImage}
			/>
			</View>
			
			<View style={[styles.iconBox, { backgroundColor: '#EA00FF' }]}>
			<Image
			source={{ uri: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-If-Ui_6NJzOpSobAQNkJvpkAaKzs3T7vDw&s' }}
			style={styles.iconImage}
			/>
			</View>
			
			<View style={[styles.iconBox, { backgroundColor: '#FFEE00' }]}>
			<Image
			source={{ uri: 'https://cdn-icons-png.flaticon.com/512/7512/7512286.png' }}
			style={styles.iconImage}
			/>
			</View>
			</View>
			
			<Text style={styles.subtitle}>Tecnologias</Text>
			
			<View style={styles.contentArea}>
			<View style={styles.item}>
			<View style={styles.thumb}>
			<Text style={styles.thumbText}>1</Text>
			</View>
			<View style={styles.itemText}>
			<Text style={styles.itemTitle}>Celular</Text>
			<Text style={styles.itemDesc}>
			Novas tecnologias o tempo todo e toda hora
			</Text>
			<View style={styles.progressBg}>
			<View
			style={[
				styles.progressFill,
				{ width: '70%', backgroundColor: '#FFD400' },
			]}
			/>
			</View>
			</View>
			</View>
			
			<View style={styles.item}>
			<View style={styles.thumb}>
			<Text style={styles.thumbText}>2</Text>
			</View>
			<View style={styles.itemText}>
			<Text style={styles.itemTitle}>Animais</Text>
			<Text style={styles.itemDesc}>Animais pequenos sendo fofos</Text>
			<View style={styles.progressBg}>
			<View
			style={[
				styles.progressFill,
				{ width: '40%', backgroundColor: '#FF8A00' },
			]}
			/>
			</View>
			</View>
			</View>
			
			<View style={styles.item}>
			<View style={styles.thumb}>
			<Text style={styles.thumbText}>3</Text>
			</View>
			<View style={styles.itemText}>
			<Text style={styles.itemTitle}>Instrumentos</Text>
			<Text style={styles.itemDesc}>Varios instrumentos musicais</Text>
			<View style={styles.progressBg}>
			<View
			style={[
				styles.progressFill,
				{ width: '60%', backgroundColor: '#4A6FA5' },
			]}
			/>
			</View>
			</View>
			</View>
			
			<View style={styles.item}>
			<View style={styles.thumb}>
			<Text style={styles.thumbText}>4</Text>
			</View>
			<View style={styles.itemText}>
			<Text style={styles.itemTitle}>Medicina</Text>
			<Text style={styles.itemDesc}>Serviços medicos</Text>
			<View style={styles.progressBg}>
			<View
			style={[
				styles.progressFill,
				{ width: '80%', backgroundColor: '#934AA5' },
			]}
			/>
			</View>
			</View>
			</View>
			
			<View style={styles.item}>
			<View style={styles.thumb}>
			<Text style={styles.thumbText}>5</Text>
			</View>
			<View style={styles.itemText}>
			<Text style={styles.itemTitle}>Compras</Text>
			<Text style={styles.itemDesc}>
			Varias formas de comprar itens de casa
			</Text>
			<View style={styles.progressBg}>
			<View
			style={[
				styles.progressFill,
				{ width: '10%', backgroundColor: '#4AA58A' },
			]}
			/>
			</View>
			</View>
			</View>
			</View>
			</View>
			</View>
			);
}

const styles = StyleSheet.create({
	screen: {
		flex: 1,
		backgroundColor: '#F2C94C',
		padding: 8,
	},
	
	header: {
		backgroundColor: '#4A6FA5',
		borderRadius: 20,
		padding: 16,
		marginBottom: 8,
	},
	
	avatar: {
		width: 40,
		height: 40,
		borderRadius: 20,
		backgroundColor: '#FFFFFF55',
		marginBottom: 10,
	},
	
	headerText: {
		color: 'white',
		fontSize: 14,
	},
	
	card: {
		flex: 1,
		backgroundColor: 'white',
		borderRadius: 24,
		padding: 16,
		justifyContent: 'flex-start',
	},
	
	title: {
		fontWeight: 'bold',
		fontSize: 16,
		marginBottom: 18,
	},
	
	iconRow: {
		flexDirection: 'row',
		justifyContent: 'space-between',
		marginBottom: 22,
	},
	
	iconBox: {
		width: 60,
		height: 60,
		borderRadius: 16,
		alignItems: 'center',
		justifyContent: 'center',
	},
	
	iconImage: {
		width: 28,
		height: 28,
		resizeMode: 'contain',
	},
	
	subtitle: {
		fontWeight: 'bold',
		fontSize: 15,
		marginBottom: 18,
		color: '#4A6FA5',
	},
	
	contentArea: {
		flex: 1,
		justifyContent: 'flex-start',
	},
	
	item: {
		flexDirection: 'row',
		marginBottom: 24,
		alignItems: 'center',
	},
	
	thumb: {
		width: 90,
		height: 76,
		borderRadius: 16,
		backgroundColor: '#A7BED3',
		alignItems: 'center',
		justifyContent: 'center',
		marginRight: 14,
	},
	
	thumbText: {
		fontSize: 16,
		color: '#000',
	},
	
	itemText: {
		flex: 1,
		justifyContent: 'center',
	},
	
	itemTitle: {
		fontWeight: 'bold',
		fontSize: 12,
		marginBottom: 2,
	},
	
	itemDesc: {
		fontSize: 11,
		color: '#666',
		marginBottom: 8,
	},
	
	progressBg: {
		height: 10,
		backgroundColor: '#D9D9D9',
		borderRadius: 8,
		overflow: 'hidden',
	},
	
	progressFill: {
		height: '100%',
		borderRadius: 8,
	},
});
