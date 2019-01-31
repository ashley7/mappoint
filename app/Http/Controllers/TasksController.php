<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sub_county;
use App\Parish;
use App\User;
use App\Communication;
use App\HivCareArtCard;
use App\HivCardRrecords;
use App\Attendance;
use App\ArtTreatmentInteraption;
class TasksController extends Controller
{

    public function get_follow_up_report($value='')
    {
         return view('report.follow_up_report');
    }

    public function post_follow_up_report(Request $request)
    {

        $all_art_HivCareArtCard=HivCareArtCard::select('id')->get();
        $prsents_patients=$absent_patients=array();
        $lost_count=$present_count=0;
        $month=$request->month;
        $year=$request->year;
        foreach ($all_art_HivCareArtCard as $art_value) {
            
            $read_HivCardRrecords = HivCardRrecords::all()->where('follow_up_year',$request->year)->where('follow_up_month',$request->month)->where('hiv_care_art_card_id',$art_value->id)->last();

            // echo $read_HivCardRrecords." Year:".$request->year." Month: ".$request->month." ID: ".$art_value->id."<br>";

            $count_times = HivCardRrecords::all()->where('hiv_care_art_card_id',$art_value->id)->count();

            $check_if_client_returns_in_period_in_qn = HivCardRrecords::where('follow_up_year',$request->year)->where('follow_up_month',$request->month)->where('hiv_care_art_card_id',$art_value->id)->skip(1)->take(1)->orderBy('id','desc')->get();

            if ($count_times == 1) {
                if (!empty($read_HivCardRrecords)) {                   
                   $prsents_patients[] = HivCareArtCard::find($art_value->id);
                   $present_count = $present_count+1;
               }
            }elseif ($count_times > 1) {
                if ($check_if_client_returns_in_period_in_qn->count() == 1) {
                    $prsents_patients[] = HivCareArtCard::find($art_value->id);
                    $present_count = $present_count+1;
                }elseif ($check_if_client_returns_in_period_in_qn->count() == 0) {
                    if (!empty($read_HivCardRrecords)) {
                        $absent_patients[] = HivCareArtCard::find($art_value->id);
                        $lost_count = $lost_count+1;
                    }                   
                }                
            }



                // if ($read_HivCardRrecords > 0) {
                //     if ($count_times == 1) {//first time
                //         $prsents_patients[] = HivCareArtCard::find($art_value->id);
                //         $present_count = $present_count+1;
                //     } elseif ($count_times > 1) {
                //         if ($check_if_client_returns_in_period_in_qn->count() > 0) {//was he suposed to come this period?
                //            $prsents_patients[] = HivCareArtCard::find($art_value->id);
                //            $present_count = $present_count+1;
                //        }                        
                //     }          
                // } elseif($read_HivCardRrecords == 0){
                //     if ($check_if_client_returns_in_period_in_qn->count() > 0) {
                //        $absent_patients[] = HivCareArtCard::find($art_value->id);
                //        $lost_count = $lost_count+1;
                //    }
                // }
            }
            
            return view('report.follow_up_report_display')->with(compact('prsents_patients','present_count','absent_patients','lost_count','month','year'));

    }    


    public function ajax_read_subcounty($value)
    {
    	 
    	return  Sub_county::all()->where('district_id',$value);	 
    }

    public function ajax_read_parish($value)
    {
    	# code...
    	return Parish::all()->where('sub_county_id',$value);
    }

    public function forgot_password(Request $request)
    {
        # code...
        $this->validate($request,["phone_number"=>"required"]);
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
            $status="User ".$phone_number." was not found in the System, Please try again.";
            
        }

        return redirect()->back()->with(compact('status'));
    }

    public function present_members($id)
    {
        $read_only_numbers=array();
        # code...
        $read_Attendance=Attendance::select('hiv_care_art_card_id')->where('appointment_id',$id)->where('status',1)->get();
        foreach ($read_Attendance as $person) {
            # code...
            $read_only_numbers[]=HivCareArtCard::select('surName','firstName','PatientNumber','phone_number','id')->where('id',$person->hiv_care_art_card_id)->first();
        }

        return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));
    }

   public function absent_members($id)
    {
        $read_only_numbers=array();
        # code...
        $read_Attendance=Attendance::select('hiv_care_art_card_id')->where('appointment_id',$id)->where('status',0)->get();
        foreach ($read_Attendance as $person) {
            # code...
            $read_only_numbers[]=HivCareArtCard::select('surName','firstName','PatientNumber','phone_number','id')->where('id',$person->hiv_care_art_card_id)->first();
        }

        return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));
    }


    public function art_interuptions($value='')
    {
        # code...
        $art_ArtTreatmentInteraption=ArtTreatmentInteraption::select('art_treatment_interaptions.circle','art_treatment_interaptions.date_accured','reason','hiv_care_art_cards.surName','hiv_care_art_cards.firstName','hiv_care_art_cards.PatientNumber','hiv_care_art_cards.phone_number as phonenumber','hiv_care_art_cards.id as hiv_care_art_card_id')->where("art_treatment_interaptions.date_restart",NULL)->join('hiv_care_art_cards','art_treatment_interaptions.hiv_care_art_card_id','hiv_care_art_cards.id')->get();

        // return $art_ArtTreatmentInteraption;
        return view("Hiv_care_art_card.art_ArtTreatmentInteraption")->with(compact('art_ArtTreatmentInteraption'));

    }
}
