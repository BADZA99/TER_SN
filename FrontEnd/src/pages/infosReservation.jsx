import React from "react";
import useUserStore from "../store/userStore";

export default function infosReservation() {
  const { user, SavedClassChoice, zoneChoice, nbTicket, TotalToPay } =
    useUserStore();
 console.log(zoneChoice)
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
          ? "Dakar Rufisque"
          : "zone bobu amoul"}
      </p>
      <p>Number of tickets: {nbTicket}</p>
      <p>Total a payer: {TotalToPay} fcfa</p>
    </div>
  );
}
