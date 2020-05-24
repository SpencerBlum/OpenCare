import React, { Component } from 'react';
import { connect } from 'react-redux'
import ReviewCard from '../component/ReviewCard.js'
import Header from '../component/Header.js'
import { NavLink } from 'react-router-dom';
import { loadBusinesses } from "../actions/Business.js";


class Show extends Component {


    
    renderReviews = () => {
        if(this.props.currentBusiness){
       return this.props.currentBusiness.reviews.map(review => {
           
            return  <ReviewCard review = {review} />
            })
        }
    }

    handleClaim = () => {
        if(this.props.currentBusiness && this.props.currentUser){

            let data = 
            {
                id: this.props.currentBusiness.id,
                userId: this.props.currentUser.id
            }

        
     fetch('http://localhost:3000/claimBusiness', {
        method: 'PATCH', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
        })

        .then(response => response.json())
        .then(data => {
        console.log('Success:', data);
        this.props.loadBusinesses(data)
        // if (data.error !== "Invalid username or password"){
        // dispatch({type: "ADD_CURRENT_USER", payload: data})
        // history.push('/')
        // } else {
        //     window.alert("Wrong Password")
        // }

        })
        .catch((error) => {
        console.error('Error:', error);
        });
    }
        
    }

    handleFollow = () => {
        if(this.props.currentUser){
        let data = 
        {
            id: this.props.currentBusiness.id,
            userId: this.props.currentUser.id
        }

        fetch('http://localhost:3000/followBusiness', {
            method: 'post', // or 'PUT'
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(data),
            })
    
            .then(response => response.json())
            .then(data => {
            console.log('Success:', data);
            // this.props.loadBusinesses(data)
            // if (data.error !== "Invalid username or password"){
            // dispatch({type: "ADD_CURRENT_USER", payload: data})
            // history.push('/')
            // } else {
            //     window.alert("Wrong Password")
            // }
    
            })
            .catch((error) => {
            console.error('Error:', error);
            });
    }
}

    renderFollowBtn = () => {
        if(this.props.currentUser !== null){
         let followsBiz = this.props.currentUser.follows.filter(follow => {return follow.id === this.props.currentUser })

         if (followsBiz == false) {
             return  <button onClick={this.handleFollow} > Follow </button> 
         } 
        } else { 
            return  <button onClick={this.handleFollow} > unlogged in Follow </button>
       }
    }

    


    render(){
return(
    <div>
    <Header/>
    <br/>
   { this.props.currentBusiness.user_id == "nil" && this.props.currentUser? <button onClick = {this.handleClaim} > Claim business </button> : null}
    <br/>
    <br/>
    { this.props.currentBusiness? <img src= { this.props.currentBusiness.img_url } width = "200px" /> : null}
    
    { this.props.currentBusiness?  <h2> { this.props.currentBusiness.name } </h2> : null}
    { this.props.currentBusiness?  <h3> { this.props.currentBusiness.avg_review} Stars </h3> : null}
    { this.props.currentBusiness? <h5> { this.props.currentBusiness.address } </h5> : null}
    { this.props.currentBusiness? <h4> { this.props.currentBusiness.bio } </h4> : null}
  
    

    
    <br/>
    <NavLink to="/Review" exact>   <button href= "http://localhost:3001/Show"> Write Review </button> </NavLink>
    {/* <button onClick={this.handleFollow()} > Follow </button> */}

    {this.renderFollowBtn()}
    <h4> Reviews </h4>

    {this.props.currentBusiness && this.renderReviews() } 

    </div>
)
}
}

const mapStateToProps = state =>  {
    return { 
        currentBusiness: state.currentBusiness,
        currentReviews: state.currentReviews,
        currentUser: state.currentUser
    
    }
}

const mapDispatchToProps = dispatch => {
    return {
    loadBusinesses: (businesses) => dispatch(loadBusinesses(businesses)),

    }
  }

export default connect(mapStateToProps, mapDispatchToProps)(Show);