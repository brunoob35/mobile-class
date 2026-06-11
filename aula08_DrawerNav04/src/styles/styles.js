import { StyleSheet } from 'react-native';

export const screenColors = {
  '1': '#0f172a',
  '2': '#7c3aed',
  '3': '#c026d3',
  '4': '#ea580c',
  '5': '#0f766e',
  '6': '#2563eb',
  '7': '#db2777',
  '8': '#15803d',
  '9': '#b45309',
  '10': '#374151',
};

const styles = StyleSheet.create({
  screen: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: 24,
  },
  number: {
    color: '#ffffff',
    fontSize: 120,
    fontWeight: '800',
  },
  button: {
    marginTop: 28,
    backgroundColor: 'rgba(255, 255, 255, 0.18)',
    borderRadius: 16,
    borderWidth: 1,
    borderColor: 'rgba(255, 255, 255, 0.45)',
    paddingHorizontal: 20,
    paddingVertical: 14,
  },
  buttonText: {
    color: '#ffffff',
    fontSize: 16,
    fontWeight: '700',
  },
  drawerContent: {
    flexGrow: 1,
    backgroundColor: '#f8fffd',
  },
  drawerHeader: {
    backgroundColor: screenColors['5'],
    borderBottomLeftRadius: 24,
    borderBottomRightRadius: 24,
    marginBottom: 12,
    padding: 22,
  },
  drawerHeaderTitle: {
    color: '#ffffff',
    fontSize: 24,
    fontWeight: '800',
    marginBottom: 6,
  },
  drawerHeaderText: {
    color: '#d7f3ef',
    fontSize: 14,
    fontWeight: '600',
  },
});

export default styles;
