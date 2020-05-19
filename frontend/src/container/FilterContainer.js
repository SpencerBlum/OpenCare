import React from 'react';
import FilterToggles from '../component/FilterToggles.js'
import { loadAllTraits } from '../actions/filter.js'
import { useSelector,useDispatch } from 'react-redux'
import { useEffect } from 'react';


const FilterContainer = () => {


    const dispatch = useDispatch()

    const state = useSelector(state => {
        return {allTraits: state.allTraits }
    })

    const renderToggles = () => {

        if(state.allTraits !== []){
            return state.allTraits.map(trait => {
            return  <FilterToggles key = {trait.id} trait= {trait}/>
            }) 
        }
    }


return(
    <div className= "filter-container">
        <h3> Category </h3>
        {renderToggles()}
    </div>
)
}
export default FilterContainer