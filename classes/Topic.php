<?php
error_reporting(E_ALL);

   require_once "Db.php";

   class Topic extends Db{
     private $dbconn;

     public function __construct(){
        $this->dbconn = $this->connect();
     }

     public function fetch_levels(){
        $sql = "SELECT * FROM level";
        $stmt = $this->dbconn->prepare($sql);
        $stmt->execute();
        $records = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $records;
     }

     public function get_all_topics($levelid){

      if(!$levelid){
        $query = "SELECT * FROM breakout_topics JOIN level ON topic_level=level_id WHERE topic_status=?";
        
        $stmt = $this->dbconn->prepare($query);
        $stmt->execute([1]);
        
     }else{
      $query = "SELECT * FROM breakout_topics JOIN level ON topic_level=level_id WHERE topic_status=? AND topic_level=?";
        
      $stmt = $this->dbconn->prepare($query);
      $stmt->execute([1,$levelid]);
     }
      $records = $stmt->fetchAll(PDO::FETCH_ASSOC);
      return $records;
     }
   
    
    
     public function add_newtopic($title,$file,$level,$status,$amount){
        //upload file first
        //  print_r($file);
        $original = $file['name'];
        $temp = $file['tmp_name'];
        $r = explode(".",$original);
        $newname = time().rand().".".$r[1];

        move_uploaded_file($temp,"../uploads/$newname");

          //insert into db
          try{
          $query = "INSERT INTO breakout_topics (topic_name, topic_image, topic_level, topic_status, topic_amt) VALUES (?,?,?,?,?)";
          $stmt = $this->dbconn->prepare($query);
          $result = $stmt->execute([$title,$newname,$level,$status,$amount]);
          $_SESSION['admin_feedback'] = "$title successfully added";
          return $result;
          $stmt->execute([]);
        }catch(Exception $e){
            $_SESSION['admin_errormsg'] = $e->getMessage();
            return 0;
        }

      
        }
        public function delete_topic($id){
         $sql = "DELETE FROM breakout_topics WHERE topic_id = ?";
         $stmt = $this->dbconn->prepare($sql);
         $result = $stmt->execute([$id]);
         return $result;
        }

        public function get_topic_by_id($id){
         $sql = "SELECT * FROM breakout_topics WHERE topic_id = ?";
         $stmt = $this->dbconn->prepare($sql);
         $stmt->execute([$id]);
         $result = $stmt->fetch();
         return $result;
        }

        //a method to update topic
        public function update_topic($title,$level,$status,$amount,$id){
        $sql = "UPDATE breakout_topics SET topic_name = ?, topic_level = ?, topic_status = ?, topic_amt = ? WHERE topic_id = ?";
        $stmt = $this->dbconn->prepare($sql);
       
        $response = $stmt->execute([$title,$level,$status,$amount,$id]);
        return $response;
   }
}
    
     //$res = new Topic;
     // var_dump($res->get_topic_by_id(60));
?>