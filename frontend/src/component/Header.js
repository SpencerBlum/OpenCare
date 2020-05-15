import React from "react"


const Header = () => {

return(
    <div className= "headerContainer" >
    <div className="input-div"> 
        <input className="input-box" type="text" placeholder={"Camp or childcare"} />
        <input  className="input-box" type="text" placeholder={"Location"} />
        <button> Submit </button>
    </div>
    </div>
)
}
export default Header