<?php
session_start();
unset($_SESSION['topics']);
header("location:showcart.php");
exit();

?>