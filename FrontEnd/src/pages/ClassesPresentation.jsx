import React, { useEffect, useState } from "react";
import axios from "axios";
import "../css/classePresentation.css";

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

 

  return (
    <div className="classes-container">
      <h1 className="classes-title">Classes de voyage du TER</h1>
      <div className="classes-list">
        {classes.map((classItem, index) => (
          <div className="class-card" key={index}>
            <h2 className="class-title">{classItem.id}e Classe</h2>
            <p className="class-description">
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
