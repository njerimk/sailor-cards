import React from 'react'; 
import Home from './Home'
import Game from './Game'

import './App.css'
import {
  BrowserRouter as Router, 
  Switch,
  Route,
  Link
  } from "react-router-dom";


export default function App() {
  return (
    <Router>
      <div>
        <nav>
          <ul>
            <li>
              <Link to="/">Home</Link>
            </li>
            {/* <li>
              <Link to="/about">About</Link>
            </li> */}
            <li>
              <Link to="/game">Game</Link>
            </li>
          </ul>
        </nav>
          <Switch>
            {/* <Route path="/about">
              <About />
            </Route> */}
            <Route path="/game">
              < Game />
            </Route> 
            <Route path="/">
              <Home />
            </Route>
           
          </Switch>
        </div>
    </Router>

  
  )
};



 
