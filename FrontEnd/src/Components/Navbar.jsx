import React from 'react'
import { Link } from 'react-router-dom'
import userStore from "../store/userStore";
import axios from "axios";
import './Navbar.css';
import snFlag from '../assets/senegal.svg'





export default function Navbar() {
  const { user, setUser } = userStore();
  // console.log(user)
  const logout = async () => {
    try {
      const response = await axios.post(
        "logout",
        {
          email: user.email,
        }
      );
      setUser(null);
      localStorage.removeItem("token");
    } catch (e) {
      console.log(e);
    }
  }

  return (
    <nav className="navbar">
      <Link className="logo-link" to={user ? "/home" : "/"}>
        <h1>SNTER
        <img className="sn-flag" src={snFlag} alt="sn-flag" />
        </h1>
      </Link>
      <div className="navbar-links">
        <Link to={user ? "/home" : "/"}>Acceuil</Link>
        <Link to="/classesPresentation">Classes</Link>
        <Link to="/zonesPresentation">Zones</Link>
        <Link to="/horairesPresentation">Horaires</Link>
        {
          user && user.name === "badara" && (
            <Link to="/allUser">Utilisateurs</Link>
          )
        }
        {user && (
          <>
            <Link to="/mestickets">Mes tickets</Link>
            <Link to="/myProfile">Mon profile</Link>
          </>
        )}
      </div>
      <div className="auth-links">
        {user == null ? (
          <>
            <Link to="/login">Connexion</Link>
            <Link to="/register">Inscription</Link>
          </>
        ) : (
          <Link to="/" onClick={logout}>
            Deconnexion
          </Link>
        )}
      </div>
    </nav>
  );
}