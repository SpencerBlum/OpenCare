import React from 'react';
import { useSelector,useDispatch } from 'react-redux'
import { addOrDeleteTrait } from '../actions/filter'

const FilterToggles = (props) => {

    const state = useSelector(state => {
        return {checkedTraits: state.checkedTraits }
    })
    
    const dispatch = useDispatch()


    // state = {
    //     isChecked: false,
    //     checkedTraits: []
    // }


       const handleCheck = (e) => {
        console.log(e.target.checked)

        console.log(e.target.name)
        
        console.log(state.checkedTraits.includes(e.target.name))
        if(!state.checkedTraits.includes(e.target.name) && e.target.checked === true ){
            dispatch(addOrDeleteTrait([...state.checkedTraits, e.target.name]))
        } else if (state.checkedTraits.includes(e.target.name)){
            let newSet = state.checkedTraits.filter(name => {return name !== e.target.name })
            dispatch(addOrDeleteTrait(newSet))
        }
        // this.setState({isChecked: !this.state.isChecked})
        // console.log(this.state.checkedTraits)
    }


//    const handleCheck = (e) => {
//         console.log(e.target.checked)

//         console.log(e.target.name)
//         console.log(this.state.checkedTraits.includes(e.target.name))
//         if(!this.state.checkedTraits.includes(e.target.name) && e.target.checked === true ){
//             this.setState({checkedTraits: [...this.state.checkedTraits, e.target.name]})
//         } else if (this.state.checkedTraits.includes(e.target.name)){
//             let newSet = this.state.checkedTraits.filter(name => {return name !== e.target.name })
//             this.setState({checkedTraits: newSet})
//         }
//         this.setState({isChecked: !this.state.isChecked})
//         console.log(this.state.checkedTraits)
//     }

return(
    <div className= "">
        {/* <input type="checkbox" id="scales" onChange= {(e)=> this.handleCheck(e)} name={this.props.trait.name} checked={this.state.isChecked} /> {this.props.trait.name} */}
        <input type="checkbox" id="scales" onChange= {(e)=> handleCheck(e)} name={props.trait.name}  /> {props.trait.name}

    </div>
)
}
export default FilterToggles
