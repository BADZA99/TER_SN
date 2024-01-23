import axios from "axios";
import React, { useState } from 'react';
import { useEffect } from 'react';
import { Link } from 'react-router-dom';
import userStore from "../store/userStore";
import '../css/home.css';




export default function Home() {
  const { user, setUser } = userStore();
  console.log(user);

 const [message, setMessage] = useState("");
  return (
    <div className="home-container">
      <h1>Bienvenue {user && ` ${user.name}`}</h1>
      <Link to="/classes">
        Acheter un ticket
      </Link>
    </div>
  );
}