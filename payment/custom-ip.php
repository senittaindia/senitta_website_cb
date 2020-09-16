<?php

function random_valid_public_ip() {  
  // Generate a random IP  
  $ip =  
      mt_rand(0, 255) . '.' .  
      mt_rand(0, 255) . '.' .  
      mt_rand(0, 255) . '.' .  
      mt_rand(0, 255);  
  
  // Return the IP if it is a valid IP, generate another IP if not  
  if (  
      !ip_in_range($ip, '10.0.0.0', '10.255.255.255') &&  
      !ip_in_range($ip, '172.16.0.0', '172.31.255.255') &&  
      !ip_in_range($ip, '192.168.0.0', '192.168.255.255')  
  ) {  
    return $ip;  
  } else {  
    return random_valid_public_ip();  
  }  
}  
  
function ip_in_range($ip, $start, $end) {  
  // Split the IP addresses into their component octets  
  $i = explode('.', $ip);  
  $s = explode('.', $start);  
  $e = explode('.', $end);  
  
  // Return false if the IP is in the restricted range  
  return in_array($i[0], range($s[0], $e[0])) &&  
      in_array($i[1], range($s[1], $e[1])) &&  
      in_array($i[2], range($s[2], $e[2])) &&  
      in_array($i[3], range($s[3], $e[3]));  
}
function hitArray($url,$header){
    $response = array();
    foreach($url as $u){
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $u); 
        curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);  
        curl_setopt($curl, CURLOPT_TIMEOUT, 10); 
        curl_setopt($curl, CURLOPT_AUTOREFERER, true); 
        curl_setopt($curl, CURLOPT_USERAGENT, 'Googlebot/2.1 (+http://www.google.com/bot.html)'); 
        curl_setopt($curl, CURLOPT_REFERER, 'http://www.google.com'); 
        curl_setopt($curl, CURLOPT_ENCODING, 'gzip,deflate'); 
        curl_setopt($curl, CURLOPT_VERBOSE, 1); 
        $response[] = curl_exec($curl);
        curl_close($curl);
    }
    return $response;
}
function loopUrls($counts,$header,$urlArray){
    $index = 0;
    $headerArr = array();
    $ip = "";
    while($index<$counts){
        $ip = random_valid_public_ip();
        $headerArr[$index] = $header;
        $headerArr[$index][] = "X_FORWARDED_FOR: " . $ip;
        $headerArr[$index][] = "REMOTE_ADDR: " . $ip;
        hitArray($urlArray,$headerArr);
        $index++;
    }
}
$urlArray = array(
    'http://bit.ly/3ea-rsi-srd'
);
$url = 'https://www.senitta.com/payment/ip.php';
$ip  = random_valid_public_ip();
$header[0]  = "Accept: text/xml,application/xml,application/xhtml+xml,"; 
$header[0] .= "text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5";
$header[] = "Cache-Control: max-age=0"; 
$header[] = "Connection: keep-alive"; 
$header[] = "Keep-Alive: 300"; 
$header[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7"; 
$header[] = "Accept-Language: en-us,en;q=0.5"; 
$header[] = "Pragma: "; 
loopUrls(50,$header,$urlArray);
$header[] = "X_FORWARDED_FOR: " . $ip;
$header[] = "REMOTE_ADDR: " . $ip;

echo json_encode(hitArray($urlArray,$header));
// $curl = curl_init();
// curl_setopt($curl, CURLOPT_URL, $url); 
// curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
// curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);  
// curl_setopt($curl, CURLOPT_TIMEOUT, 10); 
// curl_setopt($curl, CURLOPT_AUTOREFERER, true); 
// curl_setopt($curl, CURLOPT_USERAGENT, 'Googlebot/2.1 (+http://www.google.com/bot.html)'); 
// curl_setopt($curl, CURLOPT_REFERER, 'http://www.google.com'); 
// curl_setopt($curl, CURLOPT_ENCODING, 'gzip,deflate'); 
// curl_setopt($curl, CURLOPT_VERBOSE, 1); 
  

// $response = curl_exec($curl);


// echo json_encode(hitArray($urlArray,$header));
// if ($response === false) {
	
// 	die('Error '. curl_errno($curl) .': '. curl_error($curl));
	
// } else {
	
// 	echo '<div>';
// 	print_r($response);	
// 	echo '</div>';
// 	echo '<br><br>';
// 	echo '<div>' . urldecode($url) . '</div>';
	
// }

// curl_close($curl);
exit;


// function multi_thread_curl($urlArray, $optionArray, $nThreads) {

//   //Group your urls into groups/threads.
//   $curlArray = array_chunk($urlArray, $nThreads, $preserve_keys = true);

//   //Iterate through each batch of urls.
//   $ch = 'ch_';
//   foreach($curlArray as $threads) {      

//       //Create your cURL resources.
//       foreach($threads as $thread=>$value) {

//       ${$ch . $thread} = curl_init();

//         curl_setopt_array(${$ch . $thread}, $optionArray); //Set your main curl options.
//         curl_setopt(${$ch . $thread}, CURLOPT_URL, $value); //Set url.

//         }

//       //Create the multiple cURL handler.
//       $mh = curl_multi_init();

//       //Add the handles.
//       foreach($threads as $thread=>$value) {

//       curl_multi_add_handle($mh, ${$ch . $thread});

//       }

//       $active = null;

//       //execute the handles.
//       do {

//       $mrc = curl_multi_exec($mh, $active);

//       } while ($mrc == CURLM_CALL_MULTI_PERFORM);

//       while ($active && $mrc == CURLM_OK) {

//           if (curl_multi_select($mh) != -1) {
//               do {

//                   $mrc = curl_multi_exec($mh, $active);

//               } while ($mrc == CURLM_CALL_MULTI_PERFORM);
//           }

//       }

//       //Get your data and close the handles.
//       foreach($threads as $thread=>$value) {

//       $results[$thread] = curl_multi_getcontent(${$ch . $thread});

//       curl_multi_remove_handle($mh, ${$ch . $thread});

//       }

//       //Close the multi handle exec.
//       curl_multi_close($mh);

//   }


//   return $results;

// } 



// //Add whatever options here. The CURLOPT_URL is left out intentionally.
// //It will be added in later from the url array.
// $optionArray = array(
//     CURLOPT_USERAGENT        => 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:47.0) Gecko/20100101 Firefox/47.0',//Pick your user agent.
//     CURLOPT_RETURNTRANSFER   => TRUE,
//     CURLOPT_TIMEOUT          => 10,
//     CURLOPT_HTTPHEADER        => $header,
//     CURLOPT_AUTOREFERER     => true,
//     CURLOPT_USERAGENT       => 'Googlebot/2.1 (+http://www.google.com/bot.html)',
//     CURLOPT_REFERER, 'http://www.google.com',
//     CURLOPT_ENCODING, 'gzip,deflate',
//     CURLOPT_VERBOSE, 1, 
// );

// //Create an array of your urls.
// $urlArray = array(

//     'https://www.senitta.com/payment/ip.php',
//     'https://www.senitta.com/payment/ip.php'

// );

// //Play around with this number and see what works best.
// //This is how many urls it will try to do at one time.
// $nThreads = 20;

// //To use run the function.
// $results = multi_thread_curl($urlArray, $optionArray, $nThreads);

// die(json_encode($results));
?>