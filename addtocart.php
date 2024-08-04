<?php
session_start();
error_reporting(E_ALL);
require_once "user_guard.php";
require_once "classes/User.php";
require_once "classes/Cart.php";


$id = isset($_GET['id']) ? $_GET['id'] : 0;

if($id){
        //the id exists, we want to keep it in a session variable and redirect to showcart.php
      $cart = new Cart;
      $cart->addToCart($id);
      header("location:showcart.php");
}else{
    header("location:shop.php");
    exit();
}
?>