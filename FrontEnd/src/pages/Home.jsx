import axios from "axios";
import React, { useState } from 'react';
import { useEffect } from 'react';
import { Link } from 'react-router-dom';
import userStore from "../store/userStore";


const styles = {
  container: {
    display: 'flex',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    height: '90vh',
    textAlign: 'center',
    backgroundColor: '#f8f9fa'
  },
  title: {
    fontSize: '5.5em',
    color: '#1a237e'
  },
  subtitle: {
    fontSize: '1.5em',
    color: '#303f9f',
    marginBottom: '30px'
  },
  link: {
    padding: '10px 20px',
    border: 'none',
    borderRadius: '5px',
    backgroundColor: '#303f9f',
    color: '#fff',
    textDecoration: 'none'
  }
}

export default function Home() {
  const { user, setUser } = userStore();

 const [message, setMessage] = useState("");
  return (
    <div style={styles.container}>
      <h1 style={styles.title}>Bienvenue  {  user && ` ${user.name}` }</h1>
      <Link style={styles.link} to="/classes">Acheter un ticket</Link>
    </div>
  )
}