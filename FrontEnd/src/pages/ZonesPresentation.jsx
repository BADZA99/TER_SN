import React, { useState, useEffect } from "react";
import axios from "axios";

export default function ZonesPresentation() {
  const [zones, setZones] = useState([]);

  const styles = {
    table: {
      width: "80%",
      borderCollapse: "collapse",
      textAlign: "center",
      margin: "30px auto",
      border: "1px solid black",
    },
    th: {
      border: "1px solid #ddd",
      padding: "8px",
      backgroundColor: "#f2f2f2",
      textAlign: "center",
      fontSize: "25px",
    },
    td: {
      border: "1px solid #ddd",
      padding: "8px",
      textAlign: "center",
      fontSize: "25px",
    },
    firstClass: {
      backgroundColor: "lightblue",
    },
    secondClass: {
      backgroundColor: "lightgreen",
    },
  };

  useEffect(() => {
    axios
      .get("zone")
      .then((response) => {
        setZones(response.data);
      })
      .catch((error) => {
        console.error("There was an error!", error);
      });
  }, []);

 return (
   <table style={styles.table}>
     <thead>
       <tr>
         <th style={styles.th}>Classes</th>
         <th style={styles.th}>Trajets</th>
       </tr>
     </thead>
     <tbody>
       {zones.map((zone) => (
         <tr
           key={zone.id}
           style={zone.id % 2 === 0 ? styles.firstClass : styles.secondClass}
         >
           <td style={styles.td}>
             {zone.id % 2 === 0 ? "Premiere Classe" : "Seconde Classe"}
           </td>
           <td style={styles.td}>{zone.description}</td>
         </tr>
       ))}
     </tbody>
   </table>
 );
}
