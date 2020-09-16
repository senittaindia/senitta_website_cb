<?php
date_default_timezone_set('Asia/Kolkata');


$servername = "localhost";

$username = "senitta_portal";

$password = "Admin@123!@#";

$dbname = "senitta_hygiene_cb";

$conn = mysqli_connect($servername, $username, $password, $dbname);


$products_id=$_POST['products_id'];
$customers_id=$_POST['customers_id'];
$customers_name="";
$reviews_rating=addslashes($_POST['rate']);
$message=addslashes($_POST['message']);


$ss=$conn->query("select * from reviews where `products_id`='$products_id' and `customers_id`='$customers_id'");
while($row=$ss->fetch_assoc())
{
 $products_id1=$row['products_id'];
 $customers_id1=$row['customers_id'];
}    
if(empty($customers_id1))
{
$result=$conn->query("INSERT INTO `reviews`(`products_id`,`customers_id`,`customers_name`,`reviews_rating`,`review_msg`) VALUES('$products_id','$customers_id','$customers_name','$reviews_rating','$message')");
}
else
{
$result=$conn->query("Update `reviews` set `reviews_rating`='$reviews_rating',`review_msg`='$message' where `products_id`='$products_id' and `customers_id`='$customers_id'"); 
}
if($result)
{
  echo "<script type='text/javascript'>alert('Review Submitted..!!');window.location = 'https://cb.senitta.com/shop'</script>";
}
else
{
 echo "<script type='text/javascript'>alert('Failed..!!');window.location = 'https://cb.senitta.com/shop'</script>";
}




?>