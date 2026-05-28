import { FlatList, Image, SafeAreaView, Text, View } from 'react-native';

import HeaderCard from '../components/HeaderCard';
import { pizzas } from '../data/appData';
import styles from '../styles/styles';

export default function CardapioScreen() {
  return (
    <SafeAreaView style={styles.screen}>
      <FlatList
        data={pizzas}
        keyExtractor={(item) => item.id}
        contentContainerStyle={styles.listContent}
        ListHeaderComponent={
          <View>
            <HeaderCard
              titulo="Sabores em destaque"
              subtitulo="Use o menu lateral para trocar de tela e explorar o cardapio."
            />
            <Image
              source={{
                uri: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=1200&q=80',
              }}
              style={styles.heroImage}
            />
            <Text style={styles.sectionTitle}>Pizzas mais pedidas</Text>
          </View>
        }
        renderItem={({ item }) => (
          <View style={styles.menuCard}>
            <Text style={styles.menuTitle}>{item.nome}</Text>
            <Text style={styles.menuDescription}>{item.descricao}</Text>
            <Text style={styles.menuPrice}>{item.preco}</Text>
          </View>
        )}
      />
    </SafeAreaView>
  );
}
