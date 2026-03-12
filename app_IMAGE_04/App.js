import React from 'react';
import {
	SafeAreaView,
	View,
	Text,
	StyleSheet,
	Image,
	TouchableOpacity,
	StatusBar,
} from 'react-native';

export default function App() {
	return (
			<SafeAreaView style={styles.safeArea}>
			<StatusBar barStyle="dark-content" backgroundColor="#F5F5F5" />
			<View style={styles.container}>
			<View style={styles.topContent}>
			<Image
			source={require('./assets/Magic-The-Gathering-Logo-1993.png')}
			style={styles.logo}
			resizeMode="contain"
			/>
			
			<Text style={styles.title}>Bem-vindo(a) ao universo de Magic!</Text>
			
			<Text style={styles.description}>
			Magic: The Gathering foi criado em 1993 por Richard Garfield e é
			considerado o primeiro grande jogo de cartas colecionáveis do
			mundo. Combinando estratégia, fantasia e construção de decks,
			o jogo conquistou milhões de jogadores ao longo das décadas,
			tornando-se um marco na história dos games de mesa.
			</Text>
			
			<View style={styles.buttonRow}>
			<TouchableOpacity style={styles.skipButton} activeOpacity={0.8}>
			<Text style={styles.skipButtonText}>Pular</Text>
			</TouchableOpacity>
			
			<TouchableOpacity style={styles.nextButton} activeOpacity={0.8}>
			<Text style={styles.nextButtonText}>Próximo</Text>
			</TouchableOpacity>
			</View>
			</View>
			
			<View style={styles.pagination}>
			<View style={[styles.dot, styles.activeDot]} />
			<View style={styles.dot} />
			<View style={styles.dot} />
			</View>
			</View>
			</SafeAreaView>
			);
}

const PRIMARY_COLOR = '#2F80ED';
const BACKGROUND_COLOR = '#F5F5F5';
const TEXT_COLOR = '#1F1F1F';
const SUBTEXT_COLOR = '#7A7A7A';

const styles = StyleSheet.create({
	safeArea: {
		flex: 1,
		backgroundColor: BACKGROUND_COLOR,
	},
	
	container: {
		flex: 1,
		backgroundColor: BACKGROUND_COLOR,
		justifyContent: 'space-between',
		paddingHorizontal: 28,
		paddingTop: 20,
		paddingBottom: 36,
	},
	
	topContent: {
		alignItems: 'center',
		marginTop: 10,
	},
	
	logo: {
		width: 260,
		height: 220,
		marginTop: 30,
		marginBottom: 30,
	},
	
	title: {
		width: '100%',
		fontSize: 24,
		fontWeight: '700',
		color: TEXT_COLOR,
		textAlign: 'left',
		lineHeight: 32,
		marginBottom: 18,
	},
	
	description: {
		width: '100%',
		fontSize: 17,
		color: SUBTEXT_COLOR,
		textAlign: 'left',
		lineHeight: 28,
		marginBottom: 40,
	},
	
	buttonRow: {
		width: '100%',
		flexDirection: 'row',
		justifyContent: 'space-between',
		alignItems: 'center',
	},
	
	skipButton: {
		width: '42%',
		height: 56,
		borderRadius: 30,
		borderWidth: 2,
		borderColor: '#D6E4FF',
		backgroundColor: 'transparent',
		justifyContent: 'center',
		alignItems: 'center',
	},
	
	skipButtonText: {
		fontSize: 20,
		fontWeight: '500',
		color: PRIMARY_COLOR,
	},
	
	nextButton: {
		width: '50%',
		height: 56,
		borderRadius: 30,
		backgroundColor: PRIMARY_COLOR,
		justifyContent: 'center',
		alignItems: 'center',
		elevation: 3,
		shadowColor: '#000',
		shadowOffset: { width: 0, height: 2 },
		shadowOpacity: 0.12,
		shadowRadius: 4,
	},
	
	nextButtonText: {
		fontSize: 20,
		fontWeight: '600',
		color: '#FFFFFF',
	},
	
	pagination: {
		flexDirection: 'row',
		justifyContent: 'center',
		alignItems: 'center',
		marginBottom: 6,
	},
	
	dot: {
		width: 10,
		height: 10,
		borderRadius: 5,
		backgroundColor: '#D9D9D9',
		marginHorizontal: 5,
	},
	
	activeDot: {
		backgroundColor: PRIMARY_COLOR,
		width: 12,
		height: 12,
		borderRadius: 6,
	},
});
