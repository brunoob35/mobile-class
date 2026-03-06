import React from 'react';
import { View, Text, Image } from 'react-native';

function App() {
	return (
			<View style={{ flex: 1, backgroundColor: 'orange', margin: 10 }}>
			
			<View style={{
				alignItems: 'center',
				backgroundColor: 'skyblue',
				flexDirection: 'column',
				paddingVertical: 20
			}}>
			<Text style={{ fontSize: 30, color: 'blue', marginBottom: 20 }}>
			Componente Image
			</Text>
			
			<Image
			source={require('./img/img1.png')}
			style={{ width: 200, height: 100, borderColor: 'black', borderWidth: 3 }}
			/>
			</View>
			
			<View style={{
				alignItems: 'center',
				backgroundColor: '#5f9ea0',
				flexDirection: 'row',
				paddingVertical: 20,
				paddingHorizontal: 10,
				justifyContent: 'space-around'
			}}>
			<Text style={{
				fontSize: 20,
				color: 'white',
				marginBottom: 20,
				width: '60%',
				textAlign: 'justify'
			}}>
			O react Native pode estilizar o componente Image de várias formas.
			</Text>
			
			<Image
			source={require('./img/img1.png')}
			style={{ width: 100, height: 100, borderColor: 'green', borderWidth: 5, borderRadius: 50 }}
			/>
			</View>
			
			<View style={{
				alignItems: 'center',
				backgroundColor: '#dcdcdc',
				flexDirection: 'row',
				paddingVertical: 20,
				paddingHorizontal: 10,
				justifyContent: 'space-around'
			}}>
			<Image
			source={require('./img/img2.png')}
			style={{
				width: 100,
				height: 100,
				borderColor: 'white',
				borderWidth: 2,
				borderTopLeftRadius: 50,
				marginHorizontal: 20
			}}
			/>
			
			<Text style={{
				fontSize: 15,
				color: 'gray',
				marginBottom: 20,
				width: '70%',
				textAlign: 'justify'
			}}>
			- Alterando o formato e a cor da borda; {'\n'}
			- Alterando as dimensões e o posicionamento; {'\n'}
			- Alterando margens e espaçamentos, etc...
			</Text>
			</View>
			
			{/* imagem google */}
			<View style={{
				width: '100%',
				position: 'absolute',
				bottom: 15,
				alignItems: 'center',
				backgroundColor: 'white',
				padding: 20
			}}>
			<Image
			source={{
				uri: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Google_Images_2015_logo.svg/1280px-Google_Images_2015_logo.svg.png'
			}}
			style={{ width: 330, height: 110 }}
			/>
			
			<View style={{ flexDirection: 'row' }}>
			<Text>Bruno S Quoos - 2026</Text>
			</View>
			</View>
			</View>
			);
}
export default App;
