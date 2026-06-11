import 'react-native-gesture-handler';

import { StatusBar } from 'expo-status-bar';
import { NavigationContainer } from '@react-navigation/native';
import {
  DrawerContentScrollView,
  DrawerItem,
  createDrawerNavigator,
} from '@react-navigation/drawer';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { createStackNavigator } from '@react-navigation/stack';
import { MaterialCommunityIcons } from '@expo/vector-icons';
import { Text, View } from 'react-native';

import Tela1 from './src/screens/Tela1';
import Tela2 from './src/screens/Tela2';
import Tela3 from './src/screens/Tela3';
import Tela4 from './src/screens/Tela4';
import Tela5 from './src/screens/Tela5';
import Tela6 from './src/screens/Tela6';
import Tela7 from './src/screens/Tela7';
import Tela8 from './src/screens/Tela8';
import Tela9 from './src/screens/Tela9';
import Tela10 from './src/screens/Tela10';
import styles, { screenColors } from './src/styles/styles';

const Tab = createBottomTabNavigator();
const Stack = createStackNavigator();
const Drawer = createDrawerNavigator();

function Flow2Stack() {
  return (
    <Stack.Navigator
      screenOptions={{
        headerStyle: { backgroundColor: screenColors['2'] },
        headerTintColor: '#ffffff',
        headerTitleStyle: { fontWeight: '700' },
        headerTitle: '',
      }}
    >
      <Stack.Screen name="Tela 2" component={Tela2} />
      <Stack.Screen
        name="Tela 3"
        component={Tela3}
        options={{
          headerStyle: { backgroundColor: screenColors['3'] },
          headerBackTitle: 'Tela 2',
        }}
      />
    </Stack.Navigator>
  );
}

function Flow8Stack() {
  return (
    <Stack.Navigator
      screenOptions={{
        headerStyle: { backgroundColor: screenColors['8'] },
        headerTintColor: '#ffffff',
        headerTitleStyle: { fontWeight: '700' },
        headerTitle: '',
      }}
    >
      <Stack.Screen name="Tela 8" component={Tela8} />
      <Stack.Screen
        name="Tela 9"
        component={Tela9}
        options={{
          headerStyle: { backgroundColor: screenColors['9'] },
          headerBackTitle: 'Tela 8',
        }}
      />
      <Stack.Screen
        name="Tela 10"
        component={Tela10}
        options={{
          headerStyle: { backgroundColor: screenColors['10'] },
          headerBackTitle: 'Tela 9',
        }}
      />
    </Stack.Navigator>
  );
}

function DrawerMenuContent(props) {
  const currentRoute = props.state.routeNames[props.state.index];

  return (
    <DrawerContentScrollView
      {...props}
      contentContainerStyle={styles.drawerContent}
    >
      <View style={styles.drawerHeader}>
        <Text style={styles.drawerHeaderTitle}>Tela 5</Text>
        <Text style={styles.drawerHeaderText}>Drawer para 6, 7 e 8</Text>
      </View>

      <DrawerItem
        label="Tela 6"
        focused={currentRoute === 'Tela 6'}
        activeTintColor="#0f766e"
        activeBackgroundColor="#d7f3ef"
        inactiveTintColor="#46615d"
        icon={({ color, size }) => (
          <MaterialCommunityIcons name="numeric-6-circle" size={size} color={color} />
        )}
        onPress={() => props.navigation.navigate('Tela 6')}
      />
      <DrawerItem
        label="Tela 7"
        focused={currentRoute === 'Tela 7'}
        activeTintColor="#0f766e"
        activeBackgroundColor="#d7f3ef"
        inactiveTintColor="#46615d"
        icon={({ color, size }) => (
          <MaterialCommunityIcons name="numeric-7-circle" size={size} color={color} />
        )}
        onPress={() => props.navigation.navigate('Tela 7')}
      />
      <DrawerItem
        label="Tela 8"
        focused={currentRoute === 'Tela 8'}
        activeTintColor="#0f766e"
        activeBackgroundColor="#d7f3ef"
        inactiveTintColor="#46615d"
        icon={({ color, size }) => (
          <MaterialCommunityIcons name="numeric-8-circle" size={size} color={color} />
        )}
        onPress={() => props.navigation.navigate('Tela 8')}
      />
    </DrawerContentScrollView>
  );
}

function Flow5Drawer() {
  return (
    <Drawer.Navigator
      initialRouteName="Tela 5"
      drawerContent={(props) => <DrawerMenuContent {...props} />}
      screenOptions={{
        headerStyle: { backgroundColor: screenColors['5'] },
        headerTintColor: '#ffffff',
        headerTitleStyle: { fontWeight: '700' },
        headerTitle: '',
        drawerType: 'slide',
        drawerStyle: { backgroundColor: '#f8fffd', width: 280 },
        sceneStyle: { backgroundColor: '#f8fffd' },
      }}
    >
      <Drawer.Screen name="Tela 5" component={Tela5} />
      <Drawer.Screen
        name="Tela 6"
        component={Tela6}
        options={{
          headerStyle: { backgroundColor: screenColors['6'] },
        }}
      />
      <Drawer.Screen
        name="Tela 7"
        component={Tela7}
        options={{
          headerStyle: { backgroundColor: screenColors['7'] },
        }}
      />
      <Drawer.Screen
        name="Tela 8"
        component={Flow8Stack}
        options={{
          headerShown: false,
        }}
      />
    </Drawer.Navigator>
  );
}

function TabFlow() {
  return (
    <Tab.Navigator
      initialRouteName="Tela 1"
      screenOptions={({ route }) => ({
        headerShown: false,
        tabBarActiveTintColor: '#111827',
        tabBarInactiveTintColor: '#6b7280',
        tabBarStyle: { height: 66, paddingTop: 6, paddingBottom: 8 },
        tabBarIcon: ({ color, size }) => {
          const icons = {
            'Tela 1': 'numeric-1-circle',
            'Tela 2': 'numeric-2-circle',
            'Tela 4': 'numeric-4-circle',
            'Tela 5': 'numeric-5-circle',
          };

          return (
            <MaterialCommunityIcons
              name={icons[route.name]}
              size={size}
              color={color}
            />
          );
        },
      })}
    >
      <Tab.Screen name="Tela 1" component={Tela1} />
      <Tab.Screen name="Tela 2" component={Flow2Stack} />
      <Tab.Screen name="Tela 4" component={Tela4} />
      <Tab.Screen name="Tela 5" component={Flow5Drawer} />
    </Tab.Navigator>
  );
}

export default function App() {
  return (
    <NavigationContainer>
      <StatusBar style="light" />
      <TabFlow />
    </NavigationContainer>
  );
}
