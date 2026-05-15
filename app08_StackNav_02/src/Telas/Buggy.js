import React from "react";
import EmperorScreen from "../components/EmperorScreen";
import { emperors } from "../utils/appData";

function Buggy() {
  return <EmperorScreen emperor={emperors[1]} />;
}

export default Buggy;
