import React, { Component } from 'react';

import { connect } from 'react-redux'

import ReviewCard from '../component/ReviewCard.js'

import Header from '../component/Header.js'

import { NavLink } from 'react-router-dom';


class Show extends Component {


    
    renderReviews = () => {

        console.log(this.props.currentBusiness)
         
       return this.props.currentBusiness.reviews.map(review => {
            console.log(review)
            return  <ReviewCard review = {review} />
        })
    }

    render(){
return(
    <div>
    <Header/>
    <br/>
    <img src= { this.props.currentBusiness.img_url } width = "200px" />
    
    <h2> { this.props.currentBusiness.name } </h2>
    <h5> { this.props.currentBusiness.address } </h5>

    <h4> { this.props.currentBusiness.bio } </h4>
    <br/>
    <NavLink to="/Review" exact>   <button href= "http://localhost:3001/Show"> Write Review </button> </NavLink>
  

    <h4> Reviews </h4>

    {this.props.currentBusiness && this.renderReviews() }

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



export default connect(mapStateToProps)(Show);