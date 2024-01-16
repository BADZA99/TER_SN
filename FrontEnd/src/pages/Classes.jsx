import React, { useState } from "react";
import axios from "axios";
import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import userStore from "../store/userStore";



const styles = {
  container: {
    display: "flex",
    flexDirection: "column",
    justifyContent: "center",
    alignItems: "center",
    height: "100vh",
    backgroundColor: "#f8f9fa",
  },
  title: {
    fontSize: "2em",
    color: "#303f9f",
  },
  classCard: {
    display: "flex",
    flexDirection: "column",
    justifyContent: "center",
    alignItems: "center",
    width: "300px",
    padding: "20px",
    margin: "10px",
    borderRadius: "5px",
    backgroundColor: "#fff",
    boxShadow: "0px 0px 10px rgba(0, 0, 0, 0.1)",
    cursor: "pointer",
  },
  className: {
    fontSize: "1.5em",
    color: "#303f9f",
  },
  classDescription: {
    color: "#555",
  },
};

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
    <div style={styles.container}>
      <h1 style={styles.title}>Veuillez Choisir une Classe</h1>
      {classes &&
        classes.map((classe, index) => (
          <div
            key={index}
            style={styles.classCard}
            onClick={() => toZones(classe.id,classe.description)}
          >
            <h2 style={styles.className}>{classe.name}</h2>
            <p style={styles.classDescription}>{classe.description}</p>
          </div>
        ))}
    </div>
  );
}
