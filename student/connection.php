<?php


 $link=mysqli_connect("localhost","root","","lms");
 if(!$link)
  {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
    mysqli_select_db($link,"lms");
?>