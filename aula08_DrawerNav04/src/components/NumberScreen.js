import { Pressable, Text, View } from 'react-native';

import styles, { screenColors } from '../styles/styles';

export default function NumberScreen({ number, onNext, nextLabel }) {
  return (
    <View style={[styles.screen, { backgroundColor: screenColors[number] }]}>
      <Text style={styles.number}>{number}</Text>
      {onNext ? (
        <Pressable onPress={onNext} style={styles.button}>
          <Text style={styles.buttonText}>{nextLabel}</Text>
        </Pressable>
      ) : null}
    </View>
  );
}
