import React from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet } from 'react-native';
import { Feather } from '@expo/vector-icons';

export default function Tela2() {
	return (
			<View style={styles.container}>
			{/* Elementos decorativos do topo */}
			<View style={styles.bgCircle1} />
			<View style={styles.bgCircle2} />
			<View style={styles.bgCircle3} />
			<View style={styles.bgCircle4} />
			<View style={styles.ring1} />
			<View style={styles.ring2} />
			
			{/* Ícones do topo */}
			<View style={styles.topIcons}>
			<Feather name="chevron-left" size={24} color="#8fdde8" />
			<Feather name="search" size={20} color="#8fdde8" />
			</View>
			
			{/* Avatar */}
			<View style={styles.avatarArea}>
			<View style={styles.avatarHead} />
			<View style={styles.avatarHair} />
			<View style={styles.hairTuft} />
			<View style={styles.earLeft} />
			<View style={styles.earRight} />
			<View style={styles.eyeLeft} />
			<View style={styles.eyeRight} />
			<View style={styles.nose} />
			<View style={styles.mouth} />
			<View style={styles.body} />
			<View style={styles.neck} />
			</View>
			
			{/* Card branco */}
			<View style={styles.card}>
			<Text style={styles.title}>Lorem ipsum dolor</Text>
			
			<Text style={styles.description}>
			Lorem ipsum dolor sit amet, consectetur diam
			</Text>
			<Text style={styles.description}>
			adipiscing elit, sed diam nonummy nibh euismod
			</Text>
			<Text style={styles.description}>
			tincidunt ut laoreet dolore magna trwonummy.
			</Text>
			
			<View style={styles.priceBox}>
			<Text style={styles.price}>$120.00</Text>
			<View style={styles.priceUnderline} />
			</View>
			
			<TextInput
			placeholder="ENTER TEXT HERE"
			placeholderTextColor="#9cb1c5"
			style={styles.input}
			/>
			
			<TouchableOpacity style={styles.donateButton} activeOpacity={0.85}>
			<Text style={styles.donateText}>DONATE</Text>
			</TouchableOpacity>
			</View>
			</View>
			);
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: '#2fc5ea',
		borderRadius: 34,
		overflow: 'hidden',
		paddingTop: 16,
		alignItems: 'center',
	},
	
	bgCircle1: {
		position: 'absolute',
		width: 110,
		height: 110,
		borderRadius: 55,
		backgroundColor: '#6eddf3',
		left: -12,
		top: -10,
		opacity: 0.65,
	},
	
	bgCircle2: {
		position: 'absolute',
		width: 84,
		height: 84,
		borderRadius: 42,
		backgroundColor: '#35c2df',
		right: 54,
		top: 8,
		opacity: 0.9,
	},
	
	bgCircle3: {
		position: 'absolute',
		width: 122,
		height: 122,
		borderRadius: 61,
		backgroundColor: '#53d4eb',
		right: -6,
		top: 34,
		opacity: 0.45,
	},
	
	bgCircle4: {
		position: 'absolute',
		width: 98,
		height: 98,
		borderRadius: 49,
		borderWidth: 10,
		borderColor: '#3ec8e6',
		right: 56,
		top: -24,
		opacity: 0.8,
	},
	
	ring1: {
		position: 'absolute',
		width: 42,
		height: 42,
		borderRadius: 21,
		borderWidth: 6,
		borderColor: '#56d6ea',
		left: 36,
		top: 148,
		opacity: 0.7,
	},
	
	ring2: {
		position: 'absolute',
		width: 20,
		height: 20,
		borderRadius: 10,
		borderWidth: 4,
		borderColor: '#5cdcf0',
		left: 52,
		top: 160,
		opacity: 0.9,
	},
	
	topIcons: {
		width: '100%',
		paddingHorizontal: 26,
		flexDirection: 'row',
		justifyContent: 'space-between',
		marginBottom: 8,
	},
	
	avatarArea: {
		width: 150,
		height: 140,
		alignItems: 'center',
		justifyContent: 'flex-start',
		marginTop: 2,
		marginBottom: 8,
	},
	
	avatarHead: {
		position: 'absolute',
		top: 18,
		width: 86,
		height: 86,
		borderRadius: 43,
		backgroundColor: '#f7f8f5',
		zIndex: 2,
	},
	
	avatarHair: {
		position: 'absolute',
		top: 10,
		width: 92,
		height: 54,
		borderTopLeftRadius: 44,
		borderTopRightRadius: 44,
		borderBottomLeftRadius: 18,
		borderBottomRightRadius: 18,
		backgroundColor: '#5d7fd3',
		zIndex: 3,
	},
	
	hairTuft: {
		position: 'absolute',
		top: 2,
		right: 42,
		width: 18,
		height: 28,
		borderTopLeftRadius: 12,
		borderTopRightRadius: 12,
		borderBottomLeftRadius: 8,
		borderBottomRightRadius: 8,
		backgroundColor: '#5d7fd3',
		transform: [{ rotate: '25deg' }],
		zIndex: 4,
	},
	
	earLeft: {
		position: 'absolute',
		top: 56,
		left: 25,
		width: 14,
		height: 22,
		borderRadius: 11,
		backgroundColor: '#f7f8f5',
		zIndex: 1,
	},
	
	earRight: {
		position: 'absolute',
		top: 56,
		right: 25,
		width: 14,
		height: 22,
		borderRadius: 11,
		backgroundColor: '#f7f8f5',
		zIndex: 1,
	},
	
	eyeLeft: {
		position: 'absolute',
		top: 64,
		left: 58,
		width: 6,
		height: 6,
		borderRadius: 3,
		backgroundColor: '#5f7cb1',
		zIndex: 5,
	},
	
	eyeRight: {
		position: 'absolute',
		top: 64,
		right: 58,
		width: 6,
		height: 6,
		borderRadius: 3,
		backgroundColor: '#5f7cb1',
		zIndex: 5,
	},
	
	nose: {
		position: 'absolute',
		top: 73,
		width: 10,
		height: 6,
		borderRadius: 3,
		backgroundColor: '#86a0cf',
		zIndex: 5,
	},
	
	mouth: {
		position: 'absolute',
		top: 82,
		width: 24,
		height: 10,
		borderBottomWidth: 3,
		borderColor: '#5f7cb1',
		borderRadius: 12,
		zIndex: 5,
	},
	
	neck: {
		position: 'absolute',
		top: 96,
		width: 18,
		height: 18,
		backgroundColor: '#f7f8f5',
		zIndex: 1,
	},
	
	body: {
		position: 'absolute',
		top: 108,
		width: 48,
		height: 56,
		borderTopLeftRadius: 22,
		borderTopRightRadius: 22,
		backgroundColor: '#5d7fd3',
		zIndex: 0,
	},
	
	card: {
		width: '86%',
		backgroundColor: '#f5f5f1',
		borderRadius: 30,
		paddingTop: 26,
		paddingHorizontal: 18,
		paddingBottom: 22,
		alignItems: 'center',
		marginTop: -6,
	},
	
	title: {
		fontSize: 22,
		fontWeight: '800',
		color: '#7392c1',
		marginBottom: 10,
	},
	
	description: {
		fontSize: 11,
		color: '#90a2b8',
		textAlign: 'center',
		lineHeight: 15,
		fontWeight: '700',
	},
	
	priceBox: {
		width: '72%',
		height: 72,
		backgroundColor: '#e8edf4',
		borderRadius: 20,
		marginTop: 26,
		marginBottom: 22,
		alignItems: 'center',
		justifyContent: 'center',
	},
	
	price: {
		fontSize: 31,
		fontWeight: '800',
		color: '#31cc62',
	},
	
	priceUnderline: {
		width: '70%',
		height: 4,
		borderRadius: 2,
		backgroundColor: '#9fb7cd',
		marginTop: 4,
	},
	
	input: {
		width: '100%',
		height: 80,
		borderRadius: 14,
		borderWidth: 2,
		borderColor: '#c5d3df',
		paddingHorizontal: 14,
		paddingTop: 12,
		fontSize: 12,
		color: '#6d7f96',
		marginBottom: 20,
		backgroundColor: '#f5f5f1',
	},
	
	donateButton: {
		width: '90%',
		height: 70,
		backgroundColor: '#2fce60',
		borderRadius: 22,
		alignItems: 'center',
		justifyContent: 'center',
	},
	
	donateText: {
		fontSize: 24,
		color: '#e9fff0',
		fontWeight: '300',
		letterSpacing: 1,
	},
});
