<?php
session_start();
require_once "User_guard.php";
require_once "classes/Paystack.php";
require_once "classes/Transaction.php";
require_once "classes/User.php";


$pay = new Paystack;
$t = new Transaction;
$u = new User;

$reference = isset($_SESSION['refno']) ? $_SESSION['refno'] : 0;

if($reference){
    $deets =$u->get_user_by_id($_SESSION['useronline']);
    $email = $deets['user_email'];
    $amount = $t->get_transaction_amt($reference);
    $payresponse = $pay->paystack_initialize($email,$amount*100,$reference);

    if($payresponse->status == 1){
        $url = $payresponse->data->authorization_url;
        header("location:$url");
    }else{
        $_SESSION['error_msg'] = "Please checkout again";
        header("location:showcart.php"); 
        exit();
    }
}else{
    $_SESSION['errormsg'] = "You need to add items to cart";
    header("location:shop.php");
    exit();
}

?>