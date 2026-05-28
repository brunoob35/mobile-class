import { Text, View } from 'react-native';
import {
  DrawerContentScrollView,
  DrawerItemList,
} from '@react-navigation/drawer';

import styles from '../styles/styles';

export default function CustomDrawerContent(props) {
  return (
    <DrawerContentScrollView
      {...props}
      contentContainerStyle={styles.drawerScrollContent}
    >
      <View style={styles.drawerHero}>
        <Text style={styles.drawerHeroEyebrow}>Pizzaria App</Text>
        <Text style={styles.drawerHeroTitle}>Menu principal</Text>
      </View>
      <View style={styles.drawerListWrapper}>
        <DrawerItemList {...props} />
      </View>
    </DrawerContentScrollView>
  );
}
