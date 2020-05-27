function loadCurrentUser(data){
    return { type: "ADD_CURRENT_USER", payload: data }
  }

  function loadCurrentLocation(data){
    return { type: "ADD_CURRENT_LOCATION", payload: data }
  }
  export { loadCurrentUser, loadCurrentLocation }