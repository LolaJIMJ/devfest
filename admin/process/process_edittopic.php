<?php
   
  error_reporting(E_ALL);
  session_start();
  require_once "../classes/General.php";
  require_once "../classes/Topic.php";


    if(isset($_POST["btnadd"])){
        $title = General::sanitize($_POST['title']);
        $level = $_POST['level'];
        $status = isset($_POST['status']) ? $_POST['status'] : 1 ;
        $amount = $_POST['amount'];
        $id = $_POST["id"];


        //instantiate the class
        $topic1 = new Topic;
        //call the method
        $response = $topic1->update_topic($title,$level,$status,$amount,$id);
        if($response){
            header("location:../breakout.php");
            exit();
        }else{
            echo "Unable to update topic";
        }
       
    }
?>