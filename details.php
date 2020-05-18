<?php
date_default_timezone_set('Asia/Kolkata');


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "senitta_hygiene";

$conn = mysqli_connect($servername, $username, $password, $dbname);


$name=$_POST['name'];
$email=$_POST['email'];
$phone=$_POST['phone'];
$date=date('d-m-Y');

//$message="<table border='1'><tr><th style='width:15%;text-align:left;padding:10px;'>Name</th><td style='width:25%;padding:10px;'>$name</td></tr><tr><th style='width:15%;text-align:left;padding:10px;'>Email Id</th><td style='width:25%;padding:10px;'>$email</td></tr><tr><th style='width:15%;text-align:left;padding:10px;'>Phone No.</th><td style='width:25%;padding:10px;'>$phone</td></tr></table>";


$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$from=$email;
$to="info@senitta.com";
$subject = "New Customer Enquiry";
$headers .= "From:".$from. "\r\n";


if(isset($_POST['submit']))
{
    
   $recaptcha_secret = "6Ldy17UUAAAAANBMfaa33C2rqovIh7jnCp-ByPKG";
   $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$recaptcha_secret."&response=".$_POST['g-recaptcha-response']);
   $response = json_decode($response, true);


if($response["success"] === true){
    
    
    
    
$result=$conn->query("INSERT INTO `enquiry`(`name`,`email`,`phone`,`date_s`) VALUES('$name','$email','$phone','$date')");

//$mm = mail($to,$subject,$message,$headers);

if($result)
{
  echo "<script type='text/javascript'>alert('Thanks for application. We will approach you soon.');window.location = 'https://www.senitta.com/'</script>";
}
else
{
 echo "<script type='text/javascript'>alert('Failed..!!');window.location = 'https://www.senitta.com/'</script>";
}
}
else
{
      echo "<script>alert('Please Check Recaptcha');window.location='https://www.senitta.com/';</script>";      
}
}


?>