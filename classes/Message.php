<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require '../vendor/autoload.php';



class Message{
    
public function sendMail($email, $msg){
    $mail = new PHPMailer(true);

    try {
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'adenijiololadeh@gmail.com';                     //SMTP username
        $mail->Password   = 'avnx mqjz ieqg yqlc';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
    
        //Recipients
        $mail->setFrom('admin@devfest.com', 'Devfest Online');
        $mail->addAddress($email, 'Website Visitor');     //Add a recipient
        // $mail->addAddress('ellen@example.com');               //Name is optional
        // $mail->addReplyTo('info@example.com', 'Information');
        // $mail->addCC('cc@example.com');
        // $mail->addBCC('bcc@example.com');
    
        //Attachments
         $mail->addAttachment('../devfest_db.png');         //Add attachments
        // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
    
        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = 'Thank you for contacting us';
        $mail->Body    = "Your message $msg was received. <br> You need to send the following: 
        <img src='https://www.google.com/search?q=image+shoe&oq=image+shoe&gs_lcrp=EgZjaHJvbWUyCQgAEEUYORiABDIHCAEQABiABDIHCAIQABiABDIHCAMQABiABDIHCAQQABiABDIHCAUQABiABDIHCAYQABiABDIHCAcQABiABDIHCAgQABiABDINCAkQABiGAxiABBiKBdIBCDc1NTZqMGo3qAIIsAIB&sourceid=chrome&ie=UTF-8#ip=1&vhid=3MbRyFmPmGjN6M&vssid=l' width='200'>
        <ul>
             <li>Passport</li>
             <li> Registration form</li> 
        </ul>";
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
        $mail->send();
        echo 'Message has been sent';
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }

}


    // public function send_message($email, $msg) {
    //     //insert into db and send acknowledgement email to user
    //   //   $check = mail($to,$subject,$message,$headers,$opt);
    //    //$to = "adesewa@yahoo.com, dami@yahoo.com";
    
    //    $headers = "From: Devfest Website <admin@devfest.com>"."\r\n";
    //    //$headers .= "MIME-Version: 1.0"."\r\n";
    //    //$headers .= Content-type:text/html;charset=UTF-8" . "\r\n";
    //     $subject = "Thank you for contacting us";
    //     $message = "Your message $msg has been received</b>"."\r\n"."Thank you".
    //     $check = mail($email,$subject,$message,$headers);
    //     if ($check) {
    //      echo "Thank you for contacting Devfest";
    //   }else{
    //     echo "Please try again";
    //   }
    // }

}


?>