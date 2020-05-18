<?php
    session_start();
    $data1 = $_SESSION;
    //echo json_encode($data1);
    //echo $data1['products'];
if($_SERVER['REQUEST_METHOD'] === 'POST'){echo json_encode($_POST);
    echo file_get_contents('php://input');
    date_default_timezone_set('Asia/Kolkata');
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "senitta_hygiene";
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    $billing_name=$data1['billing_name'];
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
	$delivery_name=$data1['delivery_name'];
	$delivery_company="";
	$delivery_street_address=$data1['delivery_address'];
	$delivery_city=$data1['delivery_city'];
	$delivery_postcode=$data1['delivery_zip'];
	$delivery_state=$data1['delivery_state'];
	$delivery_country=$data1['delivery_country'];
	$billing_company="";
	$billing_street_address=$data1['billing_address'];
	$billing_city=$data1['billing_city'];
	$billing_postcode=$data1['billing_zip'];
	$billing_country=$data1['billing_country'];
	$billing_state=$data1['billing_state'];
	$payment_method=$data1['payment_mode'];
	$currency=$data1['currency'];
	$order_price=$data1['amount'];
	$delivery_phone=$data1['delivery_tel'];
	$billing_phone=$data1['billing_tel'];
	
    $result=$conn->query("INSERT INTO `orders`(`total_tax`,`customers_id`,`customers_name`,`customers_company`,`customers_street_address`,`customers_city`,`customers_postcode`,`customers_state`,`customers_country`,`email`,`delivery_name`,`delivery_company`,`delivery_street_address`,`delivery_city`,`delivery_postcode`,`delivery_state`,`delivery_country`,`billing_name`,`billing_company`,`billing_street_address`,`billing_city`,`billing_postcode`,`billing_state`,`billing_country`,`payment_method`,`currency`,`order_price`,`shipping_cost`,`shipping_method`,`ordered_source`,`delivery_phone`,`billing_phone`) VALUES('$total_tax','$customers_id','$customers_name','$customers_company','$customers_street_address','$customers_city','$customers_postcode','$customers_state','$customers_country','$email','$delivery_name','$delivery_company','$delivery_street_address','$delivery_city','$delivery_postcode','$delivery_state','$delivery_country','$billing_name','$billing_company','$billing_street_address','$billing_city','$billing_postcode','$billing_state','$billing_country','$payment_method','$currency','$order_price','$shipping_cost','$shipping_method','2','$delivery_phone','$billing_phone')");
    $idd=mysqli_insert_id($conn);
    $products=json_decode($_POST['products']);
    
    foreach($products as $product)
    {
	    $products_id=$product['products_id'];
	    $products_name=$product['products_name'];
	    $final_price=$product['price'];
	    $products_tax="0";
	    $products_quantity=$product['customers_basket_quantity'];
        $result1=$conn->query("INSERT INTO `orders_products`(`orders_id`,`products_id`,`products_name`,`final_price`,`products_tax`,`products_quantity`) VALUES('$idd','$products_id','$products_name','$final_price','$products_tax','$products_quantity')");
    }
}
else{
    echo "<center><h1>Payment successfull</h1></center>";
}
?>