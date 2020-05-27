import React from "react"
import { useHistory, useLocation } from "react-router-dom";
import { useSelector,useDispatch } from 'react-redux'
import Geocode from "react-geocode";

import { loadLat, loadLong } from '../actions/map.js'

import  {locationSearch, businessNameSearch } from "../actions/search.js"

const GOOGLE_API_KEY = `${process.env.REACT_APP_GOOGLE_MAP_KEY}`

const Header = (props) => {

    const history = useHistory();
    const {currentUser , currentRenderedBusinesses} = useSelector(state => {
        return {currentUser: state.currentUser, 
            currentRenderedBusinesses: state.currentRenderedBusinesses}
    })

    let location = useLocation();
  console.log(location.pathname);

    const dispatch = useDispatch()

    const getLatLng = (address) => {
        // set Google Maps Geocoding API for purposes of quota management. Its optional but recommended.
        Geocode.setApiKey(GOOGLE_API_KEY);
        // set response language. Defaults to english.
        Geocode.setLanguage("en");
        // set response region. Its optional.
        // A Geocoding request with region=es (Spain) will return the Spanish city.
        Geocode.setRegion("es");
        // Enable or disable logs. Its optional.
        Geocode.enableDebug();
    
        Geocode.fromAddress(address).then(
        response => {
            const { lat, lng } = response.results[0].geometry.location;
            dispatch(loadLat(lat))
            dispatch(loadLong(lng))
            
            // let obj = { 
            //     lat: lat,
            //     lng: lng
            // } 
    
            // console.log(obj)
            // return obj
        },
        error => {
            console.error(error);
        })
    }
    
      // static defaultProps = {
      //   center: {
      //     lat: 32.792610,
      //     lng: -79.93
      //   },
      //   zoom: 11
      // };
    
    const  dispatchCurrentMapLocation = (newA)=> {
        
        let address = newA
        getLatLng(address) 
        
      }

  

const handleRoute = (e) => {
    history.push(e.target.name)
}

const handleHeaderSubmit = (e) => {
        e.preventDefault()
        console.log(e.target.location.value)
        if(location.pathname !== "/"){
            history.push("/")
        }
        dispatch(businessNameSearch(e.target.businessSearch.value))
        dispatch(locationSearch(e.target.location.value))
        if(e.target.location.value != ""){
        dispatchCurrentMapLocation(e.target.location.value)
        }
       
        if(e.target.location.value == "" && e.target.businessSearch.value == "" ){
            console.log(currentRenderedBusinesses[0].address)
            dispatchCurrentMapLocation(currentRenderedBusinesses[0].address)
            console.log("happy")
            }
    }



return(
    <div className= "headerContainer" >
    <div className="input-div"> 
    <form onSubmit = {(e) => handleHeaderSubmit(e)}>
        <input className="input-box" name="businessSearch"  type="text" placeholder={"Camp or childcare"} />
        <input  className="input-box" name="location"  type="text" placeholder={"Location"} />
        <input type= "submit" value="Submit" />
    </form>
    </div>

    { currentUser? "" : <button  onClick={(e) => handleRoute(e)} name= "/Login"> Login </button>}
    { currentUser? "" : <button onClick={(e) => handleRoute(e)}  name="/Signup" > Signup  </button>}
    { currentUser?  <button onClick={(e) => handleRoute(e)}  name="/Profile" > Profile  </button>  : ""}
    {/* { currentUser?  <button onClick={(e) => handleRoute(e)}  name="/create-business" > Create Business  </button>  : ""} */}
    <button onClick={(e) => handleRoute(e)}  name="/business/form/new" > Create Business  </button> 
    </div>
)
}
export default Header