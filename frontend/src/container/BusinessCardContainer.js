import React from 'react';
import BusinessCard from '../component/BusinessCard.js'
import { useSelector} from 'react-redux'

const BusinessCardContainer = () => {


    const {allBusinesses} = useSelector(state => {
        return {
            allBusinesses: state.allBusinesses
        }
    })

    const renderCards = () =>{
        console.log("happy")
        if(allBusinesses !== {}){
        return allBusinesses.map(business => {
        return    <BusinessCard key = {business.id} business= {business}/>
        }) 
    } 
    console.log(allBusinesses)
        }

return(
    <div className = "businesscard-container" >
    Card Container

    {renderCards()}
    {/* {allBusinesses.map(business => <BusinessCard key = {business.id} business= {business} />)} */}
    
    </div>
)
}
export default BusinessCardContainer