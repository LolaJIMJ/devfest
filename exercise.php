<?php

    require_once('classes/utilities.php');

    $outputs = Utilities::get_exercises();
    // print_r($outputs);
?>

<div class="row py-3">
    <h3 class="text-center">Recommemnded Muscle Buiding Exercises</h3>
    <?php
        if (!is_string($outputs)) {
            foreach($outputs as $output){
           
    ?>
         <div class="col-md-6">
            <div class="card mb-2">
                <div class="card-body">
                    <h5 class="text-center"><?php echo $output->name ?></h5>
                    <p>Type: <?php echo $output->type ?></p>
                    <p>Muscle: <?php echo $output->muscle ?></p>
                    <p>Difficulty: <?php echo $output->difficulty ?></p>
                    <p><?php echo $output->instructions ?></p>
                </div>
            </div>
         </div>
    <?php
            }
        } else {
    ?>
        <center><div class="col-md-6 alert alert-danger"><h5>Please check your internet connect and refresh</h5></div></center>
    <?php
        }
    ?>
</div>