import { Link } from "react-router-dom";
import { useFetch } from "../services/useFetch";
import { Col, Container , Image /**/, Row } from "react-bootstrap";
import Header from "../components/Header";

export default function Home() {
  const baseURL = process.env.REACT_APP_WEB_SERVICES + "getBooks.php";
  const { allData, isloading } = useFetch(baseURL);

  return (
    <>
      {isloading && <div>Loading</div>}
      <Container>
        <p>Acceda a los audio libros a travez del código QR que se encuentra en el libro.</p>
          {allData && (
            <>
            <h3>Los libros disponibles</h3>
            <Row>

            {allData.map((l) => {
              return (
                <Col key={`${l.cuento}`} >
                  <Link to={`${l.cuento}/1`} style={{
                  backgroundImage: `url(${l.portada})`,
                }}>
                   <h4>{l.titulo}</h4>
                    {/* < Image src={l.portada} />{" "}  */}
                  </Link>
                </Col>
              );
          })}
           </Row></>)}
       
      </Container>
    </>
  );
}
