<?php
namespace App\Http\Controllers;
use DateTime;

use Illuminate\Http\Request;
use Softon\Indipay\Facades\Indipay; 
use Illuminate\Support\Facades\DB;


class PaymentController extends Controller
{
    public function index($amount=0,Request $request){
        $mode = '';
        $smode = '';
        $method = 'ccavenue_creditcard';
        session(['payment_method'=>'ccavenue']);
        if($_POST){
            $amount = $request->amount;
            $method = $request->method;
            $email = $request->email;
        
        switch($method){
            case 'ccavenue_creditcard':
                $mode = 'OPTCRDC';
                $smode = 'CRDC';
                break;
            case 'ccavenue_debit':
                $mode = 'OPTDBCRD';
                $smode = 'DBCRD';
                break;
            case 'ccavenue_net':
                $mode = 'OPTNBK';
                $smode = 'NBK';
                break;
            case 'ccavenue_mobile':
                $mode = 'OPTMOBP';
                $smode = 'MOBP';
                break;
            case 'ccavenue_paytm':
                $mode = 'OPTWLT';
                $smode = 'WLT';
                break;
            case 'ccavenue_creditcard':
                $mode = 'OPTCHKOT';
                $smode = 'CHKOT';
                break;
            case 'ccavenue_upi':
                $mode = 'OPTUPI';
                $smode = 'UPI';
                break;
            default :
                $mode = 'OPTCRDC';
                $smode = 'CRDC';
        }
        $billing_address = session('billing_address');
        
        
        $country = DB::table('countries')->where('countries_id', $billing_address->billing_countries_id)->first();
        $state = DB::table('zones')->where('zone_id', $billing_address->billing_zone_id)->first();
     $now = new DateTime();
$timestamp = $now->getTimestamp(); 
        $parameters = [
            'tid'   =>  time().rand(111,999),
            'order_id' => $timestamp.rand(11,99),
            'merchant_id' => '231302',
            'amount' =>$amount,
            'billing_name'=> $billing_address->billing_firstname." ".$billing_address->billing_lastname,
            'billing_address'=>$billing_address->billing_street,
            'billing_city'=>$billing_address->billing_city,
            'billing_state'=>$state->zone_name,
            'billing_zip'=>$billing_address->billing_zip,
            'billing_country'=>$country->countries_name,
            'billing_tel'=>$billing_address->billing_phone,
            'billing_email'=>$email,
            'payment_option'=>$mode,
            'card_type'=>$smode
          ];
          
          //$order = Indipay::prepare($parameters);
          $order = Indipay::gateway('CCAvenue')->prepare($parameters);
          return Indipay::process($order);
        //   dd(Indipay::process($order));
    }
    }

    public function cancel(Request $request){
        dd('cancel');
    }

    /*public function success(Request $request){
        
        // For Otherthan Default Gateway
        //$response = Indipay::gateway('CCAvenue')->response($request);
        //dd($request);
        echo '
        <html>
            <body>
                <form id="myForm" method="post" enctype="multipart/form-data" action="'.URL::to('/place_order').'"></form>
                <script>
                    document.getElementById("myForm").submit();
                </script>
            </body>
        </html>
        ';
    }*/
    
    public function response(Request $request)
    
    {        
        // For Otherthan Default Gateway
        $response = Indipay::gateway('CCAvenue')->response($request);

        dd($response);
    
    }  
}
