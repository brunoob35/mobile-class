import { StyleSheet } from "react-native";

export const estilos = StyleSheet.create({
  principalFundo: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#efefef",
    paddingHorizontal: 24,
    gap: 18,
  },
  logo: {
    width: "100%",
    height: 140,
    resizeMode: "contain",
  },
  principalSubTitulo: {
    fontSize: 18,
    color: "#222222",
    textAlign: "center",
  },
  principalTitulo: {
    fontSize: 24,
    fontWeight: "700",
    color: "#111111",
    textAlign: "center",
  },
  principalTexto: {
    fontSize: 15,
    lineHeight: 23,
    color: "#334155",
    textAlign: "center",
  },
  principalRodape: {
    fontSize: 18,
    color: "#2f45ff",
    textAlign: "center",
    marginTop: 10,
  },
  telaFaccao: {
    flex: 1,
    backgroundColor: "#2d1a17",
    alignItems: "center",
    paddingHorizontal: 22,
    paddingTop: 26,
    paddingBottom: 34,
  },
  telaTitulo: {
    fontSize: 26,
    fontWeight: "700",
    color: "#ffffff",
    marginBottom: 18,
    textAlign: "center",
  },
  telaImagem: {
    width: 190,
    height: 190,
    borderRadius: 18,
    borderWidth: 4,
    borderColor: "#000000",
    marginBottom: 24,
  },
  telaTexto: {
    width: "100%",
    fontSize: 16,
    lineHeight: 24,
    color: "#ffffff",
    marginBottom: 16,
  },
  botoesLinha: {
    width: "100%",
    flexDirection: "row",
    justifyContent: "space-between",
    marginTop: "auto",
    gap: 16,
  },
  botaoUnico: {
    width: "100%",
    marginTop: "auto",
  },
  botaoBox: {
    flex: 1,
  },
});
