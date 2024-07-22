<?php
Class BookPage {
  private $conn; 

  function __construct()
  {
    require_once __DIR__ . "/../include/DbConnect.php";
    // opening db connection
    $db = new DbConnect();
    $this->conn = $db->connect();
  }

  function getBookPage($book = 'tres',$page){
    $pagina = [];
    $textos=[];
    try {
      $s = "SELECT * FROM paginas pag
            LEFT JOIN parrafos par ON pag.id = par.pagina_id
            LEFT JOIN libros l ON l.id = pag.libro_id
            WHERE pag.id = ? AND l.link = ? order by par.carilla asc";
      $q = $this->conn->prepare($s);
      $q->execute([$page,$book]);
      $row = $q->fetchAll(PDO::FETCH_ASSOC);
      if (count($row)>0) {
        $pagina['numero'] = $row[0]['nro'];
        $pagina['primera'] = $row[0]['primera'];
        $pagina['ultima'] = $row[0]['ultima'];
        $pagina['imagen'] = $row[0]['imagen'];
        $pagina['textos'] = [];
        for ($i=0; $i<count($row); $i++){
          $textos=[];
          $textos['text'] = $row[$i]['texto'];
          $textos['ubicacion'] = $row[$i]['ubicacion'];
          $textos['estilo'] = $row[$i]['estilos'];
          array_push($pagina['textos'],$textos);
        }
      }
      $s = "SELECT * from audios a
            left join paginas pag on pag.id = a.pagina_id
            left join libros l on l.id = pag.libro_id
            WHERE pag.id = ? AND l.link = ?";
      $q = $this->conn->prepare($s);
      $q->execute([$page,$book]);
      $row = $q->fetchAll(PDO::FETCH_ASSOC);
      if (count($row)>0) {
        $audio = [];
        $audio['file'] = $row[0]['archivo'];
        $audio['ubicacion'] = $row[0]['ubicacion'];
        $pagina['audio'] = $audio;
      }

      return $pagina;
    }catch(PDOException $e) {
      error_log($e);
      return ['error'=>true, 'message'=>'Ha ocurrido un error.'];
    }
  }

  function getBookHeader($book = 'tres',$page){
    try {
      $datos = [];
      $textos=[];
      $s = "SELECT l.titulo, l.link AS cuento, 
            CASE 
            WHEN p.primera = 1 THEN TRUE
            ELSE FALSE END AS antDisabled,
            CASE 
              WHEN p.ultima = 1 THEN TRUE
              ELSE FALSE
              END AS sigDisabled,
            p.nro - 1 AS pagAnt,
            p.nro + 1 AS pagSig
            FROM libros l LEFT JOIN paginas p ON p.libro_id = l.id
            WHERE l.link = ? AND p.id = ?";
      $q = $this->conn->prepare($s);
      $q->execute([$book,$page]);
      $row = $q->fetchAll(PDO::FETCH_ASSOC);
      if (count($row)>0) {
        $datos = $row[0];
        return $datos;
      } else {
        error_log("No hay resultado en la base de datos");
        return ['error'=>true, 'message'=>'Ha ocurrido un error.'];
      }
    } catch(PDOException $e) {
      error_log($e);
      return ['error'=>true, 'message'=>'Ha ocurrido un error.'];
    }
    
  }

  function getBooks(){
    try {
      $s = "SELECT titulo, link AS cuento, portada
            FROM libros";
      $q = $this->conn->prepare($s);
      $q->execute([]);
      $row = $q->fetchAll(PDO::FETCH_ASSOC);
      if (count($row)>0) {
        return $row;
      } else {
        error_log("No hay resultado en la base de datos");
        return ['error'=>true, 'message'=>'Ha ocurrido un error.'];
      }
    } catch(PDOException $e) {
      error_log($e);
      return ['error'=>true, 'message'=>'Ha ocurrido un error.'];
    }
    
  }
}
?>