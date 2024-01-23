import React, { useState } from "react";
import axios from "axios";
import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import userStore from "../store/userStore";
// import "../css/classCard.css";
import "../css/claaseChoice.css";


export default function Classes() {
  const { SavedClassChoice, setSavedClassChoice } = userStore();
  const { ticketPrice, setTicketPrice } = userStore();
  const [classes, setClasses] = useState();
  const navigate = useNavigate();
  // console.log(ticketPrice);

  // stocker la classe et le prix du ticket choisit l'utilisateur
const toZones = (className,classPrice) => {
  if(classPrice==="1500 fcfa"){
    setTicketPrice(1500);
  }else{
    setTicketPrice(2500);
  }
  setSavedClassChoice(className);
  navigate("/zones");
};

  // fonction fetch les classes
  const fetchClasses = async () => {
    try {
      const response = await axios.get("classe");
      setClasses(response.data);
      // console.log(response)
    } catch (error) {
      console.error("Failed to fetch classes", error);
    }
  };

  useEffect(() => {
    fetchClasses();
  },[]);



  return (
    <div className="mainContainer">
      <h1 className="title">Veuillez Choisir une Classe</h1>
      {classes &&
        classes.map((classe, index) => (
          <div
            key={index}
            className="classCard"
            onClick={() => toZones(classe.id, classe.description)}
          >
            <h2 className="classTitle">{classe.name}</h2>
            <p className="classDescription">{classe.description}</p>
          </div>
        ))}
    </div>
  );
}
