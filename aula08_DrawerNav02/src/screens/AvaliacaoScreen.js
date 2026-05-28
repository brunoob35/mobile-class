import { useState } from 'react';
import { SafeAreaView, ScrollView, Switch, Text, View } from 'react-native';

import HeaderCard from '../components/HeaderCard';
import { destaques } from '../data/appData';
import styles from '../styles/styles';

export default function AvaliacaoScreen() {
  const [preferida, setPreferida] = useState(false);

  return (
    <SafeAreaView style={styles.screen}>
      <ScrollView contentContainerStyle={styles.formContent}>
        <HeaderCard
          titulo="Avaliacao do cliente"
          subtitulo="Tela simples para finalizar o exercicio."
        />

        <Text style={styles.sectionTitle}>Motivos para voltar</Text>
        {destaques.map((item) => (
          <View key={item} style={styles.highlightRow}>
            <View style={styles.highlightDot} />
            <Text style={styles.highlightText}>{item}</Text>
          </View>
        ))}

        <View style={styles.switchRow}>
          <View style={styles.switchTextGroup}>
            <Text style={styles.switchTitle}>Salvar pizzaria favorita</Text>
            <Text style={styles.switchDescription}>Marque sua pizzaria preferida.</Text>
          </View>
          <Switch
            value={preferida}
            onValueChange={setPreferida}
            trackColor={{ false: '#d3c6bf', true: '#f2a65a' }}
            thumbColor={preferida ? '#8c3b2a' : '#f8f1eb'}
          />
        </View>

        <View style={styles.summaryCard}>
          <Text style={styles.summaryTitle}>Resultado</Text>
          <Text style={styles.summaryText}>Favorita: {preferida ? 'Sim' : 'Nao'}</Text>
          <Text style={styles.summaryText}>Obrigado por visitar nosso app de pizza.</Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}
