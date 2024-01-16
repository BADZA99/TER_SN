import React from 'react'
import { Link } from 'react-router-dom';
import useUserStore from '../store/userStore';
import '../css/default.css';

export default function Default() {
    const { user, setUser } = useUserStore();

  return (
    <div className="default-container">
      <h1>Bienvenue sur l'application TER BI</h1>
      <p>Achetez vos tickets de train en toute simplicité</p>
      {user && <Link to="/classes">Acheter un ticket</Link>}
    </div>
  );
}
