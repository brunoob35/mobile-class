import { Text, View } from 'react-native';

import styles from '../styles/styles';

export default function HeaderCard({ titulo, subtitulo }) {
  return (
    <View style={styles.headerCard}>
      <Text style={styles.headerEyebrow}>Drawer Navigation</Text>
      <Text style={styles.headerTitle}>{titulo}</Text>
      <Text style={styles.headerSubtitle}>{subtitulo}</Text>
    </View>
  );
}
