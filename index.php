<?php
 session_start();
 require_once "partials/header.php";
?>
 <!-- from here till topmost top as header.php-->


<div class="container col-md-10 py-5">
  
  <!--menu for logged in user-->
    <?php require_once "partials/menu.php"; ?>
  
    <!--menu for logged in user-->
  <?php
    if(isset($_SESSION['useronline'])){
      require_once "partials/menu.php";
    }
  ?>

 <!--banner-->
    <div class="row flex-lg-row-reverse align-items-center g-5" >
      <div class="col-12 col-sm-5 col-lg-5">
        <video width="100%" autoplay muted loop>
          <source src="assets/static/videos/hero.mp4" type="video/mp4">
        </video>
        <!-- <img src="assets/static/images/sw.png" class="d-block mx-lg-auto img-fluid" alt="Developer Sample"> -->
      </div>
      <div class="col-lg-7 col-sm-7">
        <h1 class="display-5 fw-bold lh-1 mb-3">DEV FEST 2024</h1>
        <p class="lead">Introducing the largest Developer's Festival across sub-Sahara Africa! <br>A full-stack, tech-obsessed festival full of fun, code-loving humans who share and learn together. </p>
        <div class="d-grid gap-2 d-md-flex justify-content-md-start">
          <a href= "register.php" class="btn custom-btn px-4 me-md-2">Register Me</a>
          <a href="loginpage.php" class="btn btn-outline-dark noround px-4">Login</a>
        </div>
      </div>
    </div>
<!--end banner-->

</div>

<!--The home page can populate the following for other contents like partner hotel-->


<!--breakout session-->
<div class="layout" id="breakout">
  
    <div class="container-fluid px-4 pt-5" id="custom-cards" style="background-color: white;">
     <div style="width:86%; margin:auto">
      <h2 class="pb-2 border-bottom heading-text">Popular Breakout Sessions</h2>
  
      <div class="row row-cols-1 row-cols-lg-4 align-items-stretch g-4 py-5">
       
      <div class="col">
         <img src="assets/static/images/3.png" class="img-fluid bk" alt="">    
         <div class="deets"><h6>Session and Cookies </h6>
          <p><i>Senior Category</i> <a href="">120 Seats</a></p>                  
         </div>  
         </div>
  
        <div class="col">
          <img src="assets/static/images/4.png" class="img-fluid bk" alt="">  
           <div class="deets"><h6>Authentication  </h6>
            <p><i>Senior Category</i> <a href="">34 Seats</a></p>    
        
         </div>         
         </div>
         
         <div class="col">
          <img src="assets/static/images/11.png" class="img-fluid bk" alt="">  
           <div class="deets"><h6>The Low Hanging Fruits </h6>
            <p><i>Junior Category</i> <a href="">80 Seats</a></p>   
        
         </div>         
         </div>
         
         <div class="col">
          <img src="assets/static/images/4.png" class="card-img-top bk" alt=""> 
           <div class="deets"><h6>The Day is Bright </h6>
            <p><i>Intermediate Category</i> <a href="">80 Seats</a></p>    
        
         </div>          
         </div>
            
      </div>
    </div>
    </div> 
</div>
<!--end breakout session--> 

<!--conversation call to action-->
<div class="container mt-5" id="conversation">
      <h3 class="pb-2 border-bottom heading-text my-4">Join the Conversation</h3>
      <div class="row justify-content-around mx-0">
        <div class="col-md-6 mb-4">
          <img src="assets/static/images/senior_dev.png" alt="image1" class="img-fluid">
          
        </div>
        <div class="col-md-6">
          <div class="row">
            <div class="col-12">
              <img src="assets/static/images/junio.png" alt="image2" class="img-fluid">
             
            </div>
            <div class="col-12 my-4">
              <img src="assets/static/images/inter.png" alt="image3" class="img-fluid">
          
            </div>
          </div>
        </div>
      </div>
</div>
<div class="row justify-content-center my-4 ">
      <div class="col-12 text-center">
        <a href="conversation.php" class="noround btn btn-outline-dark">MAKE A POST</a>
      </div>
</div>
<!--end conversation call to action-->




<!--partner hotel-->

<?php
include_once "partials/hotel.php";
?>

 <!--end partner hotel-->

 <!--- End of Extra independent sessions that home page may wish to populate-->

 <!-- From here till end as footer.php-->
 <?php
   require_once "partials/footer.php";
 ?>
<!-- FOOTER -->
