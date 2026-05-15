import React from "react";
import EmperorScreen from "../components/EmperorScreen";
import { emperors } from "../utils/appData";

function BarbaNegra() {
  return <EmperorScreen emperor={emperors[3]} />;
}

export default BarbaNegra;
