import { StyleSheet } from 'react-native';

export const estilos = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f2f6fb',
    paddingTop: 48,
    paddingHorizontal: 16,
    paddingBottom: 24,
  },
  cabecalho: {
    alignItems: 'center',
    marginBottom: 16,
  },
  faixaBandeiras: {
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    gap: 8,
    marginBottom: 12,
  },
  bandeiraTopo: {
    width: 52,
    height: 36,
    borderRadius: 4,
    borderWidth: 1,
    borderColor: '#d3deea',
  },
  tituloApp: {
    fontSize: 28,
    fontWeight: '700',
    color: '#1d3557',
    marginBottom: 8,
  },
  subtitulo: {
    fontSize: 16,
    color: '#4f6d8a',
  },
  card: {
    backgroundColor: '#b9d4ec',
    borderRadius: 12,
    paddingVertical: 16,
    paddingHorizontal: 14,
    shadowColor: '#5d7b99',
    shadowOpacity: 0.12,
    shadowRadius: 6,
    shadowOffset: {
      width: 0,
      height: 2,
    },
    elevation: 2,
  },
  cardConteudo: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    gap: 12,
  },
  infoPais: {
    flex: 1,
  },
  pais: {
    fontSize: 24,
    fontWeight: '700',
    color: '#102a43',
    marginBottom: 4,
  },
  capital: {
    fontSize: 18,
    color: '#334e68',
  },
  bandeiraItem: {
    width: 56,
    height: 42,
    borderRadius: 6,
    borderWidth: 1,
    borderColor: '#8db2d3',
    backgroundColor: '#ffffff',
  },
  separador: {
    height: 12,
  },
  cabecalhoLista: {
    fontSize: 26,
    fontWeight: '700',
    textAlign: 'center',
    color: '#0b2545',
    marginBottom: 16,
  },
  rodapeLista: {
    fontSize: 18,
    fontWeight: '600',
    textAlign: 'center',
    color: '#1d3557',
    marginTop: 16,
    marginBottom: 8,
  },
  rodape: {
    alignItems: 'center',
    marginTop: 8,
  },
  textoRodape: {
    fontSize: 14,
    color: '#4f6d8a',
  },
});
