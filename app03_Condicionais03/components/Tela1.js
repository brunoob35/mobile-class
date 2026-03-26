import React from 'react';
import { View, Text, StyleSheet, TextInput } from 'react-native';
import { Feather, FontAwesome5, MaterialCommunityIcons } from '@expo/vector-icons';

export default function Tela1() {
	return (
			<View style={styles.container}>
			{/* Topo */}
			<View style={styles.topBar}>
			<View style={styles.leftCircle} />
			
			<View style={styles.searchWrapper}>
			<Feather name="search" size={18} color="#f3f6fb" style={styles.searchIcon} />
			<TextInput
			placeholder="Search"
			placeholderTextColor="#edf3fb"
			style={styles.searchInput}
			/>
			</View>
			</View>
			
			{/* Filtros */}
			<View style={styles.filtersRow}>
			<View style={styles.educationTag}>
			<FontAwesome5 name="graduation-cap" size={12} color="#fff" />
			<Text style={styles.educationText}>Education</Text>
			</View>
			
			<View style={styles.iconButton}>
			<Feather name="plus" size={18} color="#fff" />
			</View>
			
			<View style={styles.iconButton}>
			<MaterialCommunityIcons name="source-branch" size={18} color="#fff" />
			</View>
			
			<View style={styles.iconButton}>
			<FontAwesome5 name="paw" size={15} color="#fff" />
			</View>
			</View>
			
			{/* Info superior */}
			<View style={styles.infoRow}>
			<Text style={styles.resultsText}>300 Results</Text>
			
			<View style={styles.newsBox}>
			<Text style={styles.newsText}>News</Text>
			<Feather name="chevron-down" size={16} color="#6f8eb1" />
			</View>
			</View>
			
			{/* Item 1 */}
			<View style={styles.itemRow}>
			<View style={styles.avatarCard}>
			<View style={styles.avatarCircle}>
			<Feather name="smile" size={30} color="#6580ca" />
			</View>
			</View>
			
			<View style={styles.itemContent}>
			<Text style={styles.itemTitle}>Lorem ipsum dolor sit</Text>
			<Text style={styles.itemDesc}>amet, consectetur</Text>
			<Text style={styles.itemDesc}>adipiscing elit, sed</Text>
			<Text style={styles.itemDesc}>diam nonummy nibh.</Text>
			
			<View style={styles.progressRow}>
			<View style={[styles.greenBar, { width: 100 }]} />
			<View style={[styles.blueBar, { width: 94 }]} />
			</View>
			</View>
			</View>
			
			{/* Item 2 */}
			<View style={styles.itemRow}>
			<View style={styles.avatarCard}>
			<View style={styles.avatarCircle}>
			<Feather name="smile" size={30} color="#6580ca" />
			</View>
			</View>
			
			<View style={styles.itemContent}>
			<Text style={styles.itemTitle}>Lorem ipsum dolor sit</Text>
			<Text style={styles.itemDesc}>amet, consectetur</Text>
			<Text style={styles.itemDesc}>adipiscing elit, sed</Text>
			<Text style={styles.itemDesc}>diam nonummy nibh.</Text>
			
			<View style={styles.progressRow}>
			<View style={[styles.greenBar, { width: 138 }]} />
			<View style={[styles.blueBar, { width: 52 }]} />
			</View>
			</View>
			</View>
			
			{/* Card grande */}
			<View style={styles.bigCard}>
			<View style={styles.bigCircleLeft} />
			<View style={styles.bigCircleRight} />
			<View style={styles.smallRing} />
			
			<FontAwesome5 name="graduation-cap" size={92} color="#fff" style={styles.capIcon} />
			</View>
			
			{/* Rodapé */}
			<View style={styles.bottomTexts}>
			<View style={styles.bottomBlock}>
			<Text style={styles.bottomText}>Lorem ipsum dolor</Text>
			<Text style={styles.bottomText}>sit amet, consecte-</Text>
			<Text style={styles.bottomText}>tuer adipiscing.</Text>
			</View>
			
			<View style={styles.bottomBlock}>
			<Text style={styles.bottomText}>Lorem ipsum dolor</Text>
			<Text style={styles.bottomText}>sit amet, consecte-</Text>
			<Text style={styles.bottomText}>tuer adipiscing.</Text>
			</View>
			</View>
			</View>
			);
}

const styles = StyleSheet.create({
	container: {
		backgroundColor: '#f5f5f4',
		borderRadius: 38,
		paddingTop: 18,
		paddingHorizontal: 18,
		paddingBottom: 18,
		flexShrink: 1,
	},
	
	topBar: {
		flexDirection: 'row',
		alignItems: 'center',
		marginBottom: 18,
	},
	
	leftCircle: {
		width: 42,
		height: 42,
		borderRadius: 21,
		backgroundColor: '#89addc',
		marginRight: 14,
	},
	
	searchWrapper: {
		flex: 1,
		height: 50,
		backgroundColor: '#7298cf',
		borderRadius: 25,
		flexDirection: 'row',
		alignItems: 'center',
		paddingHorizontal: 18,
	},
	
	searchIcon: {
		marginRight: 8,
	},
	
	searchInput: {
		flex: 1,
		color: '#fff',
		fontSize: 18,
		fontWeight: '700',
		paddingVertical: 0,
	},
	
	filtersRow: {
		flexDirection: 'row',
		alignItems: 'center',
		marginBottom: 22,
	},
	
	educationTag: {
		height: 50,
		backgroundColor: '#31c7d6',
		borderRadius: 25,
		flexDirection: 'row',
		alignItems: 'center',
		paddingHorizontal: 18,
		marginRight: 14,
	},
	
	educationText: {
		color: '#fff',
		fontSize: 18,
		fontWeight: '700',
		marginLeft: 10,
	},
	
	iconButton: {
		width: 50,
		height: 50,
		borderRadius: 25,
		backgroundColor: '#7298cf',
		alignItems: 'center',
		justifyContent: 'center',
		marginRight: 12,
	},
	
	infoRow: {
		flexDirection: 'row',
		justifyContent: 'space-between',
		alignItems: 'center',
		marginBottom: 20,
	},
	
	resultsText: {
		fontSize: 17,
		fontWeight: '700',
		color: '#93a7be',
	},
	
	newsBox: {
		flexDirection: 'row',
		alignItems: 'center',
	},
	
	newsText: {
		fontSize: 17,
		fontWeight: '700',
		color: '#6f8eb1',
		marginRight: 4,
	},
	
	itemRow: {
		flexDirection: 'row',
		marginBottom: 22,
	},
	
	avatarCard: {
		width: 94,
		height: 108,
		borderRadius: 18,
		backgroundColor: '#61b7e3',
		alignItems: 'center',
		justifyContent: 'center',
		marginRight: 18,
	},
	
	avatarCircle: {
		width: 62,
		height: 62,
		borderRadius: 31,
		backgroundColor: '#d6f2f7',
		alignItems: 'center',
		justifyContent: 'center',
	},
	
	itemContent: {
		flex: 1,
		paddingTop: 6,
	},
	
	itemTitle: {
		fontSize: 19,
		fontWeight: '800',
		color: '#7894b4',
		lineHeight: 24,
	},
	
	itemDesc: {
		fontSize: 17,
		fontWeight: '700',
		color: '#8a9fb7',
		lineHeight: 22,
	},
	
	progressRow: {
		flexDirection: 'row',
		alignItems: 'center',
		marginTop: 10,
	},
	
	greenBar: {
		height: 10,
		borderRadius: 8,
		backgroundColor: '#37c651',
		marginRight: 8,
	},
	
	blueBar: {
		height: 10,
		borderRadius: 8,
		backgroundColor: '#99bbe3',
	},
	
	bigCard: {
		height: 270,
		borderRadius: 24,
		backgroundColor: '#5da6db',
		marginTop: 8,
		marginBottom: 18,
		overflow: 'hidden',
		alignItems: 'center',
		justifyContent: 'center',
	},
	
	bigCircleLeft: {
		position: 'absolute',
		width: 150,
		height: 150,
		borderRadius: 75,
		backgroundColor: '#438fd7',
		left: -22,
		top: -8,
		opacity: 0.85,
	},
	
	bigCircleRight: {
		position: 'absolute',
		width: 190,
		height: 190,
		borderRadius: 95,
		backgroundColor: '#87cbe8',
		right: 18,
		top: 8,
		opacity: 0.35,
	},
	
	smallRing: {
		position: 'absolute',
		width: 46,
		height: 46,
		borderRadius: 23,
		borderWidth: 8,
		borderColor: '#2e82df',
		left: 44,
		bottom: 28,
		opacity: 0.7,
	},
	
	capIcon: {
		transform: [{ rotate: '-18deg' }],
	},
	
	bottomTexts: {
		flexDirection: 'row',
		justifyContent: 'space-between',
	},
	
	bottomBlock: {
		width: '43%',
	},
	
	bottomText: {
		fontSize: 15,
		fontWeight: '800',
		color: '#8a9eb5',
		lineHeight: 21,
	},
});
