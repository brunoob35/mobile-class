import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import Principal from "./src/Telas/Principal";
import Piratas from "./src/Telas/Piratas";
import Marinha from "./src/Telas/Marinha";
import ExercitoRevolucionario from "./src/Telas/ExercitoRevolucionario";

const Stack = createNativeStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator
        initialRouteName="Principal"
        screenOptions={{
          headerStyle: { backgroundColor: "#0f172a" },
          headerTintColor: "#facc15",
          headerTitleStyle: { fontWeight: "700" },
          contentStyle: { backgroundColor: "#03111f" },
        }}
      >
        <Stack.Screen name="Principal" component={Principal} options={{ title: "One Piece" }} />
        <Stack.Screen name="Piratas" component={Piratas} />
        <Stack.Screen name="Marinha" component={Marinha} />
        <Stack.Screen
          name="Exercito Revolucionario"
          component={ExercitoRevolucionario}
          options={{ title: "Exercito Revolucionario" }}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
