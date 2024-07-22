import { Link } from "react-router-dom";
import { useFetch } from "../services/useFetch";
import { Image } from "react-bootstrap";

export default function Home() {
  const baseURL = process.env.REACT_APP_WEB_SERVICES + "getBooks.php";
  const { allData, isloading } = useFetch(baseURL);

  return (
    <>
      {isloading && <div>Loading</div>}
      {allData &&
        allData.map((l) => {
          return (
            <Link to={`${l.cuento}/1`}>
              {" "}
              <Image src={l.portada} />{" "}
            </Link>
          );
        })}
    </>
  );
}
