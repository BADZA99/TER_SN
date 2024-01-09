import React, { useEffect, useState } from "react";
import axios from "axios";

const ClassesPresentation = () => {
  const [classes, setClasses] = useState([]);

  useEffect(() => {
    // Remplacez cette URL par l'URL de votre API
    axios
      .get("classe")
      .then((response) => {
        setClasses(response.data);
      })
      .catch((error) => {
        console.error("There was an error!", error);
      });
  }, []);

  const styles = {
    container: {
      width: "100%",
      padding: "20px",
    },
    row: {
      display: "flex",
      flexWrap: "wrap",
      justifyContent: "space-between",
      alignItems:'center',
      width:'70%',
      margin: "0 auto",
      height: "300px",
    //   backgroundColor: "red",
    },
    card: {
      width: "40%",
      border: "1px solid #ccc",
      borderRadius: "10px",
      marginBottom: "20px",
      padding: "20px",
      height:'70%',
      boxShadow: "2px 2px 6px 0px rgba(0,0,0,0.2)",
    },
  };

  return (
    <div style={styles.container}>
      <h1>Classes de voyage du TER</h1>
      <div style={styles.row}>
        {classes.map((classItem, index) => (
          <div style={styles.card} key={index}>
            <h2>{classItem.id}e Classe</h2>
            <p>
              Tarifs: {classItem.description} <br />
              Description:
              {classItem.id === 1
                ? " La première classe offre plus d'espace pour les jambes, des sièges plus larges et plus confortables, et généralement moins de bruit que la seconde classe."
                : ""}
              {classItem.id === 2
                ? " La deuxième classe offre un bon rapport qualité-prix, avec des sièges confortables et un accès à tous les services de base."
                : ""}
            </p>
          </div>
        ))}
      </div>
    </div>
  );
};

export default ClassesPresentation;
