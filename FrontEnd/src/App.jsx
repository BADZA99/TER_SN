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
import HorairesPresentation from './pages/HorairesPresentation';
import ZonesPresentation from './pages/ZonesPresentation';
import Horaires from './pages/Horaires';
import Succes from './pages/Succes';
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
      // setUser(response.data);
      // console.log(user)
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
          <Route path="/succes" element={<Succes />} />
          <Route path="/classesPresentation" element={<ClassePresentation />} />
          <Route path="/zonesPresentation" element={<ZonesPresentation />} />
          <Route path="/horaires" element={<Horaires />} />
          <Route
            path="/horairesPresentation"
            element={<HorairesPresentation />}
          />
          <Route path="/myProfile" element={user ? <Profile /> : <Default />} />
          <Route path="/home" element={user ? <Home /> : <Login />} />
          <Route path="/" element={<Default />} />
          <Route path="/prices" element={<Prices />} />
          <Route
            path="/mestickets"
            element={user ? <MyTickets /> : <Default />}
          />
          <Route path="/zones" element={user ? <Zones /> : <Default />} />
          <Route path="/classes" element={user ? <Classes /> : <Default />} />
          <Route path="/register" element={user ? <Default /> : <Register />} />
          <Route path="/login" element={user ? <Home /> : <Login />} />
        </Routes>
      </Router>
    </>
  );
}

export default App
