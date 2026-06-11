import { ScrollView, StyleSheet, Text, View } from 'react-native';

export default function WorkoutScreen({ treino }) {
  return (
    <ScrollView style={styles.screen} contentContainerStyle={styles.content}>
      <View style={[styles.hero, { borderLeftColor: treino.cor }]}>
        <Text style={styles.eyebrow}>Treino ABC</Text>
        <Text style={styles.title}>{treino.titulo}</Text>
        <Text style={styles.focus}>{treino.foco}</Text>
        <Text style={styles.description}>{treino.descricao}</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.cardTitle}>Exercicios do dia</Text>
        {treino.exercicios.map((item) => (
          <View key={item} style={styles.exerciseRow}>
            <View style={[styles.bullet, { backgroundColor: treino.cor }]} />
            <Text style={styles.exerciseText}>{item}</Text>
          </View>
        ))}
      </View>

      <View style={styles.tipCard}>
        <Text style={styles.tipTitle}>Objetivo do desafio</Text>
        <Text style={styles.tipText}>
          Esta mesma tela pode ser aberta pelas abas ou pelo menu lateral.
        </Text>
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  screen: {
    flex: 1,
    backgroundColor: '#eef4f0',
  },
  content: {
    padding: 18,
    paddingBottom: 28,
  },
  hero: {
    backgroundColor: '#ffffff',
    borderLeftWidth: 7,
    borderRadius: 18,
    padding: 18,
    marginBottom: 16,
  },
  eyebrow: {
    color: '#1f3c34',
    fontSize: 12,
    fontWeight: '700',
    marginBottom: 6,
    textTransform: 'uppercase',
  },
  title: {
    color: '#102a22',
    fontSize: 28,
    fontWeight: '800',
  },
  focus: {
    color: '#38564b',
    fontSize: 16,
    fontWeight: '700',
    marginTop: 6,
  },
  description: {
    color: '#50655d',
    fontSize: 15,
    lineHeight: 22,
    marginTop: 10,
  },
  card: {
    backgroundColor: '#ffffff',
    borderRadius: 18,
    padding: 18,
    marginBottom: 16,
  },
  cardTitle: {
    color: '#102a22',
    fontSize: 20,
    fontWeight: '800',
    marginBottom: 12,
  },
  exerciseRow: {
    alignItems: 'center',
    flexDirection: 'row',
    marginBottom: 10,
  },
  bullet: {
    width: 10,
    height: 10,
    borderRadius: 99,
    marginRight: 10,
  },
  exerciseText: {
    color: '#42574e',
    flex: 1,
    fontSize: 15,
    lineHeight: 21,
  },
  tipCard: {
    backgroundColor: '#1f3c34',
    borderRadius: 18,
    padding: 18,
  },
  tipTitle: {
    color: '#f3f4f6',
    fontSize: 18,
    fontWeight: '800',
    marginBottom: 8,
  },
  tipText: {
    color: '#dce7e1',
    fontSize: 14,
    lineHeight: 21,
  },
});
