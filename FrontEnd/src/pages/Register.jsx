
import { useState } from "react";
import { useForm } from "react-hook-form";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import '../css/signup.css'

const styles = {
 

  error: {
    color: "red",
  },

};

export default function Register() {
  const navigate = useNavigate();
  const [openModal,setOpenModal]=useState(false);
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  const onSubmit = async (data) => {
    try {
      const response = await axios.post("register", {
        name: data.name,
        email: data.email,
        password: data.password,
      });
      console.log(response);
      setOpenModal(true);
      // fais une pause de 10s avant de rediriger vers login
      setTimeout(() => {
        navigate("/login");
      }, 5000);
    } catch (err) {
      console.log(err);
    }

    // console.log(data);
  };

  return (
    <div className="container">
      <div className="left">
        <h1>Welcome</h1>
      </div>
      <div className="right">
        {openModal && (
          <div className="modal">
            Votre compte a été créé avec succès. Vous allez être redirigé vers
            la page de connexion dans 5s
          </div>
        )}
        <form onSubmit={handleSubmit(onSubmit)} className="register-form">
          <h2>Inscription</h2>
          <input
            type="text"
            placeholder="Nom"
            {...register("name", {
              required: true,
              maxLength: 20,
              minLength: 5,
            })}
          />
          {errors.name && errors.name.type === "required" && (
            <span style={styles.error}>Le champ name est requis</span>
          )}
          {errors.name && errors.name.type === "maxLength" && (
            <span style={styles.error}>Le champ name est trop long</span>
          )}
          {errors.name && errors.name.type === "minLength" && (
            <span style={styles.error}>Le champ name est trop court</span>
          )}
          <input
            type="email"
            placeholder="Email"
            {...register("email", {
              required: true,
              pattern: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/,
            })}
          />
          {errors.email && errors.email.type === "required" && (
            <span>Le champ email est requis</span>
          )}
          {errors.email && errors.email.type === "pattern" && (
            <span>Le champ email est invalide</span>
          )}
          <input
            type="password"
            placeholder="Mot de passe"
            {...register("password", {
              required: true,
              maxLength: 20,
              minLength: 5,
            })}
          />
          {errors.password && errors.password.type === "required" && (
            <span>Le champ password est requis</span>
          )}
          <button type="submit">Inscription</button>
        </form>
      </div>
    </div>
  );
}
