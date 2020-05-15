import React, { Component } from 'react';
import './App.css';

import { connect } from 'react-redux'

import  Home from "./main/Home.js"
import  Login from "./main/Login.js"
import  Show from "./main/Show.js"
import  SignUp from "./main/SignUp.js"



import { BrowserRouter as Router, Route, Redirect } from 'react-router-dom';


class App extends Component {



  componentDidMount(){

  fetch('http://localhost:3000/businesses')
.then(response => response.json())
.then(data => {
  console.log('Success:', data);
  this.props.loadBusinesses(data)
})
.catch((error) => {
  console.error('Error:', error);

});
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

const mapStateToProps = state =>  {
    return { allBusinesses: state.allBusinesses  }
}

const mapDispatchToProps = dispatch => {
  return {
    loadBusinesses: (businesses) => dispatch({ type: "Load_Businesses", payload: businesses }),
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(App);
