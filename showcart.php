<?php
session_start();
error_reporting(E_ALL);
require_once "user_guard.php";
require_once "partials/header.php";
require_once "classes/User.php";
require_once "classes/Cart.php";
require_once "classes/Topic.php";


$user = new User;
$data = $user->get_user_by_id($_SESSION['useronline']);

// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";
$t = new Topic;
?>

<div class="container  col-md-10 py-5" style="background-color: white;" >

<?php require_once "partials/menu.php"; ?>
     
<div class="content">
     <?php
     if(isset($_SESSION['topics']) && !empty($_SESSION['topics'])){
        
        echo "<table class='table table-striped'>
           <tr>
              <th>S/N</th>
              <th>Item Name</th>
              <th>Item Image</th>
              <th>Amount</th>
              <th>Qty</th>
              <th>Actions</th>

           </tr>";
            $sn =1;
            $total=0;

        foreach($_SESSION['topics'] as $topicid => $topic_qty){
          $topic_details = $t->get_topic_by_id($topicid);
          $topicname = $topic_details['topic_name'];
          $topicimage = "admin/uploads/".$topic_details['topic_image'];
          $topicamt = number_format($topic_details['topic_amt'] *$topic_qty,2);
          $total = $total + ($topic_details['topic_amt'] * $topic_qty);

         

            echo "<tr>
            <td>$sn</td>
            <td>$topicname</td>
            <td><img src='$topicimage' height='40'></td>
            <td>$topicamt</td>
            <td>$topic_qty</td>
            <td><a href='removecart.php?id=$topicid' class='btn btn-sm btn-danger'>Remove</a></td>

         </tr>";
         $sn ++ ;
        }
        $formatted_total =number_format($total,2);
        echo "<tr><td>TOTAL</td><td colspan='2'></td><td align='left'> $formatted_total</td><td colspan='2'></td></tr>";
        echo "</table>";


   //   echo "<pre>";
   //   print_r($_SESSION['topics']);
   //   echo "</pre>";
     
     }else{
        echo "<div class='alert alert-info'>Your cart is empty</div>";
     }
    ?>
   <a href="emptycart.php" class='btn btn-danger btn-lg noround'>Empty Cart</a>
   &nbsp; &nbsp; &nbsp;
   <a href="shop.php" class='btn btn-warning btn-lg noround'>Continue Shopping</a>
   
    &nbsp; &nbsp; &nbsp;
  
  <?php
    if(isset($_SESSION['topics']) && !empty($_SESSION['topics'])){
      echo "<a href='checkout.php' class='btn btn-dark btn-lg noround'>Checkout Now</a>";
    }
   ?>

</div>
</div>

<?php
require_once "partials/footer.php";
?>