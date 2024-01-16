import React from "react";
import useUserStore from "../store/userStore";
import QRCode from "react-qr-code";
// import QRCode from "qrcode.react";
import axios from "axios";
import { useEffect } from "react";
import { useRef } from "react";
import '../css/inforeservation.css';
import { Link } from "react-router-dom";

export default function infosReservation() {
  const hasSavedTicket = useRef(false);


  const {
    user,
    SavedClassChoice,
    zoneChoice,
    nbTicket,
    TotalToPay,
    depart_time,
  } = useUserStore();

     console.log(
       SavedClassChoice,
       zoneChoice,
       nbTicket,
       TotalToPay,
       depart_time
     );



  const today = new Date();
  const dateIn7days=new Date();
  today.setDate(today.getDate());
  dateIn7days.setDate(today.getDate()+7);

  const Date_Aujourdhui = today.getDate().toString().padStart(2, "0") +
    "-" +
    (today.getMonth() + 1).toString().padStart(2, "0") +
    "-" +
    today.getFullYear();
  const dateExpInFrench =
    dateIn7days.getFullYear() +
    "-" +
    (dateIn7days.getMonth() + 1).toString().padStart(2, "0") +
    "-" +
    dateIn7days.getDate().toString().padStart(2, "0")
    ;

  const reservationUrl = `http://http://localhost:5173/infosReservation?class=${SavedClassChoice}&zone=${zoneChoice}&tickets=${nbTicket}&total=${TotalToPay}`;
  const InfosTickets = `
      Bonjour ${user?.name},
      Vous avez reserve ${nbTicket} tickets pour le depart a ${depart_time} en ${SavedClassChoice}eme classe pour la  zone ${
    zoneChoice === 1
      ? "Dakar->Guediewaye"
      : zoneChoice === 2
      ? "Dakar->Pikine"
      : zoneChoice === 3
      ? "Dakar->Diamniadio"
      : zoneChoice === 4
      ? "Dakar->Guediewaye"
      : zoneChoice === 5
      ? "Dakar->Pikine"
      : zoneChoice === 6
      ? "Dakar->Diamniadio"
      : "zone non defini"
  }.
      Le montant total a payer est de ${TotalToPay} Fcfa .`;

  const saveTicket = async (
    user,
    SavedClassChoice,
    zoneChoice,
    nbTicket,
    TotalToPay,
    dateExpInFrench,
    InfosTickets
  ) => {
    try {
      const response = await axios.post("add-tickets", {
        user_id: user.id,
        class_id: SavedClassChoice,
        zone_id: zoneChoice,
        num_tickets: nbTicket,
        amount: TotalToPay,
        qr_code: InfosTickets,
        date_exp: dateExpInFrench,
      });

      if (response.status === 200) {
        console.log("Ticket saved successfully");
      } else {
        alert("Failed to save ticket");
      }
    } catch (error) {
      console.error("An error occurred while saving the ticket:", error);
      // affiche les erreurs detaille
      console.log(error.response);

    }
  };

 
   useEffect(() => {
     if (!hasSavedTicket.current) {
       saveTicket(
         user,
         SavedClassChoice,
         zoneChoice,
         nbTicket,
         TotalToPay,
         dateExpInFrench,
         InfosTickets
       );
       hasSavedTicket.current = true;
     }
   }, []);


  return (
    <div className="info-div">
      <h2>Informations Utilisateur</h2>
      <p>Nom: {user?.name}</p>
      <p>Email: {user?.email}</p>

      <h2>Details Reservation </h2>
      <p>ticket fait le : {Date_Aujourdhui}</p>
      <p>Date d'expiration: {dateExpInFrench}</p>
      <p>Classe: {SavedClassChoice == 1 ? "1ere Classe" : "2e Classe"}</p>
      <p>
        Zone:{" "}
        {zoneChoice === 1
          ? "Dakar->Guediewaye"
          : zoneChoice === 2
          ? "Dakar->Pikine"
          : zoneChoice === 3
          ? "Dakar->Diamniadio"
          : zoneChoice === 4
          ? "Dakar->Guediewaye"
          : zoneChoice === 5
          ? "Dakar->Pikine"
          : zoneChoice === 6
          ? "Dakar->Diamniadio"
          : "zone non defini"}
      </p>
      <p>Heure de depart: {depart_time}</p>
      <p>Nombre de tickets: {nbTicket}</p>
      <p>Total a payer: {TotalToPay} fcfa</p>
      <QRCode
        size={16}
        style={{ height: "auto", maxWidth: "40%", width: "100%" }}
        value={InfosTickets}
        viewBox={`0 0 16 16`}
      />
      <p style={{ textAlign: "center", marginTop: "20px" }}>
        <Link to="/" style={{ color: "#303f9f", textDecoration: "none" }}>
          Retour à l'accueil
        </Link>
      </p>
      {/* <a href={reservationUrl}>Voir la réservation en ligne</a> */}
      {/* afficher le lien genere */}
      {/* <p>lien genere {reservationUrl}</p> */}
    </div>
  );
}
