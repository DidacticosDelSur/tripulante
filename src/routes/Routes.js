import React from "react";
import { createHashRouter, RouterProvider } from "react-router-dom";

import App from "../App";
import BookPage from "../pages/BookPage";
import Home from "../pages/Home";

const RouteObject = [
  {
    path: "/",
    element: <App />,
    //errorElement: <ErrorPage />,
    children: [
      {
        path: "/",
        element: <Home />,
      },
      {
        path: "/:link/:page",
        element: <BookPage />,
      },
    ],
  },
];
const router = createHashRouter(RouteObject);

function Router() {
  return <RouterProvider router={router} />;
}

export default Router;
