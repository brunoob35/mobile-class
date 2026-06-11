import NumberScreen from '../components/NumberScreen';

export default function Tela9({ navigation }) {
  return (
    <NumberScreen
      number="9"
      nextLabel="Ir para Tela 10"
      onNext={() => navigation.navigate('Tela 10')}
    />
  );
}
