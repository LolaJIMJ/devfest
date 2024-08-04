<?php
require_once "Db.php";
class Transaction extends Db{
    private $dbconn;
    public function __construct(){
        $this->dbconn = $this->connect();
    }


    public function get_transaction_byref($ref){
        $query = "SELECT * FROM transaction JOIN trans_details ON trans_id=det_transid JOIN breakout_topics ON trans_details.topic_id = breakout_topics.topic_id WHERE trans_ref =?";
        $stmt = $this->dbconn->prepare($query);
        $stmt->execute([$ref]);
        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }

    public function get_transaction_amt($ref){
        $query = "SELECT trans_totamt FROM transaction WHERE trans_ref=?";
        $stmt = $this->dbconn->prepare($query);
        $stmt->execute([$ref]);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $amt = $result['trans_totamt'];
        return $amt;
    }




    public function get_topic_amt($id){
        $query = "SELECT topic_amt FROM breakout_topics WHERE topic_id=?";
        $stmt = $this->dbconn->prepare($query);
        $stmt->execute([$id]);
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $amt = $result['topic_amt'];
        return $amt;
    }

    public function insert_transaction($ref, $userid,$cart_items){
        $query = "INSERT INTO transaction(trans_ref, trans_by) VALUES(?,?)";
        $stmt = $this->dbconn->prepare($query);
        $stmt->execute([$ref,$userid]);
        $id = $this->dbconn->lastInsertId();

        //Insert into transaction details table
        $amount = 0;
        foreach($cart_items as $topicid => $qty){
            $topic_amt = $this->get_topic_amt($topicid);
            $query2 = "INSERT INTO trans_details (topic_id,det_amt,det_transid,det_qty) VALUES(?,?,?,?)";
            $stmt2 = $this->dbconn->prepare($query2); 
            $stmt2->execute([$topicid,$topic_amt,$id,$qty]);
            $amount = $amount + $topic_amt * $qty;
        }
        
        $query3 = "UPDATE transaction SET trans_totamt = ? WHERE trans_id=?";
        $stmt3 = $this->dbconn->prepare($query3);
        $stmt3->execute([$amount,$id]);
       
       
        return $id;

        
    }
}
?>