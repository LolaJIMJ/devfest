<?php
require_once "../classes/Message.php";

//retrieve form data

  $email = $_POST['email'];
  $message = $_POST['message'];

  //sanitize data
  $m = new Message;
  $m->sendMail($email, $message);
?>