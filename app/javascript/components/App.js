import React from "react"
import { Route, Switch } from 'react-router-dom'
import { Button, Row, Col, Card, Carousel } from 'react-bootstrap';

class App extends React.Component {
render() {
  return (
    <div>
    <Carousel>
      <Carousel.Item>
        <img
          className="d-block w-100"
          src={Img1}
          alt="First Slide"
        />
      <Carousel.Caption>
          <h2>Helping Hands<br />
          in Vancity</h2>
          <h4>Helping Hands partners with individuals or<br />families and with groups, schools and companies</h4>
      </Carousel.Caption>
      </Carousel.Item>
      <Carousel.Item>
        <img
          className="d-block w-100"
          src={Img2}
          alt="Second Slide"
        />
      <Carousel.Caption>
          <h2>Helping Hands<br />
          in Vancity</h2>
          <h4>Helping Hands partners with individuals or<br />families and with groups, schools and companies</h4>
        </Carousel.Caption>
      </Carousel.Item>
    </Carousel>
    </div>
  );
}
}

export default App
