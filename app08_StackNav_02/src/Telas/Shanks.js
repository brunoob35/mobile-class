import React from "react";
import EmperorScreen from "../components/EmperorScreen";
import { emperors } from "../utils/appData";

function Shanks() {
  return <EmperorScreen emperor={emperors[2]} />;
}

export default Shanks;
