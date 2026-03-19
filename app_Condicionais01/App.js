import React from 'react';
import { View, Text } from 'react-native';

function App(){
	
		//código JS
	let valor = 2;
	let Frase1 = "Bruno Lindo (Condição 1)";
	let Frase2 = "Bruno gatão (Condição Else)";
	let FraseFinal;
	
	if (valor == 1){
		FraseFinal = Frase1;
	} else {
		FraseFinal = Frase2;
	}
	
		//código JSX
	return(
		   <View>
		   <Text>{FraseFinal}</Text>
		   </View>
		   );
}

export default App;
