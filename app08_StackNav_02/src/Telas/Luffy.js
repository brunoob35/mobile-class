import React from "react";
import EmperorScreen from "../components/EmperorScreen";
import { emperors } from "../utils/appData";

function Luffy() {
  return <EmperorScreen emperor={emperors[0]} />;
}

export default Luffy;
