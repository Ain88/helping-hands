import React from 'react'
import ReactDOM from 'react-dom'
import App from './App'
import About from './About'
import Tovolunteer from './Tovolunteer'
import Needvolunteer from './Needvolunteer'
import Contact from './Contact'
import Signin from './Signin'
import Register from './Register'
import Header from './Header'
import Footer from './Footer'
import { Switch, Route, Link, BrowserRouter as Router } from 'react-router-dom'

class Index extends React.Component {

  render() {
    return (
      <Router>
          <div>
          <Header />
            <Switch>
              <Route exact path="/" component={App} />
              <Route path="/about" component={About} />
              <Route path="/tovolunteer" component={Tovolunteer} />
              <Route path="/needvolunteer" component={Needvolunteer} />
              <Route path="/contact" component={Contact} />
              <Route path="/signin" component={Signin} />
              <Route path="/register" component={Register} />
            </Switch>
            <Footer />
          </div>
        </Router>
    );
  }
}

export default Index
