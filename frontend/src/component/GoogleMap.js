
import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Geocode from "react-geocode";
import { connect } from 'react-redux'


const Marker = ({ text }) => {

    const GOOGLE_API_KEY = `${process.env.REACT_APP_GOOGLE_MAP_KEY}`
return (
<div id= "content" > 

<img className="setpin" src={require("../images/mappin.png")}  alt=" pin"  />
    <h4 className="setpin" >{text}</h4>
</div>)}

const GOOGLE_API_KEY = `${process.env.REACT_APP_GOOGLE_MAP_KEY}`

class GoogleMap extends Component {

// getLatLng = (address) => {
//     // set Google Maps Geocoding API for purposes of quota management. Its optional but recommended.
//     Geocode.setApiKey(GOOGLE_API_KEY);
//     // set response language. Defaults to english.
//     Geocode.setLanguage("en");
//     // set response region. Its optional.
//     // A Geocoding request with region=es (Spain) will return the Spanish city.
//     Geocode.setRegion("es");
//     // Enable or disable logs. Its optional.
//     Geocode.enableDebug();

//     Geocode.fromAddress(address).then(
//     response => {
//         const { lat, lng } = response.results[0].geometry.location;
//         let obj = { 
//             lat: lat,
//             lng: lng
//          } 
//          console.log(obj)
//         return obj

//     },
//     error => {
//         console.error(error);
//     }
//     )
// }

  static defaultProps = {
  
    center: {
      lat: 32.792610,
      lng: -79.93
    },
    zoom: 11
  };


  renderPins = () => {
    if(this.props.currentRenderedBusinesses.length > 0){
   return  this.props.currentRenderedBusinesses.map( business => {
        return <Marker  lat={business.latitude} key = {business.id} lng={business.longitude} text="" />
    })
    }

  }

  render() {
    // console.log("hello")
    // console.log(this.getLatLng("120 cannon street 29403"))
    // console.log("hello")
    return (
      // Important! Always set the container height explicitly
      <div  className = "mapPageLocation" style={{ height: '100vh', width: '30%'  }}>
        <GoogleMapReact
          bootstrapURLKeys={{ key: GOOGLE_API_KEY }}
          defaultCenter={this.props.center}
          defaultZoom={this.props.zoom}
        >
            {this.renderPins()}

          {/* <AnyReactComponent
            lat={32.77}
            lng={-79.93}
            text=""
          />

<AnyReactComponent
            lat={32.792610}
            lng={-79.939370}
            text=""
          /> */}
        </GoogleMapReact>
      </div>
    );
  }
}

const mapStateToProps = state =>  {
    return { 
        currentRenderedBusinesses: state.currentRenderedBusinesses,
    }
}



export default connect(mapStateToProps)(GoogleMap);