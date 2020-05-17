import React, { Component} from 'react';

import { connect } from 'react-redux'

import swal from 'sweetalert';

class ReviewCard extends Component {

    state = {
        formValue: "",
        ratingValue: 5
     }


     handleRating = (e) => {
        this.setState({ratingValue: e.target.value})
    }

    handleChange = (e) => {
        this.setState({formValue: e.target.value})
    }


    handleSubmit= ()=> {
        if(this.state.formValue =="" || this.state.ratingValue =="" ){
            swal("Must have Rating and Written Review")
            // swal("Good job!", "Must have Rating and Written Review!", "success");
        } else if (this.props.currentUser === null){
            swal("Sign in to write a review")
        } else {


            let data = {
                formValue: this.state.formValue,
                ratingValue: this.state.ratingValue,
                currentUser: this.props.currentUser.id,
                currentBusiness: this.props.currentBusiness.id

            }

            fetch('http://localhost:3000/review/new', {
            method: 'POST', // or 'PUT'
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(data),
            })
            .then(response => response.json())
            .then(data => {
            console.log('Success:', data);

            })
            .catch((error) => {
            console.error('Error:', error);
            });
        }
    }

    render(){
    return(
        <div>
    Write a Review 
    <br/>

    <select onChange={this.handleRating} value = {this.state.ratingValue} >
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    </select>
    <br/>
    <textarea onChange={(e) =>this.handleChange(e)}  rows="20" cols="60"  /> 
    <br/>
    <button onClick={this.handleSubmit} > Submit </button> 

        </div>
    )
    }
}

const mapStateToProps = state =>  {
    return { 
        currentBusiness: state.currentBusiness,
        currentUser: state.currentUser
    
    }
}



export default connect(mapStateToProps)(ReviewCard);