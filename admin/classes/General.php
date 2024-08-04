<?php

  class General{
    public static function sanitize($evil_string){
        $safe_string = addslashes($evil_string);
        $safe_string = strip_tags($safe_string);
        $safe_string = htmlentities($safe_string);
        return $safe_string;
    }
  }

?>