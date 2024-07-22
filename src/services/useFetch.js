import { useState, useEffect } from "react";

export function useFetchByHeader(baseUrl, page, cuento) {
  const [isLoading, setIsLoading] = useState(true);
  const [headerData, setHeaderData] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const abortController = new AbortController();
    setIsLoading(true);
    if (page) {
      fetch(baseUrl + `?page=${page}&cuento=${cuento}`, {
        signal: abortController.signal,
      })
        .then((response) => response.json())
        .then((data) => {
          setHeaderData(data);
        })
        .catch((error) => setError(error))
        .finally(() => setIsLoading(false));
    } else {
      setHeaderData({});
    }
    return () => abortController.abort(); //se ejecuta cuando el componente se ha desmontado (cuando no esta mas en pantalla)
  }, [page]);

  return { headerData, isLoading, error };
}

export function useFetchById(baseUrl, id, cuento) {
  const [isLoading, setIsLoading] = useState(true);
  const [data, setData] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const abortController = new AbortController();
    setIsLoading(true);
    if (id) {
      fetch(baseUrl + `?id=${id}&cuento=${cuento}`, {
        signal: abortController.signal,
      })
        .then((response) => response.json())
        .then((data) => {
          setData(data);
        })
        .catch((error) => setError(error))
        .finally(() => setIsLoading(false));
    } else {
      setData({});
    }
    return () => abortController.abort(); //se ejecuta cuando el componente se ha desmontado (cuando no esta mas en pantalla)
  }, [id]);

  return { data, isLoading, error };
}

export function useFetch(baseUrl) {
  const [isLoading, setIsLoading] = useState(true);
  const [allData, setAllData] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const abortController = new AbortController();
    setIsLoading(true);
    fetch(baseUrl, {
      signal: abortController.signal,
    })
      .then((response) => response.json())
      .then((data) => {
        setAllData(data);
      })
      .catch((error) => setError(error))
      .finally(() => setIsLoading(false));

    return () => abortController.abort(); //se ejecuta cuando el componente se ha desmontado (cuando no esta mas en pantalla)
  }, []);

  return { allData, isLoading, error };
}
