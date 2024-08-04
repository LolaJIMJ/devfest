<?php
  session_start();
  error_reporting(E_ALL);
  require_once "user_guard.php";
  require_once "classes/User.php";
  require_once "classes/Transaction.php";

  $t = new Transaction;

//   we want to retrieve the id of the items in $_SESSION['topics'] and insert into transaction table

if(isset($_SESSION['topics']) && !empty($_SESSION['topics'])){
    $ref = time().rand(); //generate unique reference num and keep in session
    $_SESSION['refno'] = $ref;
    $trxid=$t->insert_transaction($ref, $_SESSION['useronline'], $_SESSION['topics']);
    if($trxid){
      header("location:confirm.php");
      exit();
             //we want to send the details to paystack
    }else{
         $_SESSION['errormsg'] = "Please try checking out again";
         header("location:showcart.php");
         exit();
    }

  }else{
          $_SESSION['errormsg'] = "Please add items to cart";
          header("location:shop.php");
          exit();
}
?>