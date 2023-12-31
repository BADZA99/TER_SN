import React from 'react'
import { Link } from 'react-router-dom';
import useUserStore from '../store/userStore';
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
    fontSize: '2.5em',
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
export default function Default() {
    const { user, setUser } = useUserStore();

  return (
    <div style={styles.container}>
      <h1 style={styles.title}>Bienvenue sur l'application TER BI</h1>

      <p style={styles.subtitle}>
        Achetez vos tickets de train en toute simplicité
      </p>
      {user && (
        <Link style={styles.link} to="/classes">
          Acheter un ticket
        </Link>
      )}
    </div>
  );
}
