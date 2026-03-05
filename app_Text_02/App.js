import React from 'react';
import { View, Text } from 'react-native';

export default function App() {
  return (
    <View style={{
      flex: 1,
      padding: 16,
      backgroundColor: '#0b1220', // View de fundo
      justifyContent: 'center',
      gap: 12,
    }}>
      <View style={{
        backgroundColor: '#13213c',
        borderWidth: 2,
        borderColor: '#4fc3f7',
        borderRadius: 10,
        padding: 12,
      }}>
        <Text style={{
          fontSize: 22,
          fontWeight: 'bold',
          color: '#e3f2fd',
          textAlign: 'center',
          marginBottom: 8,
        }}>
          DESAFIO 02 — Views e Texto
        </Text>

        <Text style={{
          fontSize: 16,
          color: '#bbdefb',
          lineHeight: 22,
        }}>
          Esta é uma tela simples feita com React Native usando os componentes{' '}
          <Text style={{ fontWeight: 'bold', color: '#ffffff' }}>View</Text> e{' '}
          <Text style={{ fontStyle: 'italic', color: '#ffffff' }}>Text</Text>.
          Aqui eu brinco com cores, bordas e estilos!
        </Text>
      </View>

      <View style={{
        backgroundColor: '#1b2a1f',
        borderWidth: 2,
        borderColor: '#66bb6a',
        borderRadius: 10,
        padding: 12,
      }}>
        <Text style={{
          fontSize: 18,
          color: '#c8e6c9',
          fontWeight: '600',
          marginBottom: 6,
			textAlign: 'center',
        }}>
          Lovecraft!
        </Text>
      </View>

      <View style={{
        backgroundColor: '#2a1b1f',
        borderWidth: 2,
        borderColor: '#ef5350',
        borderRadius: 10,
        padding: 12,
      }}>

        <Text style={{
          fontSize: 15,
          color: '#ffebee',
          lineHeight: 22,
        }}>
          <Text style={{ fontStyle: 'italic', color: '#ff8a80' }}>
            No silêncio úmido do cais,{' '}
          </Text>
          algo parecia respirar por trás do nevoeiro. Eu jurei ter visto símbolos
          riscados na madeira — antigos demais para serem lembrados e
          recentes demais para serem sonhos. A cada passo, a água escura
          devolvia ecos que não combinavam com o mundo… como se o oceano,
          paciente, guardasse um nome impossível de pronunciar.
        </Text>

        <Text style={{
          marginTop: 8,
          fontSize: 13,
          color: '#ffcdd2',
          textAlign: 'right',
        }}>
          — “Relato do Investigador”
        </Text>
      </View>
    </View>
  );
}
