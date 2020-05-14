import React, { Component } from 'react';
import './App.css';

import  Home from "./main/Home.js"
import  Login from "./main/Login.js"
import  Show from "./main/Show.js"
import  SignUp from "./main/SignUp.js"


import { BrowserRouter as Router, Route, Redirect } from 'react-router-dom';


class App extends Component {



  componentDidMount(){

  }
  
render(){
  return (
    <Router>
      <div>
      <Route exact path="/" render={() => <Home /> } />
      <Route exact path="/Login" render={() => <Login /> } />
      <Route exact path="/Show" render={() => <Show /> } />
      <Route exact path="/SignUp" render={() => <SignUp /> } />
      </div>
    </Router>
  );
}
}

export default App;
