<?php
session_start();
error_reporting(E_ALL);
require_once "user_guard.php";
require_once "classes/Paystack.php";
require_once "classes/Transaction.php";
require_once "classes/User.php";

$pay = new Paystack;
$reference = isset($_SESSION['refno'])? $_SESSION['refno'] : 0;
$confirmation_from_paystack = $pay->paystack_verify($reference);

if($confirmation_from_paystack && $confirmation_from_paystack->status==1){
    echo "Payment Complete, we will update payment table";
    echo "<pre>";
    print_r($confirmation_from_paystack);
    echo "</pre>";

    //update your payment table.. //send an email to the user..
    //redirect your user to a page where you will display the transaction status
}else{
    echo "Invalid Transaction ID Supplied";
}
?>