import "./App.scss";
import { Outlet, useParams } from "react-router-dom";
import Header from "./components/Header";
import { useFetchByHeader } from "./services/useFetch";

/* class App extends Component {} */

function App() {
  let params = useParams();
  console.log(params);
  const baseURL = process.env.REACT_APP_WEB_SERVICES + "getHeaderPage.php";
  const { headerData, isloading } = useFetchByHeader(
    baseURL,
    params.page,
    params.link
  );

  return (
    <>
      {params.link && <div className={"App " + params.link }>
        {params.link && headerData && <Header data={headerData} />}
          <Outlet />
        </div>
      }
      {!params.link && <div className="App Home">
        <Outlet />
        </div>
      }
    </>
  );
}

export default App;
