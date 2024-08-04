<?php
  session_start();
  require_once "user_guard.php";
  require_once "partials/header.php";
  require_once "classes/User.php";
  require_once "classes/Topic.php";
   
  $user = new User;
   $data = $user->get_user_by_id($_SESSION['useronline']);

   $topic = new Topic;
   $breakouts = $topic->get_all_topics($data['user_level']);

  //  echo "<pre>";
  //    print_r($breakouts);
  //  echo "</pre>";
?>
<!-- from here till topmost top as header.php-->
<div class="container  col-md-10 py-5" style="background-color: white;" >

<?php require_once "partials/menu.php"; ?>
     
<div class="content">
    <div class="container-fluid">

    <?php
  if(empty($breakouts)){
     echo "<div class='row'>
       <div class='col'><p class='alert alert-info'>No active topic exists for your group, please check back</p></div>
     </div>";
  }else{
    ?>
        <div class="row">
            <?php

                foreach($breakouts as $breakout){
                    $btopic = $breakout['topic_name'];
                    $bamt = number_format($breakout['topic_amt'],2);
                    $bimage = $breakout['topic_image'];
                    $bid = $breakout['topic_id'];

                    echo "<div class='col-md-3'>
                    <div><img src='admin/uploads/$bimage' class='img-fluid'></div>
                    <div>
                     <p>$btopic</p>
                    <p>&#8358; $bamt</p>
                    <p>
                    <a href='addtocart.php?id=$bid' class='btn btn-sm btn-warning'>Add to Cart</a>
                    </P>
                  </div>
                    </div>";
                }
            ?>
           
   <?php
  }
   ?>
    </div>
 </div>

</div>

 
 <!-- From here till end as footer.php--> 
<?php
  require_once "partials/footer.php";
?>
