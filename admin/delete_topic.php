<?php
error_reporting(E_ALL);
require_once "classes/Topic.php";
 
if(isset($_GET["id"])){
    $id = $_GET["id"];

    $dell = new Topic;
    $response = $dell->delete_topic($id);

    if($response){
        //keep it inside session, redirect back to breakout.php and display the message "deleted successfully"
        echo "Deleted successfully";
    }else{
        echo "Sorry unable to delete";
    }

 }
?>