import React from "react"
import { useHistory, useLocation } from "react-router-dom";
import { useSelector,useDispatch } from 'react-redux'

import  {locationSearch, businessNameSearch } from "../actions/search.js"



const Header = (props) => {

    const history = useHistory();
    const {currentUser} = useSelector(state => {
        return {currentUser: state.currentUser }
    })

    let location = useLocation();
  console.log(location.pathname);

    const dispatch = useDispatch()

const handleRoute = (e) => {
    history.push(e.target.name)
}

const handleHeaderSubmit = (e) => {
  e.preventDefault()
  if(location.pathname !== "/"){
    history.push("/")
  }
  dispatch(businessNameSearch(e.target.businessSearch.value))
  dispatch(locationSearch(e.target.location.value))
  

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
    </div>
)
}
export default Header