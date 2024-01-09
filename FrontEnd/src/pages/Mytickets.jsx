import React, { useEffect, useState } from "react";
import axios from "axios";
import userStore from "../store/userStore";


const MyTickets = () => {
  const [tickets, setTickets] = useState([]);
    const { user, setUser } = userStore();

    // creer la fonction pour fetch les tickets du user
    const fetchTickets = async () => {
        try {
            const response = await axios
              .get(`tickets/${user.id}`)
              .then((response) => {
                setTickets(response.data);
              }) 
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
    text:{
        textAlign:'center',
    }
  };

  return (
    <div style={styles.container}>
      <h1>Mes Tickets</h1>
      <div style={styles.row}>
        { tickets.length != 0 && tickets.map((ticket, index) => (
          <div style={styles.card} key={index}>
            <h2>Ticket {ticket.id}</h2>
            <p>
              Class: {ticket.class_id} <br />
              Zone: {ticket.zone_id} <br />
              Number of Tickets: {ticket.num_tickets} <br />
              Amount: {ticket.amount} Fcfa
            </p>
            <a style={styles.link} href={ticket.qr_code}>
              Voir QR Code
            </a>
          </div>
        ) )}
        {
            tickets.length == 0 && <h1>Vous n'avez pas encore acheté de tickets</h1>
        }
      </div>
    </div>
  );
};

export default MyTickets;
