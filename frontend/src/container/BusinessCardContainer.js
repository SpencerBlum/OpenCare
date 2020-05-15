import React from 'react';
import BusinessCard from '../component/BusinessCard.js'
import { useSelector} from 'react-redux'

const BusinessCardContainer = () => {


    const {allBusinesses} = useSelector(state => {
        return {
            allBusinesses: state.allBusinesses
        }
    })

    // const renderCards = () =>{
    //     allBusinesses.forEach(business => {
    //         return <BusinessCard business= {business}/>
    //     }) 
    // } 
    console.log(allBusinesses)

return(
    <div className = "businesscard-container" >
    Card Container
    {allBusinesses.map(business => <BusinessCard business= {business} />)}
    
    </div>
)
}
export default BusinessCardContainer