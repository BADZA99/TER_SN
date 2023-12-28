import React, { useState, useEffect } from "react";
import axios from "axios";
import userStore from "../store/userStore";
import { useNavigate } from "react-router-dom";

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
  zoneCard: {
    display: "flex",
    // flexDirection: "column",
    justifyContent: "space-between",
    alignItems: "center",
    width: "400px",
    padding: "20px",
    margin: "10px",
    borderRadius: "5px",
    backgroundColor: "#fff",
    boxShadow: "0px 0px 10px rgba(0, 0, 0, 0.1)",
  },
  zoneName: {
    fontSize: "1.5em",
    color: "#303f9f",
  },
  zoneClass: {
    color: "#555",
  },
};

export default function Zones() {
  const { SavedClassChoice, setSavedClassChoice } = userStore();
  // const { user, setUser } = userStore();
  // const [savedClassChoice, setSavedClassChoice] = useState(classChoice);
  const { zoneChoice, setZoneChoice } = userStore();
  const navigate = useNavigate();
  const [zones, setZones] = useState([]); 
  const toPrices = (zoneName) => {
    setZoneChoice(zoneName);
    // navigate("/prices");
  };
// console.log(user,classChoice)
  const fetchZones = async () => {
    try {
      const response = await axios.get("zone");
      // console.log(response);
      setZones(response.data);
    } catch (error) {
      console.error("Failed to fetch zones", error);
    }
  };

  useEffect(() => {
    fetchZones();
    // console.log(SavedClassChoice);
  }, []);

  return (
    <div style={styles.container}>
      <h1 style={styles.title}>Choisir Votre Zone</h1>
      {zones && zones
        .filter((zone) => zone.class_id === SavedClassChoice)
        .map((zone, index) => (
          <div
            key={index}
            style={styles.zoneCard}
            onClick={() => toPrices(zone.name)}
          >
            <h2 style={styles.zoneName}>{zone.name}</h2>
            <h2 style={styles.zoneName}>
              {zone.class_id == 1 ? "1ere classe" : "2nd classe"}
            </h2>
            <p style={styles.zoneClass}>{zone.description}</p>
          </div>
        ))}
        {
          zones.length === 0 && <h1>PAS DE ZONES .....</h1>
        }
    </div>
  );
}
