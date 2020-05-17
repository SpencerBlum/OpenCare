import React, { Component} from 'react';

import { connect } from 'react-redux'

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
            window.alert("Must have Rating and Written Review")
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
        currentReviews: state.currentReviews
    
    }
}



export default connect(mapStateToProps)(ReviewCard);