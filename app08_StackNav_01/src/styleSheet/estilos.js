import { StyleSheet } from "react-native";

export const estilos = StyleSheet.create({
  telaFundo: {
    flex: 1,
    backgroundColor: "#e6e6e6",
    padding: 16,
  },
  cartao: {
    flex: 1,
    backgroundColor: "#ffffff",
    borderRadius: 28,
    overflow: "hidden",
    borderWidth: 5,
    borderColor: "#8b0000",
  },
  cabecalho: {
    backgroundColor: "#ffffff",
    paddingHorizontal: 20,
    paddingVertical: 22,
    alignItems: "center",
    borderBottomWidth: 1,
    borderBottomColor: "#b8b8b8",
  },
  cabecalhoLinha: {
    width: "100%",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    gap: 16,
  },
  figuraEmoji: {
    fontSize: 64,
  },
  tituloBloco: {
    flex: 1,
    alignItems: "flex-end",
  },
  subtitulo: {
    fontSize: 16,
    color: "#b44b36",
  },
  titulo: {
    fontSize: 22,
    fontWeight: "700",
    color: "#111111",
  },
  textoPequeno: {
    fontSize: 16,
    color: "#333333",
    marginTop: 4,
  },
  corpoPrincipal: {
    flex: 1,
    paddingHorizontal: 28,
    paddingVertical: 26,
    alignItems: "center",
    justifyContent: "center",
  },
  corpoScroll: {
    flex: 1,
    paddingHorizontal: 22,
    paddingVertical: 20,
  },
  secaoTitulo: {
    fontSize: 18,
    fontWeight: "700",
    color: "#b44b36",
    marginBottom: 8,
  },
  secaoTexto: {
    fontSize: 15,
    lineHeight: 23,
    color: "#333333",
    marginBottom: 16,
    textAlign: "justify",
  },
  secaoEmoji: {
    fontSize: 58,
    textAlign: "center",
    marginBottom: 16,
  },
  botoesArea: {
    width: "100%",
    marginTop: 28,
    gap: 14,
  },
  botao: {
    borderWidth: 2,
    borderColor: "#b22222",
    borderRadius: 999,
    paddingVertical: 12,
    alignItems: "center",
    backgroundColor: "#fffdfd",
  },
  botaoTexto: {
    fontSize: 16,
    color: "#5c1414",
    fontWeight: "600",
  },
  rodape: {
    flexDirection: "row",
    justifyContent: "space-between",
    paddingHorizontal: 20,
    paddingVertical: 14,
    borderTopWidth: 1,
    borderTopColor: "#cfcfcf",
    backgroundColor: "#ffffff",
  },
  rodapeTexto: {
    fontSize: 14,
    color: "#222222",
  },
});
