<?php
  session_start();
  require_once "user_guard.php";
  require_once "partials/header.php";
  require_once "classes/User.php";

   $user = new User;
   $data = $user->get_user_by_id($_SESSION['useronline']);

  //  echo "<pre>"
  //    print_r($data);
  //  echo "</pre>";
?>
<!-- from here till topmost top as header.php-->
<div class="container  col-md-10 py-5" style="background-color: white;" >

<?php require_once "partials/menu.php"; ?>
     
<div class="content">
  <h3>Welcome! <?php echo ucfirst($data['user_fname']);  ?></h3>
  <p>This is your dashboard, please use the second-level menu to carry out tasks</p>
 </div>

</div>

 
 <!-- From here till end as footer.php--> 
<?php
  require_once "partials/footer.php";
?>
