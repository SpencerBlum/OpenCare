
import React from "react"

import { useHistory } from "react-router-dom";
import { useSelector,useDispatch } from 'react-redux'

const EditInfo = () => {

const history = useHistory()

const handleSubmit = (e) => {


}

const handleBack = () => {
history.push("/Profile")

}


return(

    <div>
        <div>
        <h1> Edit User Info</h1>
        <form onSubmit= {(e)=> handleSubmit(e)} >
        <label> first Name: </label>
        <br/>
        <input type= "text" name = "firstname" /> 
        <br/>
        <br/>
        <label> LastName </label>
        <br/>
        <input type= "text" name = "newpassword"/> 
        <br/>
        <br/>
        <input type= "submit" value="Submit" />
        </form>
        <br/>
        <br/>
        <button onClick={handleBack}> Back</button>


        </div>


    </div>
)
}
export default EditInfo