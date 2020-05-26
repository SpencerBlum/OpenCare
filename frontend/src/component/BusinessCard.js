
import React from 'react';

import { useHistory } from "react-router-dom";
import { useSelector, useDispatch } from 'react-redux'

const BusinessCard = (props) => {


   
    const history = useHistory();
    const {currentBusiness} = useSelector(state => {
        return {currentBusiness: state.currentBusiness }
    })



const handleCardClick = () => {
console.log("card clicked")
dispatch({type: "ADD_CURRENT_BUSINESS", payload: props.business})
if (currentBusiness !== {}){
    history.push(`/show/${props.business.name}/${props.business.id}`)
}

}
const dispatch = useDispatch()

return(
    <div  onClick = {handleCardClick} className= "business-card">

    <div className="card-img" >
    {/* <img  src={require("../images/testimg.png")} width = "100px" />  */}
    <img  src= {props.business.img_url} width = "200px" />
    </div>
    <div className="card-content">
    <p> {props.business.name} </p>

    <label> Description:</label>
    <p> {props.business.bio}  </p>

    </div>
    </div>

)
}
export default BusinessCard