import { StyleSheet } from 'react-native';

export const estilos = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#799b6c',
    paddingTop: 48,
    paddingHorizontal: 0,
    paddingBottom: 20,
  },
  cabecalho: {
    alignItems: 'center',
    marginBottom: 16,
    paddingHorizontal: 16,
  },
  tituloTopo: {
    fontSize: 20,
    color: '#ffffff',
    marginBottom: 12,
  },
  titulo: {
    fontSize: 34,
    fontWeight: 'bold',
    color: '#ff7f2a',
    marginBottom: 18,
  },
  entrada: {
    backgroundColor: '#ffe09a',
    borderRadius: 4,
    paddingHorizontal: 12,
    paddingVertical: 10,
    marginBottom: 10,
    marginHorizontal: 16,
    fontSize: 18,
  },
  botao: {
    backgroundColor: '#92210f',
    paddingVertical: 12,
    paddingHorizontal: 16,
    borderRadius: 4,
    marginTop: 6,
    marginHorizontal: 16,
    alignItems: 'center',
  },
  botaoTexto: {
    color: '#ff7f2a',
    fontSize: 18,
    fontWeight: 'bold',
  },
  conteudo: {
    flex: 1,
    marginTop: 14,
    paddingHorizontal: 16,
  },
  secao: {
    backgroundColor: '#d9d9d9',
    borderRadius: 4,
    paddingVertical: 10,
    paddingHorizontal: 10,
    marginBottom: 6,
    marginTop: 10,
  },
  secaoTexto: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#102030',
  },
  item: {
    backgroundColor: '#ffffff',
    borderRadius: 6,
    paddingVertical: 14,
    paddingHorizontal: 14,
    marginBottom: 10,
  },
  itemTexto: {
    fontSize: 20,
    color: '#222222',
  },
  vazio: {
    marginTop: 20,
    textAlign: 'center',
    color: '#ffffff',
    fontSize: 18,
  },
  rodape: {
    backgroundColor: '#ffffff',
    marginTop: 18,
    marginHorizontal: 16,
    paddingVertical: 14,
    paddingHorizontal: 12,
    flexDirection: 'row',
    justifyContent: 'space-between',
    borderRadius: 4,
  },
  rodapeTexto: {
    fontSize: 16,
    color: '#102030',
  },
});
