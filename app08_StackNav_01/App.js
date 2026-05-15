import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import Principal from "./src/Telas/Principal";
import Carnaval from "./src/Telas/Carnaval";
import FestaJunina from "./src/Telas/FestaJunina";
import Halloween from "./src/Telas/Halloween";

const Stack = createNativeStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator
        initialRouteName="Principal"
        screenOptions={{
          headerStyle: { backgroundColor: "#8b0000" },
          headerTintColor: "#fff",
          headerTitleStyle: { fontWeight: "700" },
          contentStyle: { backgroundColor: "#e9e9e9" },
        }}
      >
        <Stack.Screen name="Principal" component={Principal} />
        <Stack.Screen name="Carnaval" component={Carnaval} />
        <Stack.Screen name="Festa Junina" component={FestaJunina} />
        <Stack.Screen name="Halloween" component={Halloween} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
