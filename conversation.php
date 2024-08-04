
<?php
  require_once "partials/header.php"; 
?>
   
    
   <div class="container col-xxl-8 px-4 py-5" style="background-color:white;">
   <?php require_once "partials/menu.php"?>
   <div class="content">
   
     <article>
        <form action="process/process_sendemail.php" method="POST">
          <div class="mb-3 row">
            <label class="col-md-3">Your Email</label>
            <div class="col-md-9">
              <input type="email" name="email" class="form-control border-dark noround">
            </div>
          </div>
           <div class="mb-3 row">
            <label class="col-md-3">Message</label>
            <div class="col-md-9">
               <textarea name="message" class="form-control border-dark noround"></textarea>
            </div>
          </div>
           <div class="mb-3 row">
             <button class="btn btn-dark noround btn-lg">Submit Post</button>
           </div>
        </form>  
        </article>
    </div>
 </div>

 <?php
  require_once "partials/footer.php"; 
?>



  
 
    