<?php
session_start();
//$data1 = $_SESSION;
//echo json_encode($data1);
//echo $data1['products'];

date_default_timezone_set('Asia/Kolkata');
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "senitta_hygiene";
$conn = mysqli_connect($servername, $username, $password, $dbname);
?>
<?php include('Crypto.php')?>
<?php
	error_reporting(0);
	$workingKey='970B53A1EFA1020284360B585F416E59';		//Working Key should be provided here.
	$encResponse=$_POST["encResp"];			//This is the response sent by the CCAvenue Server
	$rcvdString=decrypt($encResponse,$workingKey);		//Crypto Decryption used as per the specified working key.
	$order_status="";
	$decryptValues=explode('&', $rcvdString);
	$dataSize=sizeof($decryptValues);
	echo "<center>";
    //print_r($decryptValues);
    $data = array();
    // $customerData;
	for($i = 0; $i < $dataSize; $i++) 
	{
		$data[$information[0]]=$information[1];
		$information=explode('=',$decryptValues[$i]);
		//print_r($information);
		if($i==3)	$order_status=$information[1];
		if($i==1)	$reference=$information[1];
		if($i==0)	$od_id=$information[1];
	}
	/*$billing_name=$data['billing_name'];
	$total_tax = $data1['total_tax'];
	$customers_id = $data1['customers_id'];
	$customers_name = $data1['customers_name'];
	$customers_company = $data1['customers_company'];
	$customers_street_address = $data1['customers_street_address'];
	$customers_city = $data1['customers_city'];
	$customers_postcode = $data1['customers_postcode'];
	$customers_state = $data1['customers_state'];
	$customers_country = $data1['customers_country'];
	$email = $data1['email'];
	$shipping_cost=$data1['shipping_cost'];
	$shipping_method=$data1['shipping_method'];
	$delivery_name=$data['delivery_name'];
	$delivery_company="";
	$delivery_street_address=$data['delivery_address'];
	$delivery_city=$data['delivery_city'];
	$delivery_postcode=$data['delivery_zip'];
	$delivery_state=$data['delivery_state'];
	$delivery_country=$data['delivery_country'];
	$billing_company="";
	$billing_street_address=$data['billing_address'];
	$billing_city=$data['billing_city'];
	$billing_postcode=$data['billing_zip'];
	$billing_country=$data['billing_country'];
	$billing_state=$data['billing_state'];
	$payment_method=$data['payment_mode'];
	$currency=$data['currency'];
	$order_price=$data['amount'];
	$delivery_phone=$data['delivery_tel'];
	$billing_phone=$data['billing_tel'];
	*/
	
    if($order_status==="Success")
    {   
        $result=$conn->query("INSERT INTO `payment`(`reference_no`,`order_id`) VALUES('$reference','$od_id')");
         $idd=mysqli_insert_id($conn);
        header("Location: https://www.senitta.com/payment/success.php");
    
    
    
        /*$result=$conn->query("INSERT INTO `orders`(`total_tax`,`customers_id`,`customers_name`,`customers_company`,`customers_street_address`,`customers_city`,`customers_postcode`,`customers_state`,`customers_country`,`email`,`delivery_name`,`delivery_company`,`delivery_street_address`,`delivery_city`,`delivery_postcode`,`delivery_state`,`delivery_country`,`billing_name`,`billing_company`,`billing_street_address`,`billing_city`,`billing_postcode`,`billing_state`,`billing_country`,`payment_method`,`currency`,`order_price`,`shipping_cost`,`shipping_method`,`ordered_source`,`delivery_phone`,`billing_phone`) VALUES('$total_tax','$customers_id','$customers_name','$customers_company','$customers_street_address','$customers_city','$customers_postcode','$customers_state','$customers_country','$email','$delivery_name','$delivery_company','$delivery_street_address','$delivery_city','$delivery_postcode','$delivery_state','$delivery_country','$billing_name','$billing_company','$billing_street_address','$billing_city','$billing_postcode','$billing_state','$billing_country','$payment_method','$currency','$order_price','$shipping_cost','$shipping_method','2','$delivery_phone','$billing_phone')");
        $idd=mysqli_insert_id($conn);
        $products=json_decode($data1['products']);
        
        foreach($products as $product)
        {
	    $products_id=$product['products_id'];
	    $products_name=$product['products_name'];
	    $final_price=$product['price'];
	    $products_tax="0";
	    $products_quantity=$product['customers_basket_quantity'];
        $result1=$conn->query("INSERT INTO `orders_products`(`orders_id`,`products_id`,`products_name`,`final_price`,`products_tax`,`products_quantity`) VALUES('$idd','$products_id','$products_name','$final_price','$products_tax','$products_quantity')");
        }*/
        //echo "<br>Thank you for shopping with us. Your credit card has been charged and your transaction is successful. We will be shipping your order to you soon.";
    }
	else if($order_status==="Aborted")
	{   header("Location: https://www.senitta.com/payment/failed.php");
		echo "<br>Thank you for shopping with us. We will keep you posted regarding the status of your order through e-mail";
	}
	else if($order_status==="Failure")
	{   header("Location: https://www.senitta.com/payment/failed.php");
		echo "<br>Thank you for shopping with us. However,the transaction has been declined.";
	}
	else
	{   header("Location: https://www.senitta.com/payment/failed.php");
		echo "<br>Security Error. Illegal access detected";
	}

	echo "<br><br>";
	echo "<table cellspacing=4 cellpadding=4>";
	for($i = 0; $i < $dataSize; $i++) 
	{
		$information=explode('=',$decryptValues[$i]);
	    	echo '<tr><td>'.$information[0].'</td><td>'.urldecode($information[1]).'</td></tr>';
	}

	echo "</table><br>";
	echo "</center>";
?>
