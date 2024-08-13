<?php
  include "../include/Header.php";  
  include "../inc/bookPage.php";

  $page = $_GET['id'];
  $cuento = $_GET['cuento'];
  $bookPage = new BookPage();
  $pag = $bookPage->getBookPage($cuento,$page);
  $h = $bookPage->getBookHeader($cuento,$page);

  $rta = ['pag'=> $pag, 'data'=>$h];

  echo json_encode($rta);
  //echo json_encode($h);
?>