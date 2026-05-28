import { useState } from 'react';
import { SafeAreaView, ScrollView, Switch, Text, TextInput, View } from 'react-native';
import { Picker } from '@react-native-picker/picker';

import HeaderCard from '../components/HeaderCard';
import { pizzas } from '../data/appData';
import styles from '../styles/styles';

export default function PedidoScreen() {
  const [nome, setNome] = useState('');
  const [observacao, setObservacao] = useState('');
  const [bordaRecheada, setBordaRecheada] = useState(true);
  const [pizzaSelecionada, setPizzaSelecionada] = useState(pizzas[0].nome);

  return (
    <SafeAreaView style={styles.screen}>
      <ScrollView contentContainerStyle={styles.formContent}>
        <HeaderCard
          titulo="Monte seu pedido"
          subtitulo="Exemplo simples usando TextInput e Switch."
        />

        <Text style={styles.fieldLabel}>Nome do cliente</Text>
        <TextInput
          value={nome}
          onChangeText={setNome}
          placeholder="Digite seu nome"
          placeholderTextColor="#8f8f8f"
          style={styles.input}
        />

        <Text style={styles.fieldLabel}>Escolha a pizza</Text>
        <View style={styles.pickerWrapper}>
          <Picker
            selectedValue={pizzaSelecionada}
            onValueChange={(itemValue) => setPizzaSelecionada(itemValue)}
            style={styles.picker}
            dropdownIconColor="#8c3b2a"
          >
            {pizzas.map((pizza) => (
              <Picker.Item key={pizza.id} label={pizza.nome} value={pizza.nome} />
            ))}
          </Picker>
        </View>

        <View style={styles.switchRow}>
          <View style={styles.switchTextGroup}>
            <Text style={styles.switchTitle}>Borda recheada</Text>
            <Text style={styles.switchDescription}>Adiciona catupiry ao pedido.</Text>
          </View>
          <Switch
            value={bordaRecheada}
            onValueChange={setBordaRecheada}
            trackColor={{ false: '#d3c6bf', true: '#f2a65a' }}
            thumbColor={bordaRecheada ? '#8c3b2a' : '#f8f1eb'}
          />
        </View>

        <Text style={styles.fieldLabel}>Observacoes</Text>
        <TextInput
          value={observacao}
          onChangeText={setObservacao}
          placeholder="Ex.: sem cebola, assar bem, entregar apos 20h"
          placeholderTextColor="#8f8f8f"
          style={[styles.input, styles.multilineInput]}
          multiline
        />

        <View style={styles.summaryCard}>
          <Text style={styles.summaryTitle}>Resumo do pedido</Text>
          <Text style={styles.summaryText}>Cliente: {nome || 'Nao informado'}</Text>
          <Text style={styles.summaryText}>Sabor: {pizzaSelecionada}</Text>
          <Text style={styles.summaryText}>
            Borda recheada: {bordaRecheada ? 'Sim' : 'Nao'}
          </Text>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}
