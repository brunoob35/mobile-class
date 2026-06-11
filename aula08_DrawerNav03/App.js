import 'react-native-gesture-handler';

import { StatusBar } from 'expo-status-bar';
import { NavigationContainer } from '@react-navigation/native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { createDrawerNavigator } from '@react-navigation/drawer';
import { MaterialCommunityIcons } from '@expo/vector-icons';

import CustomDrawerContent from './src/components/CustomDrawerContent';
import WorkoutScreen from './src/components/WorkoutScreen';
import workoutData from './src/data/workoutData';

const Drawer = createDrawerNavigator();
const Tab = createBottomTabNavigator();

function TreinoA() {
  return <WorkoutScreen treino={workoutData[0]} />;
}

function TreinoB() {
  return <WorkoutScreen treino={workoutData[1]} />;
}

function TreinoC() {
  return <WorkoutScreen treino={workoutData[2]} />;
}

function WorkoutTabs({ initialRouteName }) {
  return (
    <Tab.Navigator
      initialRouteName={initialRouteName}
      screenOptions={({ route }) => ({
        headerShown: false,
        tabBarActiveTintColor: '#1f3c34',
        tabBarInactiveTintColor: '#708090',
        tabBarStyle: { height: 66, paddingBottom: 8, paddingTop: 6 },
        tabBarIcon: ({ color, size }) => {
          const icons = {
            'Treino A': 'alpha-a-circle',
            'Treino B': 'alpha-b-circle',
            'Treino C': 'alpha-c-circle',
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
      <Tab.Screen name="Treino A" component={TreinoA} />
      <Tab.Screen name="Treino B" component={TreinoB} />
      <Tab.Screen name="Treino C" component={TreinoC} />
    </Tab.Navigator>
  );
}

function TabsComecandoEmA() {
  return <WorkoutTabs initialRouteName="Treino A" />;
}

function TabsComecandoEmB() {
  return <WorkoutTabs initialRouteName="Treino B" />;
}

function TabsComecandoEmC() {
  return <WorkoutTabs initialRouteName="Treino C" />;
}

export default function App() {
  return (
    <NavigationContainer>
      <StatusBar style="light" />
      <Drawer.Navigator
        initialRouteName="Acesso Treino A"
        drawerContent={(props) => <CustomDrawerContent {...props} />}
        screenOptions={{
          headerStyle: { backgroundColor: '#1f3c34' },
          headerTintColor: '#f3f4f6',
          headerTitleStyle: { fontWeight: '700' },
          drawerType: 'slide',
          drawerActiveTintColor: '#1f3c34',
          drawerInactiveTintColor: '#5f6f65',
          drawerActiveBackgroundColor: '#dcefe6',
          drawerLabelStyle: { marginLeft: -10, fontSize: 15, fontWeight: '700' },
          drawerStyle: { backgroundColor: '#f7fbf8', width: 300 },
          sceneStyle: { backgroundColor: '#eef4f0' },
        }}
      >
        <Drawer.Screen
          name="Acesso Treino A"
          component={TabsComecandoEmA}
          options={{
            title: 'Treino A',
            drawerIcon: ({ color, size }) => (
              <MaterialCommunityIcons
                name="alpha-a-circle"
                size={size}
                color={color}
              />
            ),
          }}
        />
        <Drawer.Screen
          name="Acesso Treino B"
          component={TabsComecandoEmB}
          options={{
            title: 'Treino B',
            drawerIcon: ({ color, size }) => (
              <MaterialCommunityIcons
                name="alpha-b-circle"
                size={size}
                color={color}
              />
            ),
          }}
        />
        <Drawer.Screen
          name="Acesso Treino C"
          component={TabsComecandoEmC}
          options={{
            title: 'Treino C',
            drawerIcon: ({ color, size }) => (
              <MaterialCommunityIcons
                name="alpha-c-circle"
                size={size}
                color={color}
              />
            ),
          }}
        />
      </Drawer.Navigator>
    </NavigationContainer>
  );
}
