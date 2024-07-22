import "./Header.scss";
import "./Buttons.scss";
import { Button } from "react-bootstrap";
import { SkipBackward, SkipForward } from "react-bootstrap-icons";
import { Link } from "react-router-dom";

export default function Header(props) {
  return (
    <header>
      <Button
        as={Link}
        to={`/${props.data.cuento}/${props.data.pagAnt}`}
        className={
          props.data.antDisabled ? "btn-circle disabled-link" : "btn-circle"
        }
      >
        <SkipBackward />
      </Button>
      {props.data.titulo}
      <Button
        as={Link}
        to={`/${props.data.cuento}/${props.data.pagSig}`}
        className={
          props.data.sigDisabled ? "btn-circle disabled-link" : "btn-circle "
        }
      >
        <SkipForward />
      </Button>
    </header>
  );
}
