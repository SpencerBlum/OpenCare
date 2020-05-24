import React from 'react';
import FilterContainer from './FilterContainer'
import BusinessCardContainer from './BusinessCardContainer.js'

import GoogleMap from '../component/GoogleMap.js'

const HomeBody = () => {

return(
    <div className = "homebody-container">
    
    <FilterContainer/>
    <BusinessCardContainer/>
    <GoogleMap/>
    </div>
)
}
export default HomeBody