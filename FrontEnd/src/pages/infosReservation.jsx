import React from "react";
import useUserStore from "../store/userStore";
// import QRCode from "react-qr-code";
import QRCode from "qrcode.react";

export default function infosReservation() {
  const { user, SavedClassChoice, zoneChoice, nbTicket, TotalToPay } =
    useUserStore();
//  console.log(zoneChoice)
    const value = `Classe: ${SavedClassChoice} \n Zone: ${zoneChoice} \n Nombre de tickets: ${nbTicket} \n Total a payer: ${TotalToPay} fcfa`;
    const reservationUrl = `http://http://localhost:5173/infosReservation?class=${SavedClassChoice}&zone=${zoneChoice}&tickets=${nbTicket}&total=${TotalToPay}`;

  return (
    <div>
      <h2>User Information</h2>
      <p>Name: {user?.name}</p>
      <p>Email: {user?.email}</p>

      <h2>Reservation Information</h2>
      <p>Classe: {SavedClassChoice == 1 ? "1ere Classe" : "2e Classe"}</p>
      <p>
        Zone:{" "}
        {zoneChoice === "Zone 1"
          ? "Dakar Guediewaye"
          : zoneChoice === "Zone 2"
          ? "Dakar Pikine"
          : zoneChoice === "Zone 3"
          ? "Dakar Diamniadio"
          : "zone non defini"}
      </p>
      <p>Number of tickets: {nbTicket}</p>
      <p>Total a payer: {TotalToPay} fcfa</p>

      {/* <QRCode
        size={16}
        style={{ height: "auto", maxWidth: "30%", width: "100%" }}
        value={value}
        viewBox={`0 0 16 16`}
      /> */}
      <QRCode value={reservationUrl} />
    </div>
  );
}
