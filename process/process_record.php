<?php

error_reporting(E_ALL);
session_start();
require_once('../classes/Goal.php');
require_once('../classes/utilities.php');

if (isset($_POST['record_goal'])) {
    $record = sanitizer($_POST['goal_target']) + $_POST['activity_amt'];
    $goal_id = $_POST['goal_id'];
    $user_id = $_SESSION['user_online'];

    if (empty($record)) {
        $_SESSION['error_message'] = "Please input a record";
        header("location:../goal_detail.php?goal_id=$goal_id");
        exit();
    }

    $activity = $goal->add_activity($user_id, $goal_id, $record);

    if ($activity) {
        $_SESSION['success_message'] = "Activity updated successfully";
        header("location:../goal_detail.php?goal_id=$goal_id");
        exit();
    } else {
        $_SESSION['error_message'] = "Activity update failed. Please try again";
        header("location:../goal_detail.php?goal_id=$goal_id");
        exit();
    }
    
    
} else {
    header("location:../goal_detail.php?goal_id=$goal_id");
    exit();
}

?>