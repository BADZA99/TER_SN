import React, { useState, useEffect } from "react";
import axios from "axios";

const AllUsers = () => {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    const fetchUsers = async () => {
      try {
        const response = await axios.get("/allusers");
        setUsers(response.data);
      } catch (error) {
        console.error(
          "Erreur lors de la récupération des utilisateurs:",
          error
        );
      }
    };

    fetchUsers();
  }, []);

  return (
    <div style={{ padding: "20px", backgroundColor: "#f5f5f5" }}>
      <h1 style={{ color: "#333", textAlign: "center" }}>
        Tous les utilisateurs
      </h1>
      {users.map((user, index) => (
        <div
          key={index}
          style={{
            margin: "10px",
            backgroundColor: "#fff",
            padding: "10px",
            boxShadow: "0 4px 8px 0 rgba(0,0,0,0.2)",
            transition: "0.3s",
            borderRadius: "5px", 
          }}
        >
          <h2 style={{ color: "#333" }}>{user.name}</h2>
          <p style={{ color: "#666" }}>{user.email}</p>
        </div>
      ))}
    </div>
  );
};

export default AllUsers;
