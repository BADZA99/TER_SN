import React, { useState } from "react";

const styles = {
  container: {
    display: "flex",
    flexDirection: "column",
    justifyContent: "center",
    alignItems: "center",
    height: "100vh",
    backgroundColor: "#f8f9fa",
  },
  title: {
    fontSize: "2em",
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

const ticketPrice = 10;

export default function Prices() {
  const [ticketCount, setTicketCount] = useState(0);

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
      <p style={styles.total}>Total to pay: {total}</p>
      <button style={styles.button} onClick={validate}>
        Validate
      </button>
    </div>
  );
}
