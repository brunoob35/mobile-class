import React from "react";
import { SafeAreaView, View, Text, ScrollView } from "react-native";
import CxTx from "./src/components/CxTx";
import { estilos } from "./src/styles/estilos";

function App() {
  const campos = [
    {
      id: 1,
      label: "nome",
      placeholder: "Digite seu nome",
      maxLength: 30,
      autoCapitalize: "characters",
    },
    {
      id: 2,
      label: "idade",
      placeholder: "qual a sua idade?",
      keyboardType: "numeric",
      maxLength: 2,
    },
    {
      id: 3,
      label: "cpf",
      placeholder: "CPF:999.999.999-00",
      editable: false,
      value: "",
    },
    {
      id: 4,
      label: "email",
      placeholder: "Digite seu e-mail",
      keyboardType: "email-address",
      autoCapitalize: "none",
      autoCorrect: false,
    },
    {
      id: 5,
      label: "celular",
      placeholder: "Digite seu número celular:",
      keyboardType: "numeric",
    },
    {
      id: 6,
      label: "observacao",
      placeholder: "Observações:",
      multiline: true,
      maxLength: 200,
    },
    {
      id: 7,
      label: "senha",
      placeholder: "Digite sua senha",
      secureTextEntry: true,
      maxLength: 5,
    },
  ];

  let listaCampos = null;

  for (let i = 0; i < campos.length; i++) {
    listaCampos = (
      <>
        {listaCampos}
        <CxTx
          key={campos[i].id}
          label={campos[i].label}
          placeholder={campos[i].placeholder}
          keyboardType={campos[i].keyboardType}
          maxLength={campos[i].maxLength}
          editable={campos[i].editable}
          value={campos[i].value}
          multiline={campos[i].multiline}
          secureTextEntry={campos[i].secureTextEntry}
          autoCapitalize={campos[i].autoCapitalize}
          autoCorrect={campos[i].autoCorrect}
        />
      </>
    );
  }

  return (
    <SafeAreaView style={estilos.safeArea}>
      <ScrollView contentContainerStyle={estilos.container}>
        <View style={estilos.cardTopo}>
          <Text style={estilos.titulo}>Aula 06 - Desafio 02</Text>
          <Text style={estilos.subtitulo}>Componente InputText</Text>
        </View>

        <Text style={estilos.textoFormulario}>Verifique o Formulário abaixo:</Text>

        <View style={estilos.formulario}>
          {listaCampos}
        </View>
      </ScrollView>
    </SafeAreaView>
  );
}

export default App;