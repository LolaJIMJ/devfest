<?php
  
 if(!isset($_SESSION['useronline'])){
    $_SESSION['errormsg'] = "You must be logged in to access this page";
    header("location:loginpage.php");
    exit();
 }
?>