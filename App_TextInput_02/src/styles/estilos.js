import { StyleSheet } from "react-native";

const estilos = StyleSheet.create({
  safeArea: {
    flex: 1,
    backgroundColor: "#f2f2f2",
  },

  container: {
    alignItems: "center",
    paddingTop: 20,
    paddingBottom: 40,
  },

  cardTopo: {
    width: 330,
    backgroundColor: "#d3d3d3",
    borderRadius: 22,
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: 18,
    marginBottom: 28,
  },

  titulo: {
    fontSize: 29,
    fontWeight: "bold",
    color: "#000",
    marginBottom: 8,
  },

  subtitulo: {
    fontSize: 18,
    color: "#222",
  },

  textoFormulario: {
    width: 330,
    fontSize: 16,
    color: "#222",
    marginBottom: 14,
  },

  formulario: {
    width: 330,
  },

  caixaInput: {
    width: "100%",
    marginBottom: 12,
  },

  input: {
    width: "100%",
    height: 48,
    borderWidth: 1,
    borderColor: "#555",
    backgroundColor: "#efefef",
    paddingHorizontal: 10,
    fontSize: 16,
    color: "#000",
  },

  inputObservacao: {
    height: 95,
    paddingTop: 10,
  },

  inputTravado: {
    backgroundColor: "#e2e2e2",
    color: "#444",
  },
});

export { estilos };