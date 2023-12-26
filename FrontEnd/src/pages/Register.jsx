
import { useState } from "react";
import { useForm } from "react-hook-form";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const styles = {
  container: {
    display: "flex",
    flexDirection: "column",
    justifyContent: "center",
    alignItems: "center",
    height: "90vh",
    backgroundColor: "#f8f9fa",
  },
  form: {
    display: "flex",
    height: "60%",
    flexDirection: "column",
    justifyContent: "space-evenly",
    alignItems: "center",
    width: "350px",
    padding: "20px",
    borderRadius: "5px",
    backgroundColor: "#fff",
    boxShadow: "0px 0px 10px rgba(0, 0, 0, 0.5)",
  },
  input: {
    marginBottom: "5px",
    padding: "15px",
    borderRadius: "5px",
    width: "85%",
    border: "1px solid #ddd",
  },
  button: {
    padding: "10px",
    borderRadius: "5px",
    border: "none",
    backgroundColor: "#303f9f",
    color: "#fff",
    cursor: "pointer",
  },
  error: {
    color: "red",
  },
  modal:{
    backgroundColor:"green",
    color:"white",
    padding:"10px",
    marginBottom:"10px"
  }
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
    <div style={styles.container}>
     {
        openModal && (
          <div style={styles.modal}>
            Votre compte a été créé avec succès. Vous allez être redirigé vers la page de connexion dans 5s
          </div>
        )
     }
      <form style={styles.form} onSubmit={handleSubmit(onSubmit)}>
        <input
          type="text"
          placeholder="Nom"
          style={styles.input}
          {...register("name", { required: true, maxLength: 20, minLength: 5 })}
        />
        {errors.name && errors.name.type === "required" && (
          <span style={styles.error}>Le champ name est requis</span>
        )}
        <input
          type="email"
          placeholder="Email"
          style={styles.input}
          {...register("email", { required: true, pattern: /^\S+@\S+$/i })}
        />
        {errors.email && errors.email.type === "required" && (
          <span style={styles.error}>Le champ email est requis</span>
        )}
        {errors.email && errors.email.type === "pattern" && (
          <span style={styles.error}>Le champ email est invalide</span>
        )}
        <input
          type="password"
          placeholder="Mot de passe"
          style={styles.input}
          {...register("password", {
            required: true,
            maxLength: 20,
            minLength: 5,
          })}
        />
        {errors.password && errors.password.type === "required" && (
          <span style={styles.error}>Le champ password est requis</span>
        )}
        <button type="submit" style={styles.button}>
          Inscription
        </button>
      </form>
    </div>
  );
}
