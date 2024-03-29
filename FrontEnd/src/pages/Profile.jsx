import React, { useEffect, useState } from "react";
import axios from "axios";
import '../css/profil.css'

const Profile = () => {
  const [user, setUser] = useState({});

  useEffect(() => {
    axios
      .get("user")
      .then((response) => {
        setUser(response.data);
      })
      .catch((error) => {
        console.error("There was an error!", error);
      });
  }, []);

  const styles = {
    container: {
      width: "100%",
      padding: "20px",
      height: "100%",
      fontSize: "30px",
    },
    card: {
      width: "80%",
      border: "1px solid #ccc",
      borderRadius: "10px",
      marginBottom: "20px",
      padding: "20px",
      boxShadow: "2px 2px 6px 0px rgba(0,0,0,0.2)",
      margin: "0 auto",
      height: "100%",
      fontSize: "30px",
    },
  };

  return (
    <div className="profile-container">
      <h1 className="profile-title">Profil</h1>
      <div className="profile-card">
        <h2 className="profile-name">{user.name}</h2>
        <p className="profile-details">
          Email: {user.email} <br />
          Date d'inscription : {new Date(user.created_at).toLocaleDateString()}
        </p>
      </div>
    </div>
  );
};

export default Profile;
