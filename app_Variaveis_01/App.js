import React from 'react';
import { Text, View } from 'react-native';

function App() {
	const TITULO = 'VARIÁVEIS EM REACT NATIVE';
	const PARAGRAFO =
	'Variáveis são espaços de memória do computador destinados a dados que são manipulados e alterados durante a execução de um algoritmo. Logo, para que o resultado seja o esperado, é preciso considerar o tipo de dados que será armazenado e também definir o nome das variáveis.';
	const RODAPE1 = 'Bruno Schmaiske Quoos';
	const RODAPE2 = '2026';
	
	return (
			<View
			style={{
				flex: 1,
				backgroundColor: 'powderblue',
				paddingVertical: 30,
				paddingHorizontal: 20,
			}}
			>
			<View
			style={{
				flexDirection: 'column',
				height: '20%',
				width: '100%',
				backgroundColor: 'skyblue',
				justifyContent: 'center',
			}}
			>
			<Text
			style={{
				fontSize: 26,
				textAlign: 'center',
				fontWeight: 'bold',
			}}
			>
			{TITULO}
			</Text>
			</View>
			
			<View
			style={{
				height: '70%',
				marginTop: 10,
				backgroundColor: 'skyblue',
				padding: 10,
				justifyContent: 'center',
			}}
			>
			<Text style={{ fontSize: 20, textAlign: 'justify' }}>
			{PARAGRAFO}
			</Text>
			</View>
			
			<View
			style={{
				height: '10%',
				flexDirection: 'row',
				justifyContent: 'space-around',
				backgroundColor: 'skyblue',
				marginTop: 10,
				alignItems: 'center',
			}}
			>
			<Text style={{ fontSize: 25, fontWeight: 'bold', color: 'red' }}>
			{RODAPE1}
			</Text>
			<Text style={{ fontSize: 30, fontStyle: 'italic' }}>
			{RODAPE2}
			</Text>
			</View>
			</View>
			);
}

export default App;
