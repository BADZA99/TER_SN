import React, { useState } from "react";
import useUserStore from "../store/userStore";
import { useNavigate } from "react-router-dom";
import QRCode from "react-qr-code";


const styles = {
  container: {
    display: "flex",
    flexDirection: "column",
    justifyContent: "center",
    alignItems: "center",
    height: "80vh",
    width: "50%",
    backgroundColor: "#f1f1f1",
    margin: "10% auto"
  },
  title: {
    fontSize: "1.5em",
    color: "#303f9f",
  },
  ticketInput: {
    margin: "20px 0",
    padding: "10px",
    fontSize: "1em",
  },
  total: {
    fontSize: "1.5em",
    color: "#303f9f",
  },
  button: {
    margin: "0 10px",
    padding: "10px 20px",
    fontSize: "1em",
    color: "#fff",
    backgroundColor: "#007bff",
    border: "none",
    borderRadius: "5px",
    cursor: "pointer",
  },
  buttonDisabled: {
    backgroundColor: "#6c757d",
  },
};


export default function Prices() {
  const [ticketCount, setTicketCount] = useState(0);
  const { nbTicket, setNbTicket } = useUserStore();
  const { ticketPrice, setTicketPrice } = useUserStore();
  const { TotalToPay, setTotalToPay } = useUserStore();
  const navigate = useNavigate();


  const incrementTicketCount = () => {
    setTicketCount(ticketCount + 1);
  };

  const decrementTicketCount = () => {
    if (ticketCount > 0) {
      setTicketCount(ticketCount - 1);
    }
  };

  const validate = () => {
    // Here you can handle the validation logic
    console.log(
      `You have purchased ${ticketCount} tickets for a total of ${total}`
    );
    setNbTicket(ticketCount);
    setTotalToPay(total);
    navigate("/infosReservation");
  };

  const total = ticketCount * ticketPrice;

  return (
    <div style={styles.container}>
      <h1 style={styles.title}>Choisi le nombre de tickets</h1>
      <div>
        <button
          style={styles.button}
          onClick={decrementTicketCount}
          disabled={ticketCount === 0}
        >
          -
        </button>
        <span>{ticketCount}</span>
        <button style={styles.button} onClick={incrementTicketCount}>
          +
        </button>
      </div>
      <p style={styles.total}>Total a payer: {total} fcfa</p>
      <button style={styles.button} onClick={validate}>
        Validate
      </button>
   
    </div>
  );
}
