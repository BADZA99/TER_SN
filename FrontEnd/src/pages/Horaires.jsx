import React, { useEffect, useState } from "react";
import axios from "axios";
import useUserStore from "../store/userStore";
// import usenavigate
import { useNavigate } from "react-router-dom";
import { Link } from "react-router-dom";
import "../css/horaireChoice.css";


 const styles = {
   container: {
   width: "50%",
   padding: "20px",
   display:'flex',
   flexDirection:'column',
   alignItems:'center',
   margin:'10px auto',
   height: "100%",
   },
   select: {
     width: "100%",
     height: "40px",
     marginTop: "20px",
     fontSize: "16px",
   },
 };

export default function Horaires() {
  const [selectedHoraire, setSelectedHoraire] = useState("");
  const [horaires, setHoraires] = useState([]);
  const { depart_time, setDepart_time } = useUserStore();
    const navigate = useNavigate();


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

  const handleSelectChange = (event) => {
    setSelectedHoraire(event.target.value);
    setDepart_time(event.target.value);
    navigate("/prices");
  };


  return (
    <div className="mainContainer">
      <Link className="buttonLink" to="/zones">
        Retour aux zones
      </Link>
      <h1 className="title">Choisissez votre horaire de départ</h1>
      <select
        className="horaireSelect"
        value={selectedHoraire}
        onChange={handleSelectChange}
      >
        {horaires.map((horaire, index) => (
          <option key={index} value={horaire.start_time}>
            {horaire.start_time}
          </option>
        ))}
      </select>
    </div>
  );
}
