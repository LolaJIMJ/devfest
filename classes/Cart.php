<?php

class Cart{



    public function add($id){
        if(isset($_SESSION['topics'])){
        array_push($_SESSION['topics'],$id);
        }else{
            $_SESSION['topics'] = [];
            array_push($_SESSION['topics'],$id);
        }
    }

    public function addToCart($id){
        if(isset($_SESSION['topics'])){
            if(array_key_exists($id,$_SESSION['topics'])){  //this particular topic has been added to cart before
                $existing_qty = $_SESSION['topics'][$id];
                $_SESSION['topics'][$id] = $existing_qty + 1;
             
            
            }else{
                //this particular topic has not been added to cart before
                $_SESSION['topics'][$id] = 1 ;
                [$id] = 1;
                
            }
        }else{
            $_SESSION['topics'][$id] = 1;
        }

       
        }
    }

?>