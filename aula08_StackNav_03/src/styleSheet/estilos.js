import { StyleSheet } from "react-native";

export const estilos = StyleSheet.create({
  Principal_fundo: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: "#efefef",
    paddingHorizontal: 24,
    gap: 18,
  },
  Principal_SubTit: {
    fontSize: 18,
    color: "#222222",
    textAlign: "center",
  },
  Principal_img: {
    width: 240,
    height: 240,
    resizeMode: "contain",
  },
  Principal_Tit: {
    fontSize: 26,
    color: "#111111",
    fontWeight: "700",
    textAlign: "center",
  },
  Principal_SubTit2: {
    fontSize: 18,
    color: "#2f45ff",
    textAlign: "center",
    marginTop: 10,
  },
  telaPlaneta: {
    flex: 1,
    backgroundColor: "#2d1a17",
    alignItems: "center",
    paddingHorizontal: 22,
    paddingTop: 26,
    paddingBottom: 34,
  },
  planetaTitulo: {
    fontSize: 26,
    fontWeight: "700",
    color: "#ffffff",
    marginBottom: 18,
  },
  planetaImagem: {
    width: 170,
    height: 170,
    borderRadius: 85,
    borderWidth: 6,
    borderColor: "#000000",
    marginBottom: 26,
  },
  planetaTexto: {
    width: "100%",
    fontSize: 16,
    lineHeight: 24,
    color: "#ffffff",
    marginBottom: 18,
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
