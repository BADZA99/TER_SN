import React from "react";
import useUserStore from "../store/userStore";
import QRCode from "react-qr-code";
// import QRCode from "qrcode.react";
import axios from "axios";
import { useEffect } from "react";
import { useRef } from "react";

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

  const saveTicket = async (
    user,
    SavedClassChoice,
    zoneChoice,
    nbTicket,
    TotalToPay,
    dateExpInFrench,
    reservationUrl
  ) => {
    try {
      const response = await axios.post("add-tickets", {
        user_id: user.id,
        class_id: SavedClassChoice,
        zone_id: zoneChoice,
        num_tickets: nbTicket,
        amount: TotalToPay,
        qr_code: reservationUrl,
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
         reservationUrl
       );
       hasSavedTicket.current = true;
     }
   }, []);


  return (
    <div>
      <h2>User Information</h2>
      <p>Name: {user?.name}</p>
      <p>Email: {user?.email}</p>

      <h2>Reservation Information</h2>
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
          : "zone non defini"}
      </p>
      <p>Heure de depart: {depart_time}</p>
      <p>Nombre de tickets: {nbTicket}</p>
      <p>Total a payer: {TotalToPay} fcfa</p>
      <QRCode
        size={16}
        style={{ height: "auto", maxWidth: "10%", width: "100%" }}
        value={reservationUrl}
        viewBox={`0 0 16 16`}
      />
      <a href={reservationUrl}>Voir la réservation en ligne</a>
      {/* afficher le lien genere */}
      <p>lien genere {reservationUrl}</p>
    </div>
  );
}
