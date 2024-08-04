<?php

    error_reporting(E_ALL);
    session_start();
    require_once('../classes/User.php');
    require_once('../classes/utilities.php');

    $user = new User;

    #check if the form was submitted or the user visits this page directly
    if(isset($_POST['btnregister'])){

        #retrieve form data and sanitize
        $firstname = sanitizer ($_POST['fname']);
        $lastname = sanitizer($_POST['lname']);
        $email = sanitizer($_POST['email']);
        $pwd = sanitizer($_POST['pwd']);

        if(empty($firstname) || empty($lastname) || empty($email) || empty($pwd)){
            $_SESSION['errormsg'] = "All fields are required";
            header("location:../register.php");
            exit();

        }else{
          $chk =  $user->insert_user($firstname,$lastname,$email,$pwd);
            if ($chk){
                $_SESSION['useronline'] = $chk;
                header("location:../dashboard.php");
            }else{
                header("location:../register.php");
            }

        }

        
        #try it out, fill the form and submit, then check your db to confirm the data has been inserted

    }else{
        $_SESSION['errormsg'] = "Please pass through the door and complete the form";
        header("location:../register.php");
        exit();
    }


?>