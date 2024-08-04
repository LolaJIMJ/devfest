<?php 

 function sanitizer($evilstring){
    $clean_string = strip_tags($evilstring);
    $clean_string = addslashes($clean_string);
    $clean_string = htmlentities($clean_string);
     return $clean_string;
 }

 class Utilities{
    public static function get_properties(){
        #we will initializer curl, connect to the endpoint, receive data and return the data
        //STEP 1- INITIALIZE CURL
        $curlobj = curl_init('http://localhost/hotelsdotng/api/v1/listall.php');
        //STEP2- SET OPTIONS
        curl_setopt($curlobj, CURLOPT_RETURNTRANSFER, true);
        //STEP3- EXECUTE THE CURL SESSION USING curl_exec()
        $response = curl_exec($curlobj);
        //STEP4- CLOSE THE OPENED curl session
        curl_close($curlobj);
        //STEP5- DO WHATEVER YOU WANT TO DO WITH THE RESPONSE
        $response_inphp_obj = json_decode($response);
        return $response_inphp_obj;
    }
 }
?>