import { StyleSheet } from "react-native";

export const estilos = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#eee9e1",
    alignItems: "center",
    justifyContent: "center",
  },

  app: {
    width: 370,
    minHeight: 760,
    backgroundColor: "#82cdea",
  },

  barraTopo: {
    height: 25,
    backgroundColor: "#7ed0ef",
  },

  cabecalho: {
    height: 205,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },

  titulo: {
    fontSize: 30,
    fontWeight: "bold",
    color: "#8bd8f4",
    marginTop: 12,
  },

  conteudo: {
    flex: 1,
    alignItems: "center",
    paddingTop: 28,
    paddingHorizontal: 28,
  },

  subtitulo: {
    fontSize: 23,
    marginBottom: 24,
    color: "#000",
  },

  input: {
    width: "100%",
    height: 42,
    borderRadius: 4,
    paddingHorizontal: 10,
    fontSize: 15,
    marginBottom: 18,
  },

  label: {
    fontSize: 20,
    marginBottom: 8,
    color: "#000",
  },

  pickerBox: {
    width: "100%",
    height: 52,
    backgroundColor: "#fff",
    borderWidth: 1,
    borderColor: "#777",
    marginBottom: 15,
    justifyContent: "center",
  },

  picker: {
    width: "100%",
    height: 52,
  },

  botao: {
    width: "100%",
    height: 55,
    backgroundColor: "#48b34f",
    borderRadius: 4,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 25,
  },

  textoBotao: {
    color: "#fff",
    fontSize: 17,
    fontWeight: "bold",
  },

  resultado: {
    fontSize: 16,
    textAlign: "center",
    color: "#000",
    lineHeight: 22,
  },

  rodape: {
    height: 20,
    backgroundColor: "#82cdea",
  },
});