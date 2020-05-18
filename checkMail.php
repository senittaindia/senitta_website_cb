<?php
date_default_timezone_set('Asia/Kolkata');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "senitta_hygiene";
$conn = mysqli_connect($servername, $username, $password, $dbname);

if(!filter_var($_GET['email'], FILTER_VALIDATE_EMAIL)){
    echo '1';
    exit();
}
$email=$_GET['email'];
$echeck=$conn->query("select email from customers where email='$email'");
$ecount=mysqli_num_rows($echeck);
if($ecount!=0){
    echo '0';
    exit();
}
else{
    echo '2';
}

?>