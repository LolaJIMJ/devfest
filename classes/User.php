<?php

    error_reporting(E_ALL);
    require_once('Db.php');

    class User extends Db
    {
        private $dbconn;

        public function __construct()
        {
            $this->dbconn = $this->connect();
        }

           #calling the method from process_login.php
        public function login($email,$password){
            try{
                $query = "SELECT * FROM user WHERE user_email = ? LIMIT 1";
                $stmt = $this->dbconn->prepare($query);
                $stmt->execute([$email]);
                $result = $stmt->fetch(PDO::FETCH_ASSOC);
                 if($result){
                    $hashed = $result['user_password'];
                    $chk = password_verify($password,$hashed); //true or false
                    if($chk){
                        return $result['user_id'];
                 }else{
                    $_SESSION['errormsg'] = "The password is wrong";
                    return 0;
                 }
                }else{
                    $_SESSION['errormsg'] = "invalid email";
                    return 0;
                }
            
            }catch(Exception $e){
                $_SESSION['useronline'] = $e->getMessage();
                return 0;
            }
        }

        public function update_user($fname, $lname, $phone, $level, $id){
            $sql = "UPDATE user SET user_fname=?, user_lname=?, user_phone=?, user_level=? WHERE user_id=?";
            $stmt = $this->dbconn->prepare($sql);
            $ch = $stmt->execute([$fname, $lname, $phone, $level, $id]);
            if($ch){
                return true;
            }else{
                return false;
            }
        }
           #getuserbyid
        public function get_user_by_id($id){
            try{
               $query = "SELECT * FROM user WHERE user_id = ?";
               $stmt = $this->dbconn->prepare($query);
               $stmt->execute([$id]);
               $result = $stmt->fetch(PDO::FETCH_ASSOC);
                 return $result;
            }catch (PDOException $e) {
                $_SESSION['errormsg'] = $e->getMessage();
                 return 0;
            }catch(Exception $e){
                $_SESSION['errormsg'] = $e->getMessage();
                return 0;
            }
        }

           #logout
        public function logout(){
            session_unset();
            session_destroy();
        }

        public function insert_user($fname, $lname, $email, $pwd){

             try{
                     #sql
            $query = "INSERT INTO user(user_fname, user_lname, user_email, user_password) VALUES (?, ?, ?, ?)";

                    #prepare
            $stmt = $this->dbconn->prepare($query);
                   
                    #execute
            $hashed = password_hash($pwd, PASSWORD_DEFAULT);
            $result = $stmt->execute([$fname, $lname, $email, $hashed]);

            #after insertion, get the id on the table, save it in a session and return it
            $id = $this->dbconn->lastInsertId();
              return $id;
             }catch(PDOException $e){
                $_SESSION['errormsg']= $e->getMessage();
                 return 0;
                //echo $e->getMessage();
             }catch(Exception $e){
                $_SESSION['errormsg']= $e->getMessage();
                return 0;
             }
               
        }
    }

?>