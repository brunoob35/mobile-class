import React from 'react';
import { View } from 'react-native';

export default function App() {
  return (
    <View style={{ flex: 1, padding: 50, backgroundColor: 'orange', flexDirection: 'row' }}>

      <View style={{ width: 70, height:70, backgroundColor: 'powderblue' }} />

      <View style={{ width: 70, height:70, backgroundColor: 'skyblue' }} />

      <View style={{ width: 70, height:70, backgroundColor: 'steelblue' }} />

    </View>
  );
}
