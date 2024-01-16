import React, { useState, useEffect } from "react";
import axios from "axios";
import "../css/zonePresentation.css";

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
   <div className="zones-container">
     <h1 className="zones-title">Zones de voyage du TER</h1>
     <table className="zones-table">
       <thead>
         <tr>
           <th>Classes</th>
           <th>Trajets</th>
         </tr>
       </thead>
       <tbody>
         {zones.map((zone) => (
           <tr
             key={zone.id}
             className={zone.id % 2 === 0 ? "first-class" : "second-class"}
           >
             <td>{zone.id % 2 === 0 ? "Premiere Classe" : "Seconde Classe"}</td>
             <td>{zone.description}</td>
           </tr>
         ))}
       </tbody>
     </table>
   </div>
 );
}
