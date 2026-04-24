import { StyleSheet } from "react-native";

export const estilos = StyleSheet.create({
  area_fundo: {
    flex: 1,
    backgroundColor: "#2f80ed",
  },

  cabecalho: {
    height: 180,
    alignItems: "center",
    justifyContent: "center",
  },

  textoCabecalho: {
    fontSize: 26,
    color: "#7fffd4",
    marginTop: 10,
    fontWeight: "bold",
  },

  conteudo: {
    flex: 1,
    alignItems: "center",
    padding: 20,
  },

  textoConteudo: {
    fontSize: 14,
    marginBottom: 15,
    textAlign: "center",
  },

  input: {
    width: "80%",
    height: 40,
    borderWidth: 1,
    borderColor: "#ccc",
    marginBottom: 20,
    padding: 8,
  },

  botao: {
    marginTop: 30,
    backgroundColor: "#1e90ff",
    padding: 15,
    borderRadius: 50,
    width: 120,
    alignItems: "center",
  },

  textoBotao: {
    color: "#fff",
    fontWeight: "bold",
  },

  rodape: {
    height: 80,
    backgroundColor: "#000",
    justifyContent: "center",
    alignItems: "center",
  },

  rodapeLinha: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 5,
  },

  textoRodape: {
    color: "#fff",
    marginLeft: 10,
  },
});