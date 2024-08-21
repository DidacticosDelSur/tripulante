import "./Header.scss";
import "./Buttons.scss";
import { Image } from "react-bootstrap";
import Logo from "../logo.svg";

export default function Header(props) {
  return (
    <>
      <header>
      <Image src={Logo} />
        {props.titulo && <div className="title">{props.titulo}</div>}
      </header>
    </>
  );
}
