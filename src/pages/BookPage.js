import "./BookPage.scss";
import "./Reproductor.scss";
import "react-h5-audio-player/src/styles.scss";
import { useParams } from "react-router-dom";
import BookPageComponent from "../components/BookPageComponent";
import { useFetchById } from "../services/useFetch";

export default function BookPage() {
  let params = useParams();
  const baseURL = process.env.REACT_APP_WEB_SERVICES + "getBookPage.php";
  const { data, isloading } = useFetchById(baseURL, params.page, params.link);

  return (
    <>
      {isloading && <>Loading</>}
      {data && (
        <BookPageComponent
          pag={params.page}
          backgroundImage={data.pag.imagen}
          texto={data.pag.textos}
          audio={data.pag.audio}
          header={data.data}
        />
      )}
    </>
  );
}
