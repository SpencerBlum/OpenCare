
import React from 'react';

const BusinessCard = (props) => {

return(
    <div className= "business-card">

    <div className="card-img" >
    <img  src={require("../images/testimg.png")} width = "100px" /> 
    </div>
    <div className="card-content">
    <p> name </p>

    <p> stars  </p>

    <label> Description:</label>
    <p> description here</p>

    </div>
    
    </div>

)
}
export default BusinessCard