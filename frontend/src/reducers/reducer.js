const defaultState = {
    allBusinesses: [],
    currentBusiness: null,
    currentUser: null
  }


  export const reducer = (state = defaultState, action) => {

    console.log(action)
    
    switch(action.type){
      case "Load_Businesses": {
        return { ...state, allBusinesses: action.payload }
      }
      case "ADD_CURRENT_BUSINESS": {
        return {...state, currentBusiness: action.payload}
      }
      case "ADD_CURRENT_USER": {
        return {...state, currentUser: action.payload}
      }
      default:
        return state
    }
  }


