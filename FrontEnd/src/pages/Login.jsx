import React, { useState } from 'react'
import { useForm } from "react-hook-form";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import userStore from "../store/userStore";
import { useEffect } from 'react';
import '../css/login.css';

const styles = {
  error: {
    color: 'red'
  }
}

export default function Login() {
  const navigate = useNavigate();
  const { user, setUser } = userStore();
  // console.log(user)
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
       console.log(response.data);
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

      navigate("/home");
    } catch (error) {
      console.log(error);
    }
  };



  return (
    <div className="container">
      <div className="left">
        <h1>Welcome back</h1>
      </div>
      <div className="right">
        <form onSubmit={handleSubmit(onSubmit)} className="login-form">
          <h2>Connexion</h2>
          <input
            type="email"
            placeholder="Email"
            {...register("email", {
              required: true,
              pattern: /^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/,
            })}
          />
          {errors.email && <span style={styles.error}>Email invalide</span>}
          <input
            type="password"
            placeholder="Mot de passe"
            {...register("password", {
              required: "Le mot de passe est obligatoire.",
            })}
          />
          <button type="submit">Connexion</button>
        </form>
      </div>
    </div>
  );
}