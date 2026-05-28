import { SafeAreaView, SectionList, Text, View } from 'react-native';

import HeaderCard from '../components/HeaderCard';
import { lugares } from '../data/appData';
import styles from '../styles/styles';

export default function LugaresScreen() {
  return (
    <SafeAreaView style={styles.screen}>
      <SectionList
        sections={lugares}
        keyExtractor={(item, index) => `${item}-${index}`}
        contentContainerStyle={styles.listContent}
        ListHeaderComponent={
          <HeaderCard
            titulo="Onde comer pizza"
            subtitulo="O drawer ajuda a saltar entre regioes, pedido e avaliacao."
          />
        }
        renderSectionHeader={({ section: { title } }) => (
          <Text style={styles.sectionHeader}>{title}</Text>
        )}
        renderItem={({ item }) => (
          <View style={styles.placeCard}>
            <Text style={styles.placeText}>{item}</Text>
          </View>
        )}
      />
    </SafeAreaView>
  );
}
