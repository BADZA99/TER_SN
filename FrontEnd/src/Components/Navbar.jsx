import React from 'react'
import { Link } from 'react-router-dom'

const styles = {
  nav: {
    display: 'flex',
    justifyContent: 'space-between',
    width: '100%',
    padding: '10px',
    backgroundColor: '#1a237e',
    alignItems: 'center'
  },
  logo: {
    height: '80%',
    width: '30%',
    marginRight: '10px',
    color: '#fff',
    textDecoration: 'none',
    fontSize: '20px',
  },
  link: {
    marginRight: '10px',
    padding: '10px 20px',
    border: 'none',
    borderRadius: '5px',
    backgroundColor: '#fff',
    color: 'black',
    textDecoration: 'none',
    boxShadow: '0px 0px 5px rgba(0, 0, 0, 0.2)',
    transition: 'box-shadow 0.3s ease-in-out'
  },
  lastLink: {
    padding: '10px 20px',
    border: 'none',
    borderRadius: '5px',
    backgroundColor: 'black',
    color: '#fff',
    textDecoration: 'none',
    boxShadow: '0px 0px 5px rgba(0, 0, 0, 0.2)',
    transition: 'box-shadow 0.3s ease-in-out'
  },
  linkHover: {
    backgroundColor: 'red',
    boxShadow: '0px 0px 10px rgba(0, 0, 0, 0.4)'
  }
}

export default function Navbar() {
  return (
    <nav style={styles.nav}>
        {/* <img src="logo.png" alt="Logo" style={styles.logo} /> */}
        <Link to="/" style={styles.logo}><h1 >TER BI</h1></Link>
      <div>
        <Link to="/login" style={styles.link}>Connexion</Link>
        <Link to="/register" style={styles.lastLink}>Inscription</Link>
      </div>
    </nav>
  )
}