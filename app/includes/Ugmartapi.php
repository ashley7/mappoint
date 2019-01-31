<?php
namespace App\includes;
ini_set('max_execution_time', 2000);
use Auth;
use App\Client;
/**
* This class is User generated.
*/
class Ugmartapi
{
	 

	public function moneytransactions($username,$password,$network_id,$amount,$phonenumber,$account_code)
	{

	    if (!function_exists('curl_init')){
            return 'Sorry cURL is not installed!';
        }    

        $vendoruuid=time(); 

        /***COMMISION RULES
          'account_code'=>'UGM1515600464',
        1. Ugmart takes 2.5%
        2. Zimba takes 1.5%
          Total commision=5.5%
        ***/

        $ugmart_commision=round(($amount*(2.5/100)),0);
        $zimba_commision=round(($amount*(1.5/100)),0);

        $total_commision=$ugmart_commision+$zimba_commision;
        $allamount=$total_commision+$amount;
        // login
        $apiobj=new Ugmartapi();
        $loginresults=$apiobj->login_results($password,$username);

        // Send MM request
        $post_data=array(            
            'provider_id'=>$network_id,
            'type'=>'DEPOSIT',
            'application'=>'Zeemba',
            'currency'=>'UGX',
            'account_code'=>$account_code,
            'amount'=>(int)$allamount,
            'transaction_id'=>'a6006ad3dba'.$vendoruuid,
            'msisdn'=>$phonenumber,
            'description'=>'Payment Request.',
        );

        $url="https://app.ugmart.ug/api/request-payment";
        try {
           $header=array('Content-Type: application/json','Authorization: Bearer '.$loginresults["token"]);
         
        } catch (\Exception $e) {
            // return $header;
        }
        try {
            $ch=curl_init();
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER,FALSE);
            curl_setopt($ch, CURLOPT_URL,$url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
            curl_setopt($ch, CURLOPT_POST,1);
            curl_setopt($ch, CURLOPT_POSTFIELDS,json_encode($post_data));
            curl_setopt($ch, CURLOPT_HEADER, 0);
            curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 ;Windows NT 6.1; WOW64; AppleWebKit/537.36 ;KHTML, like Gecko; Chrome/39.0.2171.95 Safari/537.36");        
            curl_setopt($ch, CURLOPT_HTTPHEADER,$header);    
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
              
        $output=curl_exec($ch);
        curl_close($ch);
        
       if ($output===FALSE) {
        	return "cURL Error: ".curl_error($ch);
        }
        
        return $output;
       

	}

	//Make VISA-Transactions

	public function visaTransactions($username,$password,$amount,$client_id,$account_code)
	{
		# code...

		if (!function_exists('curl_init')){
            return 'Sorry cURL is not installed!';
        }

        $reead_client=Client::find($client_id); 

        $phonenumber=$reead_client->user->phonenumber;

        // login
        $apiobj=new Ugmartapi();
        $loginresults=$apiobj->login_results($password,$username);  



        // $url="https://wallet.ugmart.ug/charge-visa"; 
        $url="https://app.ugmart.ug/api/request-payment";
        $vendoruuid=time(); 

        /***COMMISION RULES

        1. VISA takes 4%
        2. Zimba takes 1.5%
          Total commision=5.5%
        ***/

          $ugmart_commision=round(($amount*(4/100)),2);
          $zimba_commision=round(($amount*(1.5/100)),2);
          $total_commision=$ugmart_commision+$zimba_commision;
          $amount=$total_commision+$amount;

          $data=$amount."_".$client_id.'_'.$ugmart_commision.'_'.$zimba_commision; 

        $post_data=array(        	
            'transaction_id'=>'a6006ad3dba'.$vendoruuid,
            'account_code'=>$account_code,
            'provider_id'=> 'visa_mastercard',
            'msisdn'=>$phonenumber,            
            'currency'=> 'UGX',
            'amount'=>(int)$amount,
            'application'=> 'Zeemba',
            'description'=> 'Payment Request.',
            'callback_url'=>'http://18.217.138.76/savetransactions?my_data='.$data,
        );
        // $post_data=json_encode($post_data); 
        $ch=curl_init();
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS,json_encode($post_data));
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 ;Windows NT 6.1; WOW64; AppleWebKit/537.36 ;KHTML, like Gecko; Chrome/39.0.2171.95 Safari/537.36");
        try {
        	 curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json','Authorization: Bearer '.$loginresults['token']));
        } catch (\Exception $e) {
        	
        }
      

        $output=curl_exec($ch);

        curl_close($ch);

        if ($output===FALSE) {
        	return "cURL Error: ".curl_error($ch);
        }

        return $output;
      
    }




  public function login_results($password,$email){
          $loginpost_data=array(          
            "password"=>$password,
            "email"=>$email,            
        );

        //    $loginpost_data=array(          
        //     "password"=>"inovation#",
        //     "email"=>"innovationtop2015@gmail.com",            
        // );
 
        // Login
        $login=curl_init();
        curl_setopt($login, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($login, CURLOPT_URL, "https://app.ugmart.ug/api/login");
        curl_setopt($login, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($login, CURLOPT_POST, TRUE);
        curl_setopt($login, CURLOPT_POSTFIELDS, json_encode($loginpost_data));
        curl_setopt($login, CURLOPT_HEADER, 0);
        curl_setopt($login, CURLOPT_USERAGENT, "Mozilla/5.0 ;Windows NT 6.1; WOW64; AppleWebKit/537.36 ;KHTML, like Gecko; Chrome/39.0.2171.95 Safari/537.36");
        curl_setopt($login, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));

        $loginoutput=curl_exec($login);
        curl_close($login);
        $loginresults=json_decode($loginoutput,TRUE);

        return $loginresults;
    }
}
