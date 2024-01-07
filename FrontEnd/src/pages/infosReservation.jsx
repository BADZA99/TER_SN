import React from "react";
import useUserStore from "../store/userStore";
import QRCode from "react-qr-code";
// import QRCode from "qrcode.react";
import axios from "axios";
import { useEffect } from "react";

export default function infosReservation() {
  const { user, SavedClassChoice, zoneChoice, nbTicket, TotalToPay } =
    useUserStore();

const today = new Date();
today.setDate(today.getDate() + 7);
const dateExpInFrench =
  today.getFullYear() +
  "-" +
  (today.getMonth() + 1).toString().padStart(2, "0") +
  "-" +
  today.getDate().toString().padStart(2, "0");
console.log(dateExpInFrench);
    // console.log(dateInFrench);
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
        // console.error("Response data:", error.response.data);
        // console.error("Response status:", error.response.status);
        // console.error("Response headers:", error.response.headers);
      }
    };

    useEffect(()=>{
      saveTicket(user, SavedClassChoice, zoneChoice, nbTicket, TotalToPay,
      dateExpInFrench,reservationUrl);
         console.log(
           user.id,
           SavedClassChoice,
           zoneChoice,
           nbTicket,
           TotalToPay,
           dateExpInFrench,
           reservationUrl
         );
    },[]);
//  console.log(zoneChoice)
 

  return (
    <div>
      <h2>User Information</h2>
      <p>Name: {user?.name}</p>
      <p>Email: {user?.email}</p>

      <h2>Reservation Information</h2>
      <p>Classe: {SavedClassChoice == 1 ? "1ere Classe" : "2e Classe"}</p>
      <p>
        Zone:{" "}
        {zoneChoice === 1
          ? "Dakar Guediewaye"
          : zoneChoice === 2
          ? "Dakar Pikine"
          : zoneChoice === 3
          ? "Dakar Diamniadio"
          : "zone non defini"}
      </p>
      <p>Number of tickets: {nbTicket}</p>
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
