import React, { useState } from "react";
import useUserStore from "../store/userStore";
import { Link, useNavigate } from "react-router-dom";
import QRCode from "react-qr-code";
import "../css/prices.css";





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
    setNbTicket(ticketCount);
    setTotalToPay(total);
    navigate("/succes");
  };

  const total = ticketCount * ticketPrice;

  return (
    <div className="ticket-selection">
      <Link className="buttonLink" to="/Horaires">
        Retour aux Horaires
      </Link>
      <h1 className="title">Choisi le nombre de tickets</h1>
      <div className="counter">
        <button
          className="counter-button"
          onClick={decrementTicketCount}
          disabled={ticketCount === 0}
        >
          -
        </button>
        <span className="counter-value">{ticketCount}</span>
        <button className="counter-button" onClick={incrementTicketCount}>
          +
        </button>
      </div>
      <p className="total">Total a payer: {total} fcfa</p>
      <button className="validate-button" onClick={validate}>
        Valider
      </button>
    </div>
  );
}
