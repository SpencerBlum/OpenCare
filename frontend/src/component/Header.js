import React from "react"
import { useHistory } from "react-router-dom";
import { useSelector,useDispatch } from 'react-redux'



const Header = () => {

    const history = useHistory();
    const {currentUser} = useSelector(state => {
        return {currentUser: state.currentUser }
    })

const handleRoute = (e) => {
    history.push(e.target.name)
}

console.log(currentUser)
return(
    <div className= "headerContainer" >
    <div className="input-div"> 
        <input className="input-box" type="text" placeholder={"Camp or childcare"} />
        <input  className="input-box" type="text" placeholder={"Location"} />
        <button> Submit </button>
    </div>

    { currentUser? "" : <button  onClick={(e) => handleRoute(e)} name= "/Login"> Login </button>}
    { currentUser? "" : <button onClick={(e) => handleRoute(e)}  name="/Signup" > Signup  </button>}
    </div>
)
}
export default Header