<?php
  include "../include/Header.php";  
  include "../inc/bookPage.php";

  $bookPage = new BookPage();
  $books = $bookPage->getBooks();

  echo json_encode($books);

?>