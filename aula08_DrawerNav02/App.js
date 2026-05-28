import { StatusBar } from 'expo-status-bar';
import { NavigationContainer } from '@react-navigation/native';
import { createDrawerNavigator } from '@react-navigation/drawer';
import { MaterialCommunityIcons } from '@expo/vector-icons';

import CustomDrawerContent from './src/components/CustomDrawerContent';
import AvaliacaoScreen from './src/screens/AvaliacaoScreen';
import CardapioScreen from './src/screens/CardapioScreen';
import LugaresScreen from './src/screens/LugaresScreen';
import PedidoScreen from './src/screens/PedidoScreen';

const Drawer = createDrawerNavigator();

export default function App() {
  return (
    <NavigationContainer>
      <StatusBar style="light" />
      <Drawer.Navigator
        drawerContent={(props) => <CustomDrawerContent {...props} />}
        screenOptions={{
          headerStyle: { backgroundColor: '#8c3b2a' },
          headerTintColor: '#fff8f0',
          headerTitleStyle: { fontWeight: '700' },
          sceneStyle: { backgroundColor: '#f7efe7' },
          drawerType: 'slide',
          drawerActiveTintColor: '#8c3b2a',
          drawerInactiveTintColor: '#7f6a5d',
          drawerActiveBackgroundColor: '#f4e2d3',
          drawerLabelStyle: { marginLeft: -12, fontSize: 15, fontWeight: '700' },
          drawerStyle: { backgroundColor: '#fff8f0', width: 290 },
        }}
      >
        <Drawer.Screen
          name="Cardapio"
          component={CardapioScreen}
          options={{
            title: 'Cardapio',
            drawerIcon: ({ color, size }) => (
              <MaterialCommunityIcons name="pizza" size={size} color={color} />
            ),
          }}
        />
        <Drawer.Screen
          name="Pizzarias"
          component={LugaresScreen}
          options={{
            title: 'Pizzarias',
            drawerIcon: ({ color, size }) => (
              <MaterialCommunityIcons
                name="storefront-outline"
                size={size}
                color={color}
              />
            ),
          }}
        />
        <Drawer.Screen
          name="Pedido"
          component={PedidoScreen}
          options={{
            title: 'Pedido',
            drawerIcon: ({ color, size }) => (
              <MaterialCommunityIcons
                name="silverware-fork-knife"
                size={size}
                color={color}
              />
            ),
          }}
        />
        <Drawer.Screen
          name="Avaliacao"
          component={AvaliacaoScreen}
          options={{
            title: 'Avaliacao',
            drawerIcon: ({ color, size }) => (
              <MaterialCommunityIcons name="star-outline" size={size} color={color} />
            ),
          }}
        />
      </Drawer.Navigator>
    </NavigationContainer>
  );
}
