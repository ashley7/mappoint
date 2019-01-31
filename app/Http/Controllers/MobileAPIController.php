<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FamilySuportGroup;
use App\LinkFacilitator;
use App\FamilySuportGroupLinkFacilitator;
use App\FalimlySuportGroupRegister;
use App\Appointment;
use App\ApointmentRecord;
use App\ArtTreatmentInteraption;
use App\Communication;
use App\HivCareArtCard;
use App\User;
use App\Attendance; 
use App\HivCardRrecords;




class MobileAPIController extends Controller
{
    //

    public function arttreatmentinteraption(Request $request)
    {
        return [HivCardRrecords::select('date_checked_in','follow_up_date')->where('hiv_care_art_card_id',$request->hiv_care_art_card_id)->orderBy('id','DESC')->first()]; 
    }

    public function user(Request $request)
    {
        # code...
        $user[]=User::find($request->user_id);
        return json_encode($user);
    }

    public function login(Request $request)
    {
        $login_response=array();

            
        if (User::where('email',$request->email)->orWhere('phone_number',str_replace("+", "", $request->email))->count()==1) {
            # verify his password

            $user=User::where('email',$request->email)->orWhere('phone_number',str_replace("+", "", $request->email))->orderBy('id',"DESC")->first();
            if ($user!="null") {
                # code...
                if ($user->mobile_password==$request->password) {
                # code...
                $message=$user->id;
                $status_code=200;
                }
                else{
                    $message="The password is not correct, Please try again";
                    $status_code=201;
                }
            }            

        }
        else{
            $message="User was not found in the system. Please try again";
            $status_code=202;
        }

        $login_response[]=["Message"=>$message,"status_code"=>$status_code];
        return json_encode($login_response);
    }


    public function fsgs(Request $request)
    {
        // try_sending appointments SMS to individual users on ART follow up
        $this->send_appointment_reminders();    
    	# all gruops of the link faciliter
    	$results=array();  	 
    	$user_link_F=LinkFacilitator::all()->where('user_id',$request->user_id)->last();
    	if (json_encode($user_link_F)!="null") {
            if (FamilySuportGroupLinkFacilitator::select('fs_group_id')->where('lf_id',$user_link_F->id)->count()>0) {

              $read_all_FamilySuportGroupLinkFacilitator=FamilySuportGroupLinkFacilitator::select('fs_group_id')->where('lf_id',$user_link_F->id)->get();
    	      		foreach ($read_all_FamilySuportGroupLinkFacilitator as $fsg_lf) {
            			$results[]=FamilySuportGroup::find($fsg_lf->fs_group_id);    			
            		}
                }
    	   }
    	else{
    		$results[]=["code"=>"100","message"=>"User is not a link Facilitator"];
    	}
    	return json_encode($results);
    }


    public function fsgs_members(Request $request)
    {
    	# code...     

    	return FalimlySuportGroupRegister::select('hiv_care_art_cards.id','hiv_care_art_cards.surName','hiv_care_art_cards.firstName','hiv_care_art_cards.PatientNumber','hiv_care_art_cards.address','hiv_care_art_cards.phone_number','hiv_care_art_cards.phone_owner_name')->where('family_suport_group_id',$request->gruop_id)->join('hiv_care_art_cards','falimly_suport_group_registers.hiv_care_art_card_id','hiv_care_art_cards.id')->get();
    }

    public function fsgsmembersappointemnts_pending(Request $request)
    {
    	# code...
      return Appointment::select('date_to_return','time_to_return','family_suport_group_id','appointments.id','family_suport_groups.name')->where('family_suport_group_id',$request->group_id)->where('appointment_status',1)->join('family_suport_groups','appointments.family_suport_group_id','family_suport_groups.id')->orderBy('appointments.id','DESC')->get(); 
    }

    public function attendance_fsgsmembersappointemnts(Request $request)
    {
        # code...
         return Appointment::select('date_to_return','time_to_return','family_suport_group_id','appointments.id','family_suport_groups.name')->where('family_suport_group_id',$request->group_id)->join('family_suport_groups','appointments.family_suport_group_id','family_suport_groups.id')->orderBy('appointments.id','DESC')->get(); 
    }

   public function fsgsmembersappointemnts_confirmed(Request $request)
    {
        # code...
     return Appointment::select('date_to_return','time_to_return','family_suport_group_id','appointments.id','family_suport_groups.name')->where('family_suport_group_id',$request->group_id)->where('appointment_status',2)->join('family_suport_groups','appointments.family_suport_group_id','family_suport_groups.id')->orderBy('appointments.id','DESC')->get();
    }

    public function appointemnts_confirmation(Request $request)
    {
        # read all memebers in the FSG and communcation status

         return Communication::select('communications.id','communications.created_at','communications.message as Message','communications.status','hiv_care_art_cards.surName','hiv_care_art_cards.firstName','hiv_care_art_cards.PatientNumber','appointments.date_to_return','appointments.time_to_return','hiv_care_art_cards.phone_number as phonenumber','hiv_care_art_cards.id as hiv_care_art_card_id')->where('appointment_id',$request->appointment_id)->join('hiv_care_art_cards','communications.hiv_care_art_card_id','hiv_care_art_cards.id')->join('appointments','communications.appointment_id','appointments.id')->get();

    }

    public function communication_update(Request $request)
    {
        # code...
         $resend_SMS=new Communication();
         try {
             $resend_SMS->SMS_update($request->phone_number,$request->SMS,$request->communication_id);
             echo "SMS Has been Resent";
         } catch (\Exception $e) {
             echo $e->getMessage();
         }
         
    }

    public function appointemnts(Request $request)
    {
    	# code...
    	$save_Appointment=new Appointment();
        $save_Appointment->date_to_return=str_replace("/", "-", $request->date_to_return);
        $save_Appointment->time_to_return=$request->time_to_return;
        $save_Appointment->appointment_status=1;//not yet
        $save_Appointment->family_suport_group_id=$request->group_id;
        try {
            $save_Appointment->save();
            $status[]=["status"=>"Success","message"=>"Recorded successifully"];
        } catch (\Exception $e) {
            $status[]=["status"=>"Failed","message"=>$e->getMessage()];
        }

        return json_encode($status);

    }

    public function appointemnts_records(Request $request)
    {
    	return ApointmentRecord::select('apointment_records.created_at','apointment_records.number_of_visits','apointment_records.attendance_status','apointment_records.follow_up_status','apointment_records.notes','reschedauled_date','reschedauled_time','apointment_records.appointment_id','hiv_care_art_card_id','appointments.id as appointment_id','date_to_return','time_to_return')->where('appointment_id',$request->appointment_id)->where('hiv_care_art_card_id',$request->hiv_care_art_card_id)->join('appointments','apointment_records.appointment_id','appointments.id')->get();
    }

    public function add_send_sms(Request $request)
    {
        try {
            
            $HivCareArtCard=HivCareArtCard::find($request->hiv_care_art_card_id);        
      
            $sms="Dear ".$HivCareArtCard->surName.", ".$request->sms;

            $resend_SMS=new Communication();

            $resend_SMS->pushBulk_SMS($HivCareArtCard->phone_number,$sms,$request->hiv_care_art_card_id,NULL);
            echo "Your SMS has been sent";
            } catch (\Exception $e) {
                echo $e->getMessage();            
        }
    }


    public function bulk_send_sms(Request $request)
    {
        # code...
        $FalimlySuportGroupRegister=FalimlySuportGroupRegister::select('hiv_care_art_cards.id','hiv_care_art_cards.surName','hiv_care_art_cards.firstName','hiv_care_art_cards.PatientNumber','hiv_care_art_cards.address','hiv_care_art_cards.phone_number','hiv_care_art_cards.phone_owner_name')->where('family_suport_group_id',$request->gruop_id)->join('hiv_care_art_cards','falimly_suport_group_registers.hiv_care_art_card_id','hiv_care_art_cards.id')->get();

        foreach ($FalimlySuportGroupRegister as $members) {

            try {

                $sms="Dear ".$members->surName.", ".$request->sms;

                $resend_SMS=new Communication();

                $resend_SMS->pushBulk_SMS($members->phone_number,$sms,$members->id,NULL);

               } catch (\Exception $e) {
                echo $e->getMessage();
                exit();
            }
       
        }

         echo "Your Messages have been sent successfully";
    }

    public function contact_world_vision(Request $request)
    {     
        $resend_SMS=new Communication();
        $to="Trevor_Biransesha@wvi.org";
        $resend_SMS->push_Email($request->name,$request->message,$to);
    }

    public function contact_tech(Request $request)
    {
        $resend_SMS=new Communication();
        $to="ashley7520charles@gmail.com";
        $resend_SMS->push_Email($request->name,$request->message,$to);
        $resend_SMS->pushBulk_SMS("+256775926572",$request->message,NULL,NULL);
    }


    public function forgot_password(Request $request)
    {
     
        $phone_number=$request->phone_number;
        if (User::all()->where('phone_number',$phone_number)->count()==1) {
            $user=User::all()->where('phone_number',$phone_number)->last();
            $characters = '123456789';
            $charactersLength = strlen($characters);
            $randomString = '';
                for ($i = 0; $i < 5; $i++) {
                    $randomString .= $characters[rand(0, $charactersLength - 1)];
                }
            $pin=$randomString; 
            $user->password=bcrypt($pin);
            $user->mobile_password=$pin;
            try {
               $user->save();
                $resend_SMS=new Communication();
                 try {
                     $SMS="Dear ".$user->name." your new M-Appoint password is ".$pin;
                     $resend_SMS->pushBulk_SMS($phone_number,$SMS,NULL,NULL);
                     $status= "A New password was sent to ".$phone_number;
                 } catch (\Exception $e) {
                    $status=$e->getMessage();
                 } 
            } catch (\Exception $e) {
                
            }
            
        }
        else{
            $status="User not found";
            
        }
        echo $status;
    }



    public function attandence(Request $request)
    {
             $hiv_care_art_card_id=$request->hiv_care_art_card_id;
            // check the status chosen
                $present_value=$request->present_value;                
                $save_Attendance=new Attendance();                     
                $save_Attendance->status=$present_value;
                $save_Attendance->appointment_id=$request->appointment;
                $save_Attendance->hiv_care_art_card_id=$hiv_care_art_card_id;
                        // check if the person has record for todat
                        if (Attendance::all()->where('appointment_id',$request->appointment)->where('hiv_care_art_card_id',$hiv_care_art_card_id)->count()==0) {
                            # code...
                            try {

                                $person_last=Attendance::all()->where('hiv_care_art_card_id',$hiv_care_art_card_id)->last();

                                if (json_encode($person_last)!="null") {
                                    # code...
                                    if ($person_last->status==0 && $present_value==0) {//he is absent now, and last time he was absent
                                        # setn him has lost
                                        $save_ArtTreatmentInteraption=new ArtTreatmentInteraption();
                                        // if last record is Lost again, make hime Stoped

                                        $save_ArtTreatmentInteraption->circle="Missed Drug Pick-up";

                                        $hivCareArtCard=HivCareArtCard::find($hiv_care_art_card_id);
                                        
                                        $sms="Patient No. ".$hivCareArtCard->PatientNumber." :".$hivCareArtCard->surName." ".$hivCareArtCard->firstName." has missed two consecative appointments. please check on this client.";

                                        $phone_number="+256782505788";

                                        $save_Communication=new Communication();
                                        try {
                                           $save_Communication->pushBulk_SMS($phone_number,$sms,NULL,NULL); 
                                        
                                        } catch (\Exception $e) {
                                             $status=$e->getMessage();
                                        }

                                        // $ArtTreatmentInteraption_status=ArtTreatmentInteraption::all()->where('hiv_care_art_card_id',$hiv_care_art_card_id)->last();
                                        // if (json_encode($ArtTreatmentInteraption_status)!="null") {
                                        //     # code...
                                        //     if ($ArtTreatmentInteraption_status->circle=="Lost") {
                                        //         # code...
                                        //         $save_ArtTreatmentInteraption->circle="Stop";
                                        //     }
                                        //     elseif(ArtTreatmentInteraption::all()->where('hiv_care_art_card_id',$hiv_care_art_card_id)->count()==0){
                                        //          $save_ArtTreatmentInteraption->circle="Lost";
                                        //     }                                        

                                        // }
                                       
                                        $save_ArtTreatmentInteraption->date_accured=date("m-d-Y");
                                         
                                        $save_ArtTreatmentInteraption->month_accured=date("m");
                                        $save_ArtTreatmentInteraption->year_accured=date("Y");
                                        $save_ArtTreatmentInteraption->reason="Missed two consecutive appointments";
                                        $save_ArtTreatmentInteraption->hiv_care_art_card_id=$hiv_care_art_card_id;
                                        try {
                                            $save_ArtTreatmentInteraption->save();
                                        } catch (\Exception $e) {
                                            echo $e->getMessage();
                                            // exit();
                                            
                                        }

                                    }

                                }

                                $save_Attendance->save();  
                                 $status="Successfully recorded";
                            } catch (\Exception $e) {
                                 echo $e->getMessage();
                            }
                            
                        }

                        elseif (Attendance::all()->where('appointment_id',$request->appointment)->where('hiv_care_art_card_id',$hiv_care_art_card_id)->count()==1) {
                            $person=Attendance::all()->where('appointment_id',$request->appointment)->where('hiv_care_art_card_id',$hiv_care_art_card_id)->last();
                            $person->status=$present_value;
                            try {
                                $person->save(); 
                                 $status="Successfully Updated";
                            } catch (\Exception $e) {
                                echo $e->getMessage();
                            }                           
                        }     
                       

                        echo $status;
                }



                public function attandence_list(Request $request)
                {
                    return Attendance::select('attendances.hiv_care_art_card_id','attendances.status','attendances.updated_at','attendances.appointment_id','hiv_care_art_cards.surName','hiv_care_art_cards.firstName','hiv_care_art_cards.PatientNumber','hiv_care_art_cards.phone_number')->where('appointment_id',$request->appointment_id)->join('hiv_care_art_cards','attendances.hiv_care_art_card_id','hiv_care_art_cards.id')->get();
                }


    public function send_appointment_reminders()
    {
        $status = array();
        $read_clients=HivCareArtCard::select('id','phone_number','surName')->get();
        foreach ($read_clients as $client_value) {
            # get the linkage facilitator
            $phone_number_lf = $name_lf = "";
            try {
                foreach(FamilySuportGroupLinkFacilitator::where('fs_group_id',$client_value->falimlysuportgroupregister->familysuportgroup->id)->get() as $link_facilitator){
                    try {
                       $lf_data = LinkFacilitator::find($link_facilitator->lf_id)->user;
                       $phone_number_lf = $lf_data->phone_number;
                       $name_lf = $lf_data->name;
                    } catch (\Exception $e) {}
                }
            } catch (\Exception $e) {} 

                                      

            $read_last_entry=HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
            if (json_encode($read_last_entry)!="null") {
                try {
                    $new_date=explode("-", $read_last_entry->follow_up_date);//m-d-y
                    $date=$new_date[2]."-".$new_date[0]."-".$new_date[1];
                    $return_date=date_create($date);
                    $today=date("Y-m-d");
                    $today=date_create($today);
                    $days_left=date_diff($today,$return_date);
                    $resend_SMS=new Communication();

                     $SMS="Dear ".$client_value->surName." we are reminding you that you return to the health center Tomorrow  ".$read_last_entry->follow_up_date." | ".str_replace("+", "", $client_value->phone_number);

                     $lf_sms = "Dear ".$name_lf." your client ".$client_value->surName." has been reminded to return to the health center Tomorrow.";

                     if ($days_left->format("%R%a") == "+1") {
                        // check if person has this message already
                        $raed_last_SMS=Communication::all()->where('hiv_care_art_card_id',$client_value->id)->last();
                        

                        if (json_encode($raed_last_SMS)!="null") {
                            
                            if (strpos($raed_last_SMS->message, $raed_last_SMS->phonenumber) !== false) {
                                // echo 'true';
                            } else{

                                $resend_SMS->pushBulk_SMS($client_value->phone_number,$SMS,$client_value->id,NULL);
                                $resend_SMS->pushBulk_SMS($phone_number_lf,$lf_sms,NULL,NULL);

                            }                            
                        } else{
                            $resend_SMS->pushBulk_SMS($client_value->phone_number,$SMS,$client_value->id,NULL);
                            $resend_SMS->pushBulk_SMS($phone_number_lf,$lf_sms,NULL,NULL);
                        }
                     
                     }
          
                 } catch (\Exception $e) {
                    $status[] = $e->getMessage();

                 } 
            }
            else{}
        }

       try {
           mail("ashley7520charles@gmail.com", "M-Appoint remider failier", json_encode($status));
       } catch (\Exception $e) {}
    } 


   public function time_specifics()
   {
        return view("report.time_specifics");
   } 

           
}