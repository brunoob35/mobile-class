import React from "react";
import { View, Text } from "react-native-web";

/*
      DESAFIO 05
      Autor: Bruno S Quoos
      Data: 26/02/2026
*/

function App(){
  return (
    <View style={{ backgroundColor: 'rgb(33, 13, 121)', height: '100%', width: '100%' }}>

      {/* View Laranja */}
      <View style={{ backgroundColor: 'orange', height: '20%', width: '100%' }}>
        <Text>Props de Estilo</Text>
        <Text>Autor: Bruno S Quoos</Text>
        <Text>Data: 26/02/2026</Text>
      </View>

      {/* View Amarela */}
      <View style={{ backgroundColor: 'yellow', height: '70%', width: 100 }}>
        <Text style={{ color: 'red' }}>Props de Estilo</Text>
        <Text>Autor: Bruno S Quoos</Text>
        <Text>Data: 26/02/2026</Text>
      </View>

      {/* View Vermelha */}
      <View style={{ backgroundColor: 'red', height: '10%', width: 200 }}>
        <Text>Props de Estilo</Text>
        <Text>Autor: Bruno S Quoos</Text>
        <Text>Data: 26/02/2026</Text>
      </View>

    </View>
  );
}

export default App;
