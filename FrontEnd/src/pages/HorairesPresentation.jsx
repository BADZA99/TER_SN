import React, { useEffect, useState } from "react";
import axios from "axios";

export default function Horaires() {
  const [horaires, setHoraires] = useState([]);
  const days = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi"];

  useEffect(() => {
    axios
      .get("horaires")
      .then((response) => {
        setHoraires(response.data);
      })
      .catch((error) => {
        console.error("There was an error!", error);
      });
  }, []);

  const styles = {
    container: {
      width: "40%",
      padding: "15px",
      margin: "0 auto",
    },
    table: {
      width: "100%",
      borderCollapse: "collapse",
      textAlign: "center",
      marginBottom:'35px'
    },
    th: {
      border: "1px solid black",
      padding: "10px",
    },
    td: {
      border: "1px solid black",
      padding: "10px",
    },
    day:{
        textAlign:'center',
        fontWeight:"bold",
        fontSize:'40px',

    }
  };


  return (
    <>
    <h1>Nos Horaires</h1>
    <div style={styles.container}>
      {days.map((day, index) => (
        <div key={index}>
          <strong style={styles.day}>{day}</strong>:
          <table style={styles.table}>
            <thead>
              <tr>
                <th style={styles.th}>Heure de départ</th>
                <th style={styles.th}>Heure d'arrivée</th>
              </tr>
            </thead>
            <tbody>
              {horaires.map((horaire, index) => (
                <tr key={index}>
                  <td style={styles.td}>{horaire.start_time}</td>
                  <td style={styles.td}>{horaire.end_time}</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      ))}
    </div>
    </>
  );
}
