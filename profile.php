<?php
    session_start();
    require_once "user_guard.php";
    require_once "partials/header.php";
    require_once "classes/User.php";
    require_once "classes/Topic.php";

      $id = $_SESSION['useronline'];
      $user = new User;
      $deets = $user->get_user_by_id($id); 

      $topic = new Topic;
      $levels = $topic->fetch_levels();

      // echo "<pre>";
      // print_r($levels);
      // echo "</pre>";
     

    ?>  

<div class="container col-xxl-8 px-4 py-5" >

  <?php
     require_once "partials/menu.php";
  ?>
<div class="content" style="background-color: white;padding:3em">
    <h3>Edit Your Profile</h3>
    <form enctype="multipart/form-data" method="post" action="process/process_profile.php">
     
   <div class="form-group row">
    <div class="col-md-6 mb-3">
        <label for="fname">FirstName</label>
        <input class="form-control border-success noround" value="<?php echo $deets['user_fname']?>" id="fname" name="fname" required type="text"  >
    
    </div>
    <div class="col-md-6 mb-3">
        <label for="lname">LastName</label>
        <input class="form-control border-success noround" value="<?php echo $deets['user_lname']?>"  id="lname" name="lname" required type="text"  >
    
    </div>
   </div>
   <div class="form-group row">
    <div class="col-md-6 mb-3">
        <label for="phone">Phone</label>
        <input class="form-control border-success noround" value="<?php echo $deets['user_phone']?>"  id="phone" name="phone" required type="text" >
    
    </div>
    <div class="col-md-6 mb-3">
        <label for="lname">Category</label>
        <select name="level" id="level" class="form-control border-success noround">

        
            <option value="">Select One</option>

            <?php
          foreach($levels as $level){
              $levelname = $level['level_name'];
              $levelid = $level['level_id'];
              if($levelid == $deets['user_level']){
                echo "<option value='$levelid' selected>$levelname</option>";
              
              }else{
                echo "<option value='$levelid'>$levelname</option>";
              }
             
          }
          ?>
       </select>
         
      
    </div>

   </div>
   <hr>

   <div class="mb-3">
<!-- <h6>Your Programming Language(s)</h6>
<div class="form-check">
    <input class="form-check-input border-dark" type="checkbox" value="">
    <label class="form-check-label">
     PHP
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input border-dark" type="checkbox" value="">
    <label class="form-check-label">
      Python
    </label>
  </div>
  <div class="form-check">
    <input class="form-check-input border-dark" type="checkbox" value="">
    <label class="form-check-label">
     Javascript
    </label>
  </div>
   </div> -->
    <div class="mb-3"> 
      <input class="btn custom-btn noround" id="btnsubmit" name="btnsubmit" type="submit" value="Update Profile!">
      
    </div>
   
    </form>
 </div>

  </div>

 


<!-- end more content-->
  
<?php

require_once "partials/footer.php";
?>