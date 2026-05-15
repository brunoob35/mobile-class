import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import Principal from "./src/Telas/Principal";
import Tela01 from "./src/Telas/Tela01";
import Tela02 from "./src/Telas/Tela02";
import Tela03 from "./src/Telas/Tela03";

const Stack = createNativeStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Principal">
        <Stack.Screen name="Principal" component={Principal} />
        <Stack.Screen name="Tela01" component={Tela01} options={{ title: "Tela01" }} />
        <Stack.Screen name="Tela02" component={Tela02} options={{ title: "Tela02" }} />
        <Stack.Screen name="Tela03" component={Tela03} options={{ title: "Tela03" }} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
