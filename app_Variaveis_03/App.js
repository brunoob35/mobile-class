import React from 'react';
import {
	SafeAreaView,
	View,
	Text,
	StyleSheet,
	TouchableOpacity,
	Image,
	StatusBar,
} from 'react-native';

export default function App() {
	const textos = {
		categoria: 'Technology',
		titulo: 'Project 0023R',
	descricao:
		'Sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet',
		valorMinimo: '$0',
		valorMaximo: '$110,000',
		opcao1: '$100',
		opcao2: '$50',
		opcao3: '$20',
		opcao4: '$10',
		legenda1: 'Lorem ipsum dolor',
		legenda2: 'Lorem ipsum dolor',
		legenda3: 'Lorem ipsum dolor',
		legenda4: 'Lorem ipsum dolor',
	};
	
	const cores = {
		fundoTela: '#2F5FB3',
		fundoCard: '#FFFFFF',
		fundoImagem: '#F4A300',
		fundoBotao: '#13D6B3',
		textoPrincipal: '#3D5FA8',
		textoSecundario: '#9AA8BF',
		textoHeader: '#DCE6F7',
		barraFundo: '#D7E2F2',
		barraProgresso1: '#14D6B2',
		barraProgresso2: '#4B79C9',
		branco: '#FFFFFF',
		sombra: '#000000',
	};
	
	const tamanhos = {
		categoria: 16,
		titulo: 22,
		descricao: 15,
		valores: 16,
		botao: 18,
		legenda: 13,
	};
	
	return (
			<SafeAreaView style={[styles.container, { backgroundColor: cores.fundoTela }]}>
			<StatusBar barStyle="light-content" backgroundColor={cores.fundoTela} />
			
			<View style={styles.header}>
			<View style={styles.avatar} />
			<Text
			style={[
				styles.categoria,
				{
					color: cores.textoHeader,
					fontSize: tamanhos.categoria,
				},
			]}
			>
			{textos.categoria}
			</Text>
			<View style={styles.notificacaoContainer}>
			<Text style={styles.iconeSino}>🔔</Text>
			<View style={styles.badge}>
			<Text style={styles.badgeTexto}>3</Text>
			</View>
			</View>
			</View>
			
			<View style={[styles.card, { backgroundColor: cores.fundoCard }]}>
			<View style={[styles.imagemArea, { backgroundColor: cores.fundoImagem }]}>
			<Image
			source={{ uri: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=80' }}
			style={styles.imagem}
			/>
			
			<View style={styles.playOverlay}>
			<Text style={styles.playIcon}>▶</Text>
			</View>
			</View>
			
			<View style={styles.conteudo}>
			<Text
			style={[
				styles.titulo,
				{
					color: cores.textoPrincipal,
					fontSize: tamanhos.titulo,
				},
			]}
			>
			{textos.titulo}
			</Text>
			
			<Text
			style={[
				styles.descricao,
				{
					color: cores.textoSecundario,
					fontSize: tamanhos.descricao,
				},
			]}
			>
			{textos.descricao}
			</Text>
			
			<View style={[styles.barraContainer, { backgroundColor: cores.barraFundo }]}>
			<View
			style={[
				styles.barraParte1,
				{ backgroundColor: cores.barraProgresso1 },
			]}
			/>
			<View
			style={[
				styles.barraParte2,
				{ backgroundColor: cores.barraProgresso2 },
			]}
			/>
			</View>
			
			<View style={styles.valoresContainer}>
			<Text
			style={[
				styles.valorTexto,
				{ color: cores.textoSecundario, fontSize: tamanhos.valores },
			]}
			>
			{textos.valorMinimo}
			</Text>
			<Text
			style={[
				styles.valorTexto,
				{ color: cores.textoSecundario, fontSize: tamanhos.valores },
			]}
			>
			{textos.valorMaximo}
			</Text>
			</View>
			
			<View style={styles.gridBotoes}>
			<View style={styles.coluna}>
			<TouchableOpacity
			style={[styles.botaoValor, { backgroundColor: cores.fundoBotao }]}
			>
			<Text
			style={[
				styles.botaoTexto,
				{ color: cores.branco, fontSize: tamanhos.botao },
			]}
			>
			{textos.opcao1}
			</Text>
			</TouchableOpacity>
			<Text
			style={[
				styles.legenda,
				{ color: cores.textoSecundario, fontSize: tamanhos.legenda },
			]}
			>
			{textos.legenda1}
			</Text>
			</View>
			
			<View style={styles.coluna}>
			<TouchableOpacity
			style={[styles.botaoValor, { backgroundColor: cores.fundoBotao }]}
			>
			<Text
			style={[
				styles.botaoTexto,
				{ color: cores.branco, fontSize: tamanhos.botao },
			]}
			>
			{textos.opcao2}
			</Text>
			</TouchableOpacity>
			<Text
			style={[
				styles.legenda,
				{ color: cores.textoSecundario, fontSize: tamanhos.legenda },
			]}
			>
			{textos.legenda2}
			</Text>
			</View>
			
			<View style={styles.coluna}>
			<TouchableOpacity
			style={[styles.botaoValor, { backgroundColor: cores.fundoBotao }]}
			>
			<Text
			style={[
				styles.botaoTexto,
				{ color: cores.branco, fontSize: tamanhos.botao },
			]}
			>
			{textos.opcao3}
			</Text>
			</TouchableOpacity>
			<Text
			style={[
				styles.legenda,
				{ color: cores.textoSecundario, fontSize: tamanhos.legenda },
			]}
			>
			{textos.legenda3}
			</Text>
			</View>
			
			<View style={styles.coluna}>
			<TouchableOpacity
			style={[styles.botaoValor, { backgroundColor: cores.fundoBotao }]}
			>
			<Text
			style={[
				styles.botaoTexto,
				{ color: cores.branco, fontSize: tamanhos.botao },
			]}
			>
			{textos.opcao4}
			</Text>
			</TouchableOpacity>
			<Text
			style={[
				styles.legenda,
				{ color: cores.textoSecundario, fontSize: tamanhos.legenda },
			]}
			>
			{textos.legenda4}
			</Text>
			</View>
			</View>
			</View>
			</View>
			</SafeAreaView>
			);
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		paddingTop: 12,
	},
	header: {
		flexDirection: 'row',
		alignItems: 'center',
		paddingHorizontal: 18,
		paddingBottom: 18,
	},
	avatar: {
		width: 36,
		height: 36,
		borderRadius: 18,
		backgroundColor: '#D9E4F5',
	},
	categoria: {
		marginLeft: 12,
		fontWeight: '600',
		flex: 1,
	},
	notificacaoContainer: {
		width: 34,
		height: 34,
		alignItems: 'center',
		justifyContent: 'center',
	},
	iconeSino: {
		fontSize: 18,
	},
	badge: {
		position: 'absolute',
		top: 0,
		right: 0,
		width: 18,
		height: 18,
		borderRadius: 9,
		backgroundColor: '#FF3B5C',
		alignItems: 'center',
		justifyContent: 'center',
	},
	badgeTexto: {
		color: '#FFFFFF',
		fontSize: 10,
		fontWeight: 'bold',
	},
	card: {
		flex: 1,
		marginHorizontal: 16,
		borderTopLeftRadius: 28,
		borderTopRightRadius: 28,
		borderBottomLeftRadius: 40,
		borderBottomRightRadius: 40,
		overflow: 'hidden',
	},
	imagemArea: {
		height: 260,
		justifyContent: 'center',
		alignItems: 'center',
	},
	imagem: {
		width: '100%',
		height: '100%',
		opacity: 0.55,
	},
	playOverlay: {
		position: 'absolute',
		width: 95,
		height: 95,
		borderRadius: 47.5,
		backgroundColor: 'rgba(255,255,255,0.65)',
		alignItems: 'center',
		justifyContent: 'center',
	},
	playIcon: {
		fontSize: 42,
		color: '#FFFFFF',
		marginLeft: 6,
	},
	conteudo: {
		paddingHorizontal: 22,
		paddingTop: 26,
		paddingBottom: 20,
	},
	titulo: {
		fontWeight: '800',
		marginBottom: 12,
	},
	descricao: {
		lineHeight: 22,
		marginBottom: 24,
	},
	barraContainer: {
		width: '100%',
		height: 18,
		borderRadius: 9,
		flexDirection: 'row',
		overflow: 'hidden',
		marginBottom: 10,
	},
	barraParte1: {
		width: '76%',
		borderRadius: 9,
	},
	barraParte2: {
		flex: 1,
	},
	valoresContainer: {
		flexDirection: 'row',
		justifyContent: 'space-between',
		marginBottom: 28,
	},
	valorTexto: {
		fontWeight: '500',
	},
	gridBotoes: {
		flexDirection: 'row',
		flexWrap: 'wrap',
		justifyContent: 'space-between',
		rowGap: 18,
	},
	coluna: {
		width: '47%',
	},
	botaoValor: {
		height: 76,
		borderRadius: 14,
		alignItems: 'center',
		justifyContent: 'center',
		marginBottom: 10,
	},
	botaoTexto: {
		fontWeight: '800',
	},
	legenda: {
		textAlign: 'left',
	},
});
