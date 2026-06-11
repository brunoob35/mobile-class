import NumberScreen from '../components/NumberScreen';

export default function Tela8({ navigation }) {
  return (
    <NumberScreen
      number="8"
      nextLabel="Ir para Tela 9"
      onNext={() => navigation.navigate('Tela 9')}
    />
  );
}
