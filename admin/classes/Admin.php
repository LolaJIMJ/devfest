<?php


    error_reporting(E_ALL);
    require_once("Db.php");
    class Admin extends Db{
        private $dbconn;

        public function __construct(){
            $this->dbconn = $this->connect();
        }

        public function admin_logout(){
          unset($_SESSION['adminonline']);
           session_destroy();
        }
        
        public function admin_login($username, $password){
            try{
                $query = "SELECT * FROM admin WHERE admin_name=?";
                $stmt = $this->dbconn->prepare($query);
                $result = $stmt->execute([$username]);
                $record = $stmt->fetch(PDO::FETCH_ASSOC);
                if($record){ //username is correct, lets check the pwd

                    $hashed = $record['admin_password'];
                    $chk = password_verify($password, $hashed); //true/false

                    if($chk){ //login is correct
                        $_SESSION['adminonline'] = $record['admin_id'];
                        return 1;
                    
                    }else{
                        $_SESSION['admin_errormsg'] = "Invalid credentials";
                        return 0;
                    }
                }else{ //username is not correct
                    $_SESSION['admin_errormsg'] = "Invalid credentialszzzz";
                    return 0;
                }
          
            }catch(PDOException $p){
                $_SESSION['admin_errormsg'] = $p->getMessage();
                return 0;
            }catch(Exception $e){
                $_SESSION['admin_errormsg'] = $e->getMessage();
                return 0;
            }
        }
    }
?>