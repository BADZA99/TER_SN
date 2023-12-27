import React, { useState } from 'react'
import { useForm } from "react-hook-form";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import userStore from "../store/userStore";
import { useEffect } from 'react';

const styles = {
  container: {
    display: 'flex',
    flexDirection: 'column',
    justifyContent: 'center',
    alignItems: 'center',
    height: '100vh',
    backgroundColor: '#f8f9fa'
  },
  form: {
    display: 'flex',
    flexDirection: 'column',
    width: '300px',
    padding: '20px',
    borderRadius: '5px',
    backgroundColor: '#fff',
    boxShadow: '0px 0px 10px rgba(0, 0, 0, 0.1)'
  },
  input: {
    marginBottom: '10px',
    padding: '10px',
    borderRadius: '5px',
    border: '1px solid #ddd'
  },
  button: {
    padding: '10px',
    borderRadius: '5px',
    border: 'none',
    backgroundColor: '#303f9f',
    color: '#fff',
    cursor: 'pointer'
  },
  error: {
    color: 'red'
  }
}

export default function Login() {
  const navigate = useNavigate();
  const { user, setUser } = userStore();
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  // garder le user connecte
   const fetchConnectedUser = async () => {
   try {
     const response = await axios.get('user');
    //  console.log(response.data);
      setUser(response.data);
    //  setMessage(`hi ${response.data.email}`);
   } catch (e) {
     console.log(e);
   }
 }
  const onSubmit = async (data) => {
    try {
      const response = await axios.post(
        "login",
        {
          email: data.email,
          password: data.password,
        }
      );
      // console.log(response);
      localStorage.setItem("token", response.data.token);
      fetchConnectedUser();

      navigate("/");
    } catch (error) {
      console.log(error);
    }
  };

  return (
    <div style={styles.container}>
      <form style={styles.form} onSubmit={handleSubmit(onSubmit)}>
        <input type="email" placeholder="Email" style={styles.input}
          {...register("email", { required: true 
            ,pattern: /^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/ })}
         />
        {errors.email && <span style={styles.error}>Email invalide</span>}
        <input type="password" placeholder="Mot de passe" style={styles.input}
        {...register("password", {required: "Le mot de passe est obligatoire."})}/>
        <button type="submit" style={styles.button}>Connexion</button>
      </form>
    </div>
  )
}