import "./Header.scss";
import "./Buttons.scss";
import { Component } from "react";
import { Button } from "react-bootstrap";
import { SkipBackward, SkipForward } from "react-bootstrap-icons";
import { Link, useParams } from "react-router-dom";
import { tresChanchitos } from "../assets/tresChanchitos";

class Header extends Component {
  constructor(props) {
    super(props);
    this.state = {
      pagAnt: tresChanchitos[this.props.pag - 1].ant,
      pagSig: tresChanchitos[this.props.pag - 1].sig,
    };
  }
  componentDidMount() {
    this.state.pagAnt = tresChanchitos[this.props.pag - 1].ant;
    this.state.pagSig = tresChanchitos[this.props.pag - 1].sig;
  }
  componentDidUpdate() {
    this.state.pagAnt = tresChanchitos[this.props.pag - 1].ant;
    this.state.pagSig = tresChanchitos[this.props.pag - 1].sig;
  }

  render() {
    return (
      <header>
        <Button
          as={Link}
          to={`/${this.props.cuento}/${this.state.pagAnt}`}
          className="btn-circle"
        >
          <SkipBackward />
        </Button>
        {this.props.title}
        <Button
          as={Link}
          to={`/${this.props.cuento}/${this.state.pagSig}`}
          className="btn-circle"
        >
          <SkipForward />
        </Button>
      </header>
    );
  }
}

export default Header;
