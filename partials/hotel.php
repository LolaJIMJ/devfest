
<?php
require_once "classes/utilities.php";
$props = Utilities::get_properties();

// echo "<pre>";
// print_r($props);
// echo "</pre>";

?>
      





<div class="layout" style="margin-top:60px" id="partner">
  
  <div class="container px-4" id="custom-cardx">
    <h2 class="pb-2 border-bottom heading-text">Partner Accomodations</h2>

    <div class="row row-cols-1 row-cols-lg-4 align-items-stretch g-4 py-5">
      
    <?php
    
    if($props && $props->success == true){
    // print_r($props->data);
    $hotels = $props->data;
    
          foreach($hotels as $hotel){
            
            // print_r($hotel);
            ?>
    
      
     <div class="col">
       <img src="<?php echo $hotel->image; ?>" class="img-fluid jiji" alt="">    
       <div class="deets">
        <h6> <?php echo $hotel->name; ?> </h6>
       </div>  
       </div>

       <?php
          }
        }
       ?>
          
    </div>
  </div> 
 </div>