<?php
  include "../include/Header.php";  
  include "../inc/bookPage.php";

  $page = $_GET['id'];
  $cuento = $_GET['cuento'];
  $bookPage = new BookPage();
  $pag = $bookPage->getBookPage($cuento,$page);

  echo json_encode($pag);
?>