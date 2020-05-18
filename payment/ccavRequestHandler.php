<?php
session_start();
?>
<html>
<head>
<title></title>
</head>
<body>
<center>

<?php include('Crypto.php')?>
<?php
	error_reporting(0);
	$merchant_data='231302';
	$working_key='970B53A1EFA1020284360B585F416E59';//Shared by CCAVENUES
	$access_code='AVHT87GI81BJ01THJB';//Shared by CCAVENUES
	foreach ($_POST as $key => $value){
	    $_SESSION[$key]=$value;
	   //echo $value;
		$merchant_data.=$key.'='.urlencode($value).'&';
	}
//die;
	$encrypted_data=encrypt($merchant_data,$working_key); // Method for encrypting the data.
?>
<form method="post" name="redirect" action="https://secure.ccavenue.com/transaction/transaction.do?command=initiateTransaction"> 
<?php
echo "<input type=hidden name=encRequest value=$encrypted_data>";
echo "<input type=hidden name=access_code value=$access_code>";
?>
</form>
</center>
<script language='javascript'>document.redirect.submit();</script>
</body>
</html>

