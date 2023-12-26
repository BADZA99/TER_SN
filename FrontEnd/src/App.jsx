import { useState } from 'react'
import { Routes, Route,   BrowserRouter as Router } from 'react-router-dom';
import Login from './pages/Login';;
import Home from './pages/Home';
import Register from './pages/Register';
import Zones from './pages/Zones';
import Classes from './pages/Classes';
import Navbar from "./Components/Navbar";
import Axios from 'axios';
import './index.css';

Axios.defaults.baseURL='http://localhost:8000/api/';

function App() {

  return (
    <>

      <Router>
        <Navbar/>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/zones" element={<Zones />} />
          <Route path="/classes" element={<Classes />} />
          <Route path="/register" element={<Register />} />
          <Route path="/login" element={<Login />} />
        </Routes>
      </Router>
    </>
  )
}

export default App
