<?php
 session_start();
  require_once "../classes/utilities.php";
  require_once "../classes/User.php";

  $user = new User;
  if(isset($_POST['btnlogin'])){  //form was submitted
    //retrieve and sanitized form data
    $email = sanitizer($_POST['email']);
    $pwd = sanitizer($_POST['pwd']);
    //we want to call the method that will check if the credentials are valid
    $data = $user->login($email, $pwd);
    if($data){   //log in
        $_SESSION['useronline'] = $data;
        header("location:../dashboard.php");
        exit();
    }else{
        header("location:../loginpage.php");
    }

  }else{  //direct visit
    $_SESSION['errormsg'] = "Please complete the form";
    header("location:../loginpage.php");
    exit();

  }
?>