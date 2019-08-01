import React from "react"
import PropTypes from "prop-types"
class ListApp extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      apartments: []
    }
  }
  
  componentDidMount(){
    fetch('/apartments')
    .then(resp => {
      return resp.json()
    })
    .then(apartmentsJson => {
      this.setState({apartments: apartmentsJson})
    })
  }
  render () {
    const { apartments } = this.state
    return (
      <React.Fragment>
        <ul>
          {
            apartments.map((apartment, i) => {
              return <li key={i}>{apartment.street}, Unit {apartment.unit}</li>
            })
          }
        </ul>
      </React.Fragment>
    );
  }
}

export default ListApp
