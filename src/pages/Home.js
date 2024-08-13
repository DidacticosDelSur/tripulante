import { Link } from "react-router-dom";
import { useFetch } from "../services/useFetch";
import { Col, Container , Image /**/, Row } from "react-bootstrap";

export default function Home() {
  const baseURL = process.env.REACT_APP_WEB_SERVICES + "getBooks.php";
  const { allData, isloading } = useFetch(baseURL);

  return (
    <>
      {isloading && <div>Loading</div>}
      <Container>
        <Row>
          {allData &&
            allData.map((l) => {
              return (
                <Col key={`${l.cuento}`}>
                  <Link to={`${l.cuento}/1`}>
                   <span>{l.titulo}</span>
                    < Image src={l.portada} />{" "} 
                  </Link>
                </Col>
              );
          })}
        </Row>
      </Container>
    </>
  );
}
