<?php
error_reporting(E_ALL);
session_start();

require_once "../user_guard.php";
require_once "../classes/User.php";
require_once "../classes/utilities.php";

if(isset($_POST['btnsubmit'])){
    $fname = sanitizer ($_POST['fname']);
    $lname = sanitizer($_POST['lname']);
    $phone = sanitizer($_POST['phone']);
    $level1 = ($_POST['level']);

    if(!$level1){
        $_SESSION['errormsg'] = "Please select a category";
    header("location:../profile.php");
    exit();        
    }

    $user = new User;
    $user->update_user($fname, $lname, $phone, $level1, $_SESSION['useronline']);
    if($check){
        $_SESSION['feedback'] = 'Profile updated!';
        header ("location:../profile.php"); 
        
    }else{
        $_SESSION['errormsg'] = "Something bad happened";
        header("location:../profile.php");
        exit();
    }
}else{
    $_SESSION['errormsg'] = "Please complete the form";
    header("location:../profile.php");
    exit();        
}


?>