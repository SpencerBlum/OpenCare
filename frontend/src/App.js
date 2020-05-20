import React, { Component } from 'react';
import './App.css';
import { renderBusinessCards, businessNameSearch, locationSearch } from "./actions/search.js";



import { connect } from 'react-redux'

import  Home from "./main/Home.js"
import  Login from "./main/Login.js"
import  Show from "./main/Show.js"
import  SignUp from "./main/SignUp.js"
import  Review from "./main/Review.js"

import  Profile from "./main/Profile.js"
import  ResetPassword from "./main/ResetPassword.js"
import  EditInfo from "./main/EditInfo.js"


import { BrowserRouter as Router, Route, Redirect } from 'react-router-dom';

import { loadAllTraits } from './actions/filter.js'

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

})

fetch('http://localhost:3000/traits')
.then(response => response.json())
.then(data => {
console.log('Success:', data);
this.props.loadAllTraits(data)
})
.catch((error) => {
console.error('Error:', error);
});
  }


  renderBusinessesFilter = ()=> {
    let array = this.props.allBusinesses
    console.log(this.props.currentBusinessSearch)
      
      if(this.props.currentBusinessSearch !== ""){
      array =  array.filter(el => { 
        return el.name.toLowerCase().includes(this.props.currentBusinessSearch.toLowerCase()) 
      })
    }

    if(this.props.currentLocationSearch !== ""){
      array =  array.filter(el => { 
        return el.city.toLowerCase().includes(this.props.currentLocationSearch.toLowerCase()) 
      })
    }

  if(this.props.checkedTraits.length > 0)
  {
    array = array.filter((business)=> {
      console.log(business)
      console.log(business.traits.length)
 
      let retVal = false;
      if(business.traits.length>0 && this.props.checkedTraits.length > 0)
      {
        business.traits.forEach(trait => {
          this.props.checkedTraits.forEach(checkedTrait =>
            {
              if(trait.name === checkedTrait)
              {
                retVal = true;
                
              }
            }
          )
        });
      }
    

      return retVal;
    })
  }
    this.props.renderBusinessCards(array)
  }



render(){

  this.renderBusinessesFilter()
 
  return (

    // { this.props.currentBusinessSearch !== ""?  this.renderBusinessesFilter() : null}
    <Router >
      <div>
      <Route exact path="/" render={() => <Home  /> } />
      <Route exact path="/Login" render={() => <Login /> } />
      <Route exact path="/Show" render={() => <Show /> } />
      <Route exact path="/SignUp" render={() => <SignUp /> } />
      <Route exact path="/Review" render={() => <Review /> } />
      <Route exact path="/profile" render={() => <Profile /> } />
      <Route exact path="/Reset-Password" render={() => <ResetPassword /> } />
      <Route exact path="/Edit-Info" render={() => <EditInfo /> } />
      </div>
    </Router>
  );
}
}

const mapStateToProps = state =>  {
    return {
      allBusinesses: state.allBusinesses,
      currentBusinessSearch: state.currentBusinessSearch,
      currentLocationSearch: state.currentLocationSearch,
      checkedTraits: state.checkedTraits
      }
}

const mapDispatchToProps = dispatch => {
  return {
    loadBusinesses: (businesses) => dispatch({ type: "Load_Businesses", payload: businesses }),
    renderBusinessCards: (businesses) => dispatch(renderBusinessCards(businesses)),
    
    businessNameSearch: (name) => dispatch(businessNameSearch(name)),
    locationSearch: (location) => dispatch(locationSearch(location)),
    loadAllTraits: (traits) => dispatch(loadAllTraits(traits)),
    
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(App);
