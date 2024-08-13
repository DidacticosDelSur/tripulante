import "./Header.scss";
import "./Buttons.scss";
import { Button, Image } from "react-bootstrap";
import { SkipBackward, SkipForward } from "react-bootstrap-icons";
import { Link } from "react-router-dom";
import Logo from "../logo.svg";

export default function Header(props) {
  return (
    <>
      <header>
      <Image src={Logo} />
        {/* <Button
          as={Link}
          to={`/${props.data.cuento}/${props.data.pagAnt}`}
          className={
            props.data.antDisabled ? "btn-circle disabled-link" : "btn-circle"
          }
        >
          <SkipBackward />
        </Button> */}
        <div className="title">{props.data.titulo}</div>
        
        {/* <Button
          as={Link}
          to={`/${props.data.cuento}/${props.data.pagSig}`}
          className={
            props.data.sigDisabled ? "btn-circle disabled-link" : "btn-circle "
          }
        >
          <SkipForward />
        </Button> */}
      </header>
    </>
  );
}
