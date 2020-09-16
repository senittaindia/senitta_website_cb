<?php

date_default_timezone_set('Asia/Kolkata');

$servername = "localhost";
$username = "senitta_portal";
$password = "Admin@123!@#";
$dbname = "senitta_hygiene2";

$conn = mysqli_connect($servername, $username, $password, $dbname);

//$main4="SELECT e.employeeId as EmployeeID,e.userfullname as EmployeeName ,dt.deptname as DepartmentName, l.emp_leave_limit as TotalAllotedLeave,l.el_no as TotalAllotedEL, l.ml_no as TotalAllotedML, l.cl_no as TotalAllotedCL, l.ol_no as TotalAllotedOL, IFNULL(( SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id and leavetypeid=3 AND `leavestatus`='approved' ) ,0) AS TotalAppliedEL, IFNULL(( SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id and leavetypeid=1 AND `leavestatus`='approved' ) ,0) AS TotalAppliedML, IFNULL(( SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id and leavetypeid=2 AND `leavestatus`='approved' ) ,0) AS TotalAppliedCL, IFNULL((l.el_no - (SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id and leavetypeid=3 AND `leavestatus`='approved' )) ,l.el_no) AS TotalAvailableEL, IFNULL((l.ml_no - (SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id and leavetypeid=1 AND `leavestatus`='approved' )) ,l.ml_no) AS TotalAvailableML, IFNULL((l.cl_no - (SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id and leavetypeid=2 AND `leavestatus`='approved' )) ,l.cl_no) AS TotalAvailableCL, IFNULL((l.ol_no - (SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id and leavetypeid=4 AND `leavestatus`='approved' )) ,l.ol_no) AS TotalAvailableOL, IFNULL((l.emp_leave_limit - (SELECT sum(appliedleavescount) FROM `main_leaverequest_summary` WHERE user_id=l.user_id  AND `leavestatus`='approved' )) ,l.emp_leave_limit) AS TotalAvailableLeave FROM `main_employeeleaves` as l INNER JOIN `main_users` e ON l.user_id = e.id INNER JOIN `main_employees` p ON l.user_id = p.user_id INNER JOIN `main_departments` dt ON dt.id = p.department_id WHERE l.isactive=1 and l.alloted_year=2019 and e.userfullname !=  'Garima Saxena' AND e.userfullname !=  'Pranav Bhaskar' and  e.userfullname != 'Rajeev Pandey' and  e.userfullname != 'Super Admin'";
$main = $conn->query("SELECT e.products_name as Packsize,o.date_purchased as datepurchase,o.delivery_phone as phone, o.order_price,o.customers_name as fulname,o.delivery_street_address as shipingaddress,o.delivery_city as city,o.delivery_state as state ,o.delivery_postcode as pincode,o.email,etp.orders_status_name as status ,(CASE WHEN o.ordered_source = 1 THEN 'web' WHEN o.ordered_source = 2 THEN 'APP' ELSE 'Others' END) as ordersource FROM orders as o LEFT JOIN `orders_products` e ON o.orders_id = e.orders_id LEFT JOIN `orders_status_history` et ON o.orders_id = et.orders_id LEFT JOIN `orders_status` etp ON etp.orders_status_id = et.orders_status_id WHERE o.date_purchased >= '2020-02-23' AND o.date_purchased <= '2020-03-31'");



$array = array();
while($mailData = $main->fetch_assoc()){
//   echo  $mailData['EmployeeID'];
$array[] = $mailData;
}
download_send_headers("data_export_" . date("Y-m-d") . ".csv");
echo array2csv($array);
die();
function download_send_headers($filename) {
    // disable caching
    $now = gmdate("D, d M Y H:i:s");
    header("Expires: Tue, 03 Jul 2001 06:00:00 GMT");
    header("Cache-Control: max-age=0, no-cache, must-revalidate, proxy-revalidate");
    header("Last-Modified: {$now} GMT");

    // force download  
    header("Content-Type: application/force-download");
    header("Content-Type: application/octet-stream");
    header("Content-Type: application/download");

    // disposition / encoding on response body
    header("Content-Disposition: attachment;filename={$filename}");
    header("Content-Transfer-Encoding: binary");
}
function array2csv(array &$array)
{
   if (count($array) == 0) {
     return null;
   }
   ob_start();
   $df = fopen("php://output", 'w');
   fputcsv($df, array_keys(reset($array)));
   foreach ($array as $row) {
      fputcsv($df, $row);
   }
   fclose($df);
   return ob_get_clean();
}
?>