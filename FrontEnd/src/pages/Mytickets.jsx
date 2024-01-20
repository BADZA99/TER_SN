import React, { useEffect, useState } from "react";
import axios from "axios";
import userStore from "../store/userStore";
import QRCode from "react-qr-code";
import useUserStore from "../store/userStore";
import "../css/mytickets.css";

const MyTickets = () => {
  const [tickets, setTickets] = useState([]);
  const {
    user,
    SavedClassChoice,
    zoneChoice,
    nbTicket,
    TotalToPay,
    depart_time,
  } = useUserStore();

  const InfosTickets = `
      Bonjour ${user.name},
      Vous avez reserve ${nbTicket} tickets pour le ${depart_time} en ${SavedClassChoice} en zone ${zoneChoice}.
      Le montant total a payer est de ${TotalToPay} .`;

  // creer la fonction pour fetch les tickets du user
  const fetchTickets = async () => {
    try {
      const response = await axios
        .get(`tickets/${user.id}`)
        .then((response) => {
          setTickets(response.data);
        });
    } catch (error) {
      console.error("Failed to fetch tickets", error);
    }
  };

  useEffect(() => {
    // axios
    //   .get(`tickets/${user.id}`)
    //   .then((response) => {
    //     setTickets(response.data);
    //   })
    //   .catch((error) => {
    //     console.error("There was an error!", error);
    //   });
    fetchTickets();
  }, []);

  const styles = {
    container: {
      width: "100%",
      padding: "20px",
    },
    row: {
      display: "flex",
      flexWrap: "wrap",
      justifyContent: "space-between",
    },
    card: {
      width: "30%",
      border: "1px solid #ccc",
      borderRadius: "10px",
      marginBottom: "20px",
      padding: "20px",
      boxShadow: "2px 2px 6px 0px rgba(0,0,0,0.2)",
    },
    link: {
      color: "blue",
      textDecoration: "none",
    },
    text: {
      textAlign: "center",
    },
  };

  return (
    <div className="tickets-container">
      <h1 className="tickets-title">Mes Tickets</h1>
      <div className="tickets-row">
        {tickets.length !== 0 &&
          tickets.map((ticket, index) => (
            <div className="ticket-card" key={index}>
              <h2 className="ticket-title">Ticket N°{ticket.id}</h2>
              <p className="ticket-details">
                Classe: {ticket.class_id}e classe <br />
                Zone:{" "}
                {ticket.zone_id === 1
                  ? "Dakar->Guediewaye"
                  : ticket.zone_id === 2
                  ? "Dakar->Pikine"
                  : ticket.zone_id === 3
                  ? "Dakar->Diamniadio"
                  : ticket.zone_id === 4
                  ? "Dakar->Guediewaye"
                  : ticket.zone_id === 5
                  ? "Dakar->Pikine"
                  : ticket.zone_id === 6
                  ? "Dakar->Diamniadio"
                  : "zone non defini"}{" "}
                <br />
                Nombre de Tickets: {ticket.num_tickets} <br />
                Montant: {ticket.amount} Fcfa
              </p>
              <QRCode
                size={16}
                style={{ height: "100px", maxWidth: "60%", width: "100%",
                margin: "auto" }}
                value={ticket.qr_code}
                viewBox={`0 0 16 16`}
              />
            </div>
          ))}
        {tickets.length === 0 ? (
          <h1 className="no-tickets-message">
            Vous n'avez pas encore acheté de tickets
          </h1>
        ) : (
          ""
        )}
      </div>
    </div>
  );
};

export default MyTickets;
