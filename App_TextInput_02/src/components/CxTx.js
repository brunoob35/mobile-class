import React, { useState } from "react";
import { View, TextInput } from "react-native";
import { estilos } from "../styles/estilos";

function CxTx(props) {
  const [texto, setTexto] = useState(props.value ? props.value : "");

  function tratarTexto(valor) {
    let novoValor = valor;

    if (props.label === "nome") {
      novoValor = valor.toUpperCase();
    }

    if (props.label === "idade") {
      novoValor = valor.replace(/[^0-9]/g, "");
    }

    if (props.label === "celular") {
      novoValor = valor.replace(/[^0-9]/g, "");
    }

    setTexto(novoValor);
  }

  return (
    <View style={estilos.caixaInput}>
      <TextInput
        style={[
          estilos.input,
          props.multiline ? estilos.inputObservacao : null,
          props.editable === false ? estilos.inputTravado : null,
        ]}
        placeholder={props.placeholder}
        placeholderTextColor="#666"
        keyboardType={props.keyboardType ? props.keyboardType : "default"}
        maxLength={props.maxLength}
        editable={props.editable !== false}
        multiline={props.multiline ? true : false}
        secureTextEntry={props.secureTextEntry ? true : false}
        autoCapitalize={props.autoCapitalize ? props.autoCapitalize : "sentences"}
        autoCorrect={props.autoCorrect !== undefined ? props.autoCorrect : false}
        value={texto}
        onChangeText={tratarTexto}
        textAlignVertical={props.multiline ? "top" : "center"}
      />
    </View>
  );
}

export default CxTx;