<?php
  include "../include/Header.php";  
  include "../inc/bookPage.php";


  $page = $_GET['page'];
  $cuento = $_GET['cuento'];

  $bookPage = new BookPage();
  $pag = $bookPage->getBookHeader($cuento,$page);

  echo json_encode($pag);

?>