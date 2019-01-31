<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\includes\AfricasTalkingGateway;

class Communication extends Model
{
    //
    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->belongsTo("App\HivCareArtCard","hiv_care_art_card_id");
    }

    public function pushBulk_SMS($phone,$sms,$hiv_care_art_card_id,$read_Appointment)
    {
    	# code...
    	$username = env("SMS_USERNAME");            
        $apikey   = env("SMS_PASSWORD");
        $gateway = new AfricasTalkingGateway($username, $apikey);
         try 
          {    

            if ($phone[0]=="+") {
              // $phone_number=str_replace("+", "", $phone);
              $phone_number = $phone;
            }elseif ($phone[0]=="0") {
              $out = ltrim($phone, "0");
              $phone_number="+256".$out;
            }else{
              $phone_number=$phone;
            }

         //      $results = $gateway->sendMessage($phone_number,$sms);
         //      foreach ($results as $key => $value) {
         //      	# code...
         //      	try {          		
         //      	   	$save_Communication=new Communication();
        	// 		    	$save_Communication->message=$sms;
        	// 		    	$save_Communication->phonenumber=$phone_number;
        	// 		    	$save_Communication->status=$value->status;
        	// 		    	$save_Communication->amount=$value->cost;
         //            $save_Communication->hiv_care_art_card_id=$hiv_care_art_card_id;
        	// 		    	$save_Communication->appointment_id=$read_Appointment;
        	// 		    	$save_Communication->save();
  		    	// } catch (\Exception $e) {}
         //  }
        }catch (AfricasTalkingGatewayException $e ){}

    }



    public function SMS_update($phone_number,$sms,$id)
    {
      # code...
      $username = env("SMS_USERNAME");            
        $apikey   = env("SMS_PASSWORD");
        $gateway = new AfricasTalkingGateway($username, $apikey);
         try 
          {     

          //   $results = $gateway->sendMessage($phone_number,$sms);
          //   foreach ($results as $key => $value) {
          //     # code...
          //     try {             
          //         $save_Communication=Communication::find($id);             
          //         $save_Communication->status=$value->status;
          //         $save_Communication->amount=$value->cost;               
          //         $save_Communication->save();
          // } catch (\Exception $e) {
          //        echo $e->getMessage();
          //            exit();
          //     }
          //   }
          }
          catch (AfricasTalkingGatewayException $e ){
             
         }

      }

      public function push_Email($sender,$sms,$to)
      {
        # code...
        
        $subject = 'M-Appoint communication from '.$sender;
        $from = "M-Appoint";        
        // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
       // Create email headers
        $headers .= 'From: '.$from."\r\n".

            'Reply-To: '."ashley7520charles@gmail.com"."\r\n" .

            'X-Mailer: PHP/' . phpversion();
       

        // Compose a simple HTML email message

        $message = '<html><body>';      

        $message .= '<p>'.$sms.'</p>';
        
        $message .= '</body></html>';         

        // Sending email
        try {
            //mail($to, $subject, $message, $headers);
            $status="Your request has been made, We shall respond shortly";            
        } catch (\Exception $e) {
            $status='Unable to send email. Please try again. '.$e->getMessage();
        }

        //echo "\n".$status;
      }
}
