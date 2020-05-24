import React from 'react';
import { useHistory } from "react-router-dom";
import { useSelector,useDispatch } from 'react-redux'


const Login = () => {

    const dispatch = useDispatch()
    const history = useHistory()

    const {currentUser} = useSelector(state => {
        return {currentUser: state.currentUser }
    })

    console.log(currentUser)

const handleSubmit = (e) => {

    
    e.preventDefault()
    console.log(e.target.email.value)
    let data = { 
        email: e.target.email.value,
        password: e.target.password.value
     }

     fetch('http://localhost:3000/login', {
        method: 'POST', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
        })

        .then(response => response.json())
        .then(data => {
        console.log('Success:', data);
        if (data.error !== "Invalid username or password"){
        dispatch({type: "ADD_CURRENT_USER", payload: data})
        history.push('/')
        } else {
            window.alert("Wrong Password")
        }

        })
        .catch((error) => {
        console.error('Error:', error);
        });
}

const handleCreateAccount = ()=> {
    history.push('/signup')
}


return(

    <div>
        <div>
        <h1> Login component</h1>
        <form onSubmit= {(e)=> handleSubmit(e)} >
        <label> Email: </label>
        <br/>
         <input type= "text" name = "email" /> 
        <br/>
        <br/>
        <label> Password: </label>
        <br/>
        <input type= "text" name = "password"/> 
        <br/>
        <br/>
        <input type= "submit" value="Submit" />
        </form>
        <br/>
        <br/>
        <button onClick={handleCreateAccount}> Create Account</button>


        </div>


    </div>
)
}
export default Login