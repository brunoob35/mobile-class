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
        <Text style={styles.drawerEyebrow}>Academia</Text>
        <Text style={styles.drawerTitle}>Treino ABC</Text>
        <Text style={styles.drawerText}>
          Abra as 3 telas pelas abas ou pelo menu lateral.
        </Text>
      </View>

      <View style={styles.drawerList}>
        <DrawerItemList {...props} />
      </View>
    </DrawerContentScrollView>
  );
}
