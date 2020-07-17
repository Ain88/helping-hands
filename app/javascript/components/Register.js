import React from "react"
import PropTypes from "prop-types"
class Register extends React.Component {

    constructor(props) {
    super(props);
    console.log(this.props)
    this.state = { user: this.props.user };
  }
  render () {
    console.log(this.state.user)
    return (
      <div>
      {this.state.user}
      </div>
    );
  }
}

Register.propTypes = {
  user: PropTypes.string
};
export default Register
