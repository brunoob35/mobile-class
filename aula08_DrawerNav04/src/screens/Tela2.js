import NumberScreen from '../components/NumberScreen';

export default function Tela2({ navigation }) {
  return (
    <NumberScreen
      number="2"
      nextLabel="Ir para Tela 3"
      onNext={() => navigation.navigate('Tela 3')}
    />
  );
}
