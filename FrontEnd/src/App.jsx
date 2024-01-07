import { useState } from 'react'
import { Routes, Route,   BrowserRouter as Router } from 'react-router-dom';
import Login from './pages/Login';;
import Home from './pages/Home';
import Register from './pages/Register';
import Zones from './pages/Zones';
import Classes from './pages/Classes';
import Prices from './pages/Prices';
import Default from './pages/Default';
import MyTickets from './pages/Mytickets';
import Profile from './pages/Profile';
import ClassePresentation from './pages/ClassesPresentation';

import Navbar from "./Components/Navbar";
// import la page infosreservations dans pages
import InfosReservation from "./pages/infosReservation"
import axios from "axios";
import Axios from 'axios';
import './index.css';
import { useEffect } from 'react';
import userStore from './store/userStore';

Axios.defaults.baseURL='http://localhost:8000/api/';
// pass cookie from the backend
Axios.defaults.withCredentials=true;


function App() {
  const { user, setUser } = userStore();
  const { SavedClassChoice, setSavedClassChoice } = userStore();
  const { ticketPrice, setTicketPrice } = userStore();
  // console.log(user, SavedClassChoice, ticketPrice);
  // garder le user connecte
  const fetchConnectedUser = async () => {
    try {
      const response = await axios.get("user");
      //  console.log(response.data);
      setUser(response.data);
      //  setMessage(`hi ${response.data.email}`);
    } catch (e) {
      console.log(e);
    }
  };
   useEffect(() => {
     fetchConnectedUser();
   }, []);

  return (
    <>
      <Router>
        <Navbar />
        <Routes>
          <Route path="/infosReservation" element={<InfosReservation />} />
          <Route path="/classesPresentation" element={<ClassePresentation />} />
          <Route path="/myProfile" element={<Profile />} />
          <Route path="/home" element={<Home />} />
          <Route path="/" element={<Default />} />
          <Route path="/prices" element={<Prices />} />
          <Route path="/mestickets" element={<MyTickets />} />
          <Route path="/zones" element={<Zones />} />
          <Route path="/classes" element={<Classes />} />
          <Route path="/register" element={<Register />} />
          <Route path="/login" element={<Login />} />
        </Routes>
      </Router>
    </>
  );
}

export default App
