import React from 'react';
import {
	SafeAreaView,
	View,
	Text,
	StyleSheet,
	Image,
	TouchableOpacity,
	Linking,
	Alert,
	StatusBar,
} from 'react-native';

export default function App() {
	const openInstagram = async () => {
		const url =
		'https://www.instagram.com/treehouse.english?igsh=NmYxdnc4MGR6Z2lz';
		
		const supported = await Linking.canOpenURL(url);
		
		if (supported) {
			await Linking.openURL(url);
		} else {
			Alert.alert('Erro', 'Não foi possível abrir o link do Instagram.');
		}
	};
	
	return (
			<SafeAreaView style={styles.safeArea}>
			<StatusBar barStyle="light-content" backgroundColor="#0D6E8A" />
			<View style={styles.container}>
			<View style={styles.topBar}>
			<Image
			source={require('./assets/logo_treehouse_white.png')}
			style={styles.topLogo}
			resizeMode="contain"
			/>
			</View>
			
			<View style={styles.lightBar} />
			
			<View style={styles.content}>
			<Image
			source={require('./assets/logo1_png_circle.png')}
			style={styles.centerLogo}
			resizeMode="contain"
			/>
			
			<Text style={styles.text}>
			Tree House, a melhor escola de inglês de Curitiba que vai até você.
			Saiba mais pelo instagram{' '}
			<Text style={styles.link} onPress={openInstagram}>
			@treehouse.english
			</Text>
			</Text>
			</View>
			
			<View style={styles.bottomBar} />
			</View>
			</SafeAreaView>
			);
}

const styles = StyleSheet.create({
	safeArea: {
		flex: 1,
		backgroundColor: '#0D6E8A',
	},
	
	container: {
		flex: 1,
		backgroundColor: '#FFFFFF',
	},
	
	topBar: {
		height: 85,
		backgroundColor: '#0D6E8A',
		justifyContent: 'center',
		alignItems: 'center',
		paddingHorizontal: 20,
	},
	
	topLogo: {
		width: 170,
		height: 180,
	},
	
	lightBar: {
		height: 36,
		backgroundColor: '#8FD1E3',
	},
	
	content: {
		flex: 1,
		alignItems: 'center',
		paddingHorizontal: 28,
		paddingTop: 40,
	},
	
	centerLogo: {
		width: 170,
		height: 170,
		marginBottom: 30,
	},
	
	text: {
		fontSize: 20,
		lineHeight: 34,
		textAlign: 'center',
		color: '#111111',
		fontWeight: '600',
		maxWidth: 280,
	},
	
	link: {
		color: '#0D6E8A',
		textDecorationLine: 'underline',
		fontWeight: '700',
	},
	
	bottomBar: {
		height: 55,
		backgroundColor: '#0D6E8A',
	},
});
