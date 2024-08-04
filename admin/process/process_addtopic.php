<?php
  error_reporting(E_ALL);
  session_start();
  require_once "../classes/General.php";
  require_once "../classes/Topic.php";

  if($_POST['btnadd']){
     #retrieve form data and sanitize, call the method that will add the details to the db
     $title = General::sanitize($_POST['title']);
     $level = $_POST['level'];
     $status = isset($_POST['status']) ? $_POST['status'] : 1 ;
     $file = $_FILES['file'];
     $amount = $_POST['amount'];

     //validate the form to ensure that fields are not empty
     $errors = [];
     if(empty($title)){
        array_push($errors, "specify the title");
     } 
     
     if (empty($level)){
        array_push($errors, "specify the level");
     }

    if ($_FILES['file']['name'] ==""){
            array_push($errors, "Select a file to upload");
    }

      if($errors){
        $_SESSION['admin_errormsg'] = $errors;
        header("location:../addtopic.php");
        exit();
      }  
       
     else{
        $topic = new Topic;
        $chk = $topic->add_newtopic($title,$file,$level,$status,$amount); 
        if($chk){
            header("location:../breakout.php");
            exit();
        }else{
            header("location:../addtopic.php");
            exit();
        }
        
     }
 
    }else{   //visited the page directly
    $_SESSION['admin_errormsg'] = "Please complete the form";
    header("location:../addtopic.php");
    exit();
  }
?>