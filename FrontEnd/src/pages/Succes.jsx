import { Link } from 'react-router-dom';
import useUserStore from '../store/userStore';
import QRCode from "react-qr-code";
import '../css/succes.css';


export default function Succes() {
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

      const reservationUrl = `http://http://localhost:5173/infosReservation?class=${SavedClassChoice}&zone=${zoneChoice}&tickets=${nbTicket}&total=${TotalToPay} fcfa`;
      // cree ici du texte formate avec tous les information de la reservation
      const InfosTickets = `
      Bonjour ${user?.name},
      Vous avez reserve ${nbTicket} tickets pour le ${depart_time} en ${SavedClassChoice}e classe pour la zone zone ${
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
      Le montant total a payer est de ${TotalToPay} fcfa .`;

  return (
    <>
      <h1 className="success">Reservation réussie</h1>
      <div className="qr-container">
        <QRCode
          className="qr-code"
          size={16}
          value={InfosTickets}
          viewBox={`0 0 16 16`}
        />
        <Link className="reservation-link" to="/infosReservation">
          Voir la réservation en ligne
        </Link>
        <p className="generated-link">lien genere {reservationUrl}</p>
      </div>
    </>
  );
}
