import { StyleSheet } from "react-native";

const estilos = StyleSheet.create({
  fundo: {
    flex: 1,
    backgroundColor: "#f2f2f2",
    paddingHorizontal: 18,
    paddingVertical: 18,
  },

  cabecalho: {
    flex: 0.12,
    justifyContent: "center",
    alignItems: "center",
  },

  cabTitulo: {
    fontSize: 24,
    fontWeight: "bold",
    color: "black",
  },

  conteudo: {
    flex: 0.76,
    borderWidth: 2,
    borderColor: "#d9d3cb",
    justifyContent: "space-evenly",
    alignItems: "center",
    paddingHorizontal: 20,
    paddingVertical: 20,
  },

  imgPersonagem: {
    width: 160,
    height: 160,
    resizeMode: "contain",
  },

  tituloConteudo: {
    fontSize: 22,
    color: "darkred",
  },

  textoEnunciado: {
    fontSize: 16,
    textAlign: "center",
    lineHeight: 22,
  },

  botao: {
    backgroundColor: "darkred",
    paddingVertical: 16,
    paddingHorizontal: 24,
    borderRadius: 25,
  },

  botaoTexto: {
    color: "white",
    fontWeight: "bold",
    fontSize: 14,
  },

  textoDescricao: {
    fontSize: 16,
    textAlign: "center",
  },

  rodape: {
    flex: 0.12,
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    paddingHorizontal: 6,
  },

  rodTexto: {
    fontSize: 16,
    color: "black",
  },
});

export { estilos };