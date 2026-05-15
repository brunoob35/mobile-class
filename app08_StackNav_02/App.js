import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import Principal from "./src/Telas/Principal";
import Luffy from "./src/Telas/Luffy";
import Buggy from "./src/Telas/Buggy";
import Shanks from "./src/Telas/Shanks";
import BarbaNegra from "./src/Telas/BarbaNegra";

const Stack = createNativeStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator
        initialRouteName="Principal"
        screenOptions={{
          headerStyle: { backgroundColor: "#8b0000" },
          headerTintColor: "#f8e9b0",
          headerTitleStyle: { fontWeight: "700" },
          contentStyle: { backgroundColor: "#06142b" },
        }}
      >
        <Stack.Screen name="Principal" component={Principal} options={{ title: "One Piece" }} />
        <Stack.Screen name="Luffy" component={Luffy} />
        <Stack.Screen name="Buggy" component={Buggy} />
        <Stack.Screen name="Shanks" component={Shanks} />
        <Stack.Screen
          name="Barba Negra"
          component={BarbaNegra}
          options={{ title: "Barba Negra" }}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
