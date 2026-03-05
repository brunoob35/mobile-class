import React from 'react';
import { View, Text } from 'react-native';

function App() {
  return (
    <View style={{
      flex: 1, padding: 30, backgroundColor: 'green',
    }}>
      <Text style={{
        backgroundColor: 'black', color: 'red', fontSize: 30,
        textAlign: 'center', marginBottom: 50
      }}>Poema</Text>

      <Text style={{ fontSize: 30 }}>
        <Text>Ó mar salgado... {'\n'}quanto do teu sal </Text>

        <Text style={{ fontFamily: 'Bernard MT Condensed' }}>
          são lágrimas de Portugal!{'\n'}
        </Text>

        <Text style={{ fontSize: 25, fontWeight: "bold" }}>
          Quantos filhos em vão rezaram!{'\n'}
        </Text>

        <Text style={{ fontSize: 20, fontStyle: 'italic' }}>
          Quantas noivas ficaram por casar?{'\n'}
        </Text>

        <Text>Pra que fosses nosso, ó mar!{'\n'}</Text>
        <Text>...{'\n'}</Text>

        <Text>
          Valeu a pena? {'\n'}Tudo vale a pena{'\n'}
        </Text>

        <Text>Se a alma não é pequena!</Text>
      </Text>

      <Text style={{
        backgroundColor: 'black',
        color: 'red',
        fontSize: 30,
        textAlign: 'center',
        marginTop: 50,
        fontFamily: 'Brush Script MT'
      }}>
        Fernando Pessoa {'\n'}(1888-1935)
      </Text>
    </View>
  );
}

export default App;
