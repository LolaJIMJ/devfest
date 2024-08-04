<?php
 session_start();
 require_once "partials/admin_header.php";
require_once "classes/Topic.php";

    $topic = new Topic;
    $levels = $topic->fetch_levels();

    // echo "<pre>";
    // print_r($levels);
    // echo "</pre>";


?>

<main>
                   

  <div class="container-fluid px-4">
                        <h1 class="mt-4">Add Topics</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">Dashboard</li>
                              <li class="breadcrumb-item active"><a href="breakout.php">All Topic</a></li>
                              <li class="breadcrumb-item active">Add Topic</li>
                        </ol>
                      <div class="row">
                          <div class="col">
                       
                       <?php
                          if(isset($_SESSION['admin_errormsg']) && is_array($_SESSION['admin_errormsg'])){
                              $errors = $_SESSION['admin_errormsg'];
                              echo "<pre>";
                              print_r($error);
                              echo "</Pre>";
                            // $errors = $_SESSION['admin_errormsg'];
                            // foreach($errors as $error){
                            //     echo "<p>$error</p>";
                            // }
                           }
                        if (isset($_SESSION['admin_errormsg']) && !is_array($_SESSION['admin_errormsg'])){
                            echo "<div class='alert alert-danger'>".$_SESSION['admin_errormsg']."</div>";
                            unset($_SESSION['admin_errormsg']);
                        }

                        ?>

            <form action= "process/process_addtopic.php" method="post" enctype="multipart/form-data">
          <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control" id="title" name="title">
             
          </div>
          <div class="mb-3">
            <label for="level" class="form-label">Level</label>
           <select name="level" id="level" class="form-control">
            <option value="">Select One</option>

            <?php
                 foreach($levels as $level){
                    $levelname = $level['level_name'];
                    $levelid =$level['level_id'];

                    echo "<option value='$levelid'> $levelname</option>";
                 }
            ?>
            <option value="1">Junior</option>
            <option value="2">Senior</option>
           </select>
          </div>
           
          <fieldset class="mb-3">
            <legend>Status</legend>
            <div class="form-check">
              <input type="radio" name="status" value="0" class="form-check-input" id="exampleRadio1">
              <label class="form-check-label" for="exampleRadio1">Publish</label>
            </div>
            <div class="mb-3 form-check">
              <input type="radio" name="status" value="1" class="form-check-input" id="exampleRadio2">
              <label class="form-check-label" for="exampleRadio2">Do Not Publish</label>
            </div>
          </fieldset>
          <div class="mb-3">
            <label class="form-label" for="customFile">Upload Cover</label>
            <input type="file" class="form-control" id="customFile" name="file">
          </div>

          <div class="mb-3">
            <label class="form-label">Amount</label>
            <input type="text" class="form-control" name="amount">
          </div>

          <div class="mb-3">
            <button type="submit" class="btn btn-primary" name="btnadd" value="add">Add Topic!</button>
          </div>
          
         
          </form>
  </div>
 </div>
 </div>
 </main>
                
<?php
   require_once "partials/admin_footer.php";
?>
   