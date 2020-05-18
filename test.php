<?php
date_default_timezone_set('Asia/Kolkata');
session_start();

$servername = "localhost";
$username = "senitta_hygiene1";
$password = "senitta_hygiene1";

$conn = new mysqli($servername, $username, $password,'senitta_hygiene1');


   
    $makeover = $_POST['makeover'];
    $date=date("d-m-Y");
     $qq = "INSERT INTO `choose_interest`(`makeover`,`date`) VALUES ('$makeover','$date')";
    $rr = $conn->query($qq) or die($conn->error());
    if($rr)
		{
				
			echo "<script>alert('Thank you for sharing your interest & helping us get better.');window.location='https://www.senitta.com/page?name=makeover-tips';</script>";
		}
		else
		{
			
                        echo "<script>alert('Error:Failed');window.location='https://www.senitta.com/';</script>";      

		}

    
?>