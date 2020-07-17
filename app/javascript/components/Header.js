import React from "react"
import PropTypes from "prop-types"
import { Nav, Navbar } from 'react-bootstrap'
 import { Link } from 'react-router';

class Header extends React.Component {
  render () {
    return ( <div className="container container-header">
        {
          <Navbar bg="light" expand="lg">
            <Navbar.Brand href="/">Helping Hands in Vancity</Navbar.Brand>
            <Navbar.Toggle aria-controls="basic-navbar-nav" />
            <Navbar.Collapse id="basic-navbar-nav">
              <Nav className="ml-auto">
              <Nav.Link href="about">About</Nav.Link>
              <Nav.Link href="tovolunteer">To Volunteer</Nav.Link>
              <Nav.Link href="needvolunteer">Need Volunteer</Nav.Link>
              <Nav.Link href="contact">Contact</Nav.Link>

              <Nav.Link href="signin">Sign In</Nav.Link>
              <Nav.Link href="register">Register</Nav.Link>
              </Nav>
            </Navbar.Collapse>
          </Navbar>
        }
    <div><hr /></div></div>
    );
  }
}

export default Header
