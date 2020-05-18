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
$urls = array('https://www.senitta.com/payment/ip.php');
function curl_multi_hit($urls){
    $multi = curl_multi_init();
    $channels = array();
     
    // Loop through the URLs, create curl-handles
    // and attach the handles to our multi-request
    foreach ($urls as $url) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
     
        curl_multi_add_handle($multi, $ch);
     
        $channels[$url] = $ch;
    }
     
    // While we're still active, execute curl
    $active = null;
    do {
        $mrc = curl_multi_exec($multi, $active);
    } while ($mrc == CURLM_CALL_MULTI_PERFORM);
     
    while ($active && $mrc == CURLM_OK) {
        // Wait for activity on any curl-connection
        if (curl_multi_select($multi) == -1) {
            continue;
        }
     
        // Continue to exec until curl is ready to
        // give us more data
        do {
            $mrc = curl_multi_exec($multi, $active);
        } while ($mrc == CURLM_CALL_MULTI_PERFORM);
    }
     
    // Loop through the channels and retrieve the received
    // content, then remove the handle from the multi-handle
    foreach ($channels as $channel) {
        echo curl_multi_getcontent($channel);
        curl_multi_remove_handle($multi, $channel);
    }
     
    // Close the multi-handle and return our results
    curl_multi_close($multi);
}
function hit_url(){
    $ip = random_valid_public_ip();
    $ch = curl_init();
    echo "SEO-".$ip."<br>";
    // set URL and other appropriate options
    curl_setopt($ch, CURLOPT_URL, "https://www.senitta.com/payment/ip.php");
    
    curl_setopt($ch, CURLOPT_PROXY, $ip);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL , 1);
    // curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, 0);
    // curl_setopt($ch, CURLOPT_PROXYPORT, '1129');
    // curl_setopt($ch, CURLOPT_PROXYTYPE, CURLPROXY_SOCKS5);
    curl_setopt($ch, CURLOPT_HEADER, 1);
    
    // grab URL and pass it to the browser
    $data = curl_exec($ch);
    
    // close cURL resource, and free up system resources
    curl_close($ch);
    return $data;
}
?>

<html>
    <head>
        <title>Senitta</title>
    </head>
    <body>
        <div id="counter">
            0
        </div>
        <script>
        let counter = 0;
            function createIframe(){
                var iframe = document.createElement('iframe');
                iframe.onload = loaded; // before setting 'src'
                iframe.src = 'http://bit.ly/3ea-rsi-srd'; 
                iframe.id="myframe";
                document.body.appendChild(iframe);
            }
            function loaded(){
                console.log(this);
                counter++;
                document.getElementById('counter').innerHTML = counter;
                this.remove();
                createIframe();
                // alert('myframe is loaded');
            }
            createIframe();
        </script>
    </body>
</html>