<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HivCareArtCard;
use App\LinkFacilitator;
use App\FamilySuportGroup;
use App\Appointment;
use App\FalimlySuportGroupRegister;
use App\ArtTreatmentInteraption;
use App\HivExposedInfantTesingInformation;
use App\HivExposedInfant;
use App\HivCardRrecords;
use App\Village;
use App\PriorART;
use App\Communication;
use App\Http\Controllers\MobileAPIController;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // send appointment reminders
        $reminder = new MobileAPIController();
        $reminder->send_appointment_reminders();
        // send ends here

        $count_HivCareArtCard=HivCareArtCard::all()->count();
        $count_HivCareArtCard_male=HivCareArtCard::all()->where('sex','Male')->count();
     
        $count_LinkFacilitator=LinkFacilitator::all()->count();
        $count_FamilySuportGroup=FamilySuportGroup::all()->count();
        $count_Appointment=Appointment::all()->where('appointment_status',2)->count();
        $read_Appointment=Appointment::where('appointment_status',1)->paginate(3);

        // number of individuals per group
        $results=array();
        $gruops=FamilySuportGroup::all();
        $money_string = 0;

        $communication=Communication::select('amount')->get();

        foreach ($communication as $money_value) {
            $money_string = $money_string + preg_replace("/[^0-9.]/", "", $money_value->amount);
        }
        foreach ($gruops as $group_list) {       
            $results[$group_list->name]=(int)FalimlySuportGroupRegister::all()->where("family_suport_group_id",$group_list->id)->count();
         }      
         $results=json_encode($results);
        // ART interuptions

         $art_ArtTreatmentInteraption=ArtTreatmentInteraption::where("date_restart",NULL)->count();
         $art_ArtTreatmentInteraption_lost=ArtTreatmentInteraption::where("date_restart",NULL)->where("circle","Lost")->count();
         $art_ArtTreatmentInteraption_Stop=ArtTreatmentInteraption::where("date_restart",NULL)->where("circle","Stop")->count();
         $art_ArtTreatmentInteraption_missed=ArtTreatmentInteraption::where("date_restart",NULL)->where("circle","Missed Drug Pick-up")->count();

         $read_hivexposedinfant = HivExposedInfant::all()->count();
         $read_hivexposedinfantmale = HivExposedInfant::all()->where('sex','Male')->count();
         $read_hivexposedinfantfemale = HivExposedInfant::all()->where('sex','Female')->count();

         // raed everyones last record in the Faollow up table and see if they have TB
         $raed_HivCareArtCard = HivCareArtCard::all();
         $tb_treatment =  $tb_treatment_male =  $tb_treatment_female = 0;
         $cd4_below = $cd4_above = 0;
         $cd4 = $muac = array();
         $muac_plus = $muac_minus = 0;


         foreach ($raed_HivCareArtCard as $client_value) {
            $last_record = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();

            if (json_encode($last_record) != "null") {
                if ($last_record->TB_status == "Currently on TB Treatment") {
                
                    $tb_treatment = $tb_treatment + 1;
                    if ($client_value->sex == "Male") {
                        $tb_treatment_male = $tb_treatment_male + 1;
                    }

                    if ($client_value->sex == "Female") {
                       $tb_treatment_female = $tb_treatment_female + 1;
                    } 

                }   

                // CD4 count
                if ($last_record->CD4_count == "+") {
                    $cd4_above =  $cd4_above + 1; 
                }

                if ($last_record->CD4_count == "-") {
                    $cd4_below =  $cd4_below + 1;
                }

                if ($last_record->muac_oedema == "MUAC|+") {
                    $muac_plus = $muac_plus + 1;
                }

                if ($last_record->muac_oedema == "MUAC|-") {
                   $muac_minus = $muac_minus + 1;
                }
            }
        }

         $cd4["Above 15%"] = $cd4_above;
         $cd4["Below 15%"] = $cd4_below;
         $cd4 = json_encode($cd4);

         $muac["MUAC|+"]=$muac_plus;
         $muac["MUAC|-"]=$muac_minus;
         $muac = json_encode($muac);
        
         return view('home')->with(compact('count_HivCareArtCard','count_LinkFacilitator','count_FamilySuportGroup','count_Appointment','read_Appointment','results','count_HivCareArtCard_male','art_ArtTreatmentInteraption_lost','art_ArtTreatmentInteraption_Stop','art_ArtTreatmentInteraption_missed','art_ArtTreatmentInteraption','read_hivexposedinfant','read_hivexposedinfantmale','read_hivexposedinfantfemale','tb_treatment','tb_treatment_male','tb_treatment_female','cd4','muac','money_string'));
    }

    public function tb_clients()
    {
        $raed_HivCareArtCard = HivCareArtCard::all();
        $read_only_numbers = array();
         foreach ($raed_HivCareArtCard as $client_value) {
            $last_record = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
            if (json_encode($last_record) != "null") {
                if ($last_record->TB_status == "Currently on TB Treatment") {
                    $read_only_numbers[] = HivCareArtCard::find($client_value->id); 
                }    
            }
         }

        return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));
     }

    public function cd4_count_plus()
    {
        $raed_HivCareArtCard = HivCareArtCard::all();
        $read_only_numbers = array();
        foreach ($raed_HivCareArtCard as $client_value) {
            $last_record_above = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
            if (json_encode($last_record_above)!="null") {
                if ($last_record_above->CD4_count == "+") {
                    $read_only_numbers[] = HivCareArtCard::find($client_value->id);
                }                     
            }
         }
            return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));  
     }

    public function cd4_count_minus()
    {
        $raed_HivCareArtCard = HivCareArtCard::all();
        $read_only_numbers = array();
        foreach ($raed_HivCareArtCard as $client_value) {
             $last_record_above = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
             if (json_encode($last_record_above)!="null") {
                if ($last_record_above->CD4_count == "-") {
                    $read_only_numbers[] = HivCareArtCard::find($client_value->id);
                }    
            }
         }
         return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));

    }

    public function client_muac_plus()
    {
        $raed_HivCareArtCard = HivCareArtCard::all();
        $read_only_numbers = array();
        foreach ($raed_HivCareArtCard as $client_value) {
             $last_record_above = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
             if (json_encode($last_record_above)!="null") {
                if ($last_record_above->muac_oedema == "MUAC|+") {
                    $read_only_numbers[] = HivCareArtCard::find($client_value->id);
                }    
            }
         }

         return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));

    } 

    public function client_muac_minus()
    {
        $raed_HivCareArtCard = HivCareArtCard::all();
        $read_only_numbers = array();
        foreach ($raed_HivCareArtCard as $client_value) {
             $last_record_above = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
             if (json_encode($last_record_above)!="null") {
                if ($last_record_above->muac_oedema == "MUAC|-") {
                    $read_only_numbers[] = HivCareArtCard::find($client_value->id);
                }    
            }
         }
         return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));
 
    }

    public function comprehessive_report()
    {
        $count_HivCareArtCard=HivCareArtCard::all()->count();
        $count_HivCareArtCard_male=HivCareArtCard::all()->where('sex','Male')->count();
        $art_ArtTreatmentInteraption_lost=ArtTreatmentInteraption::where("date_restart",NULL)->where("circle","Lost")->count();
        $art_ArtTreatmentInteraption_Stop=ArtTreatmentInteraption::where("date_restart",NULL)->where("circle","Stop")->count();
        $count_LinkFacilitator=LinkFacilitator::all()->count();
        $read_LinkFacilitator=LinkFacilitator::all();
        $village = Village::all();
        $read_FamilySuportGroup=FamilySuportGroup::all();

        $raed_HivCareArtCard = HivCareArtCard::all();
        $read_only_numbers = $raed_hivcareArtcard_bad = $raed_hivcareArtcard_died = $raed_hivcareArtcard_tranfred = $raed_hivcareArtcard_lact = $tb_treatment_list = $returns = $returns7 = $returns14 = $returns21 = array();

        $currently_on_tb_treatment=$no_signs=$status=$diagnosed=$good=$fair=$poor=$died=$place_tranfred_to=$lact=$not_lact=$child = $married = $single = $livingtogether = $bivorced = $separated = $widowed = $never_married= $none = $hep_b = $pep = $prior_art = $earlier_arv = $pmtct = $transfer_in = 0;

         foreach ($raed_HivCareArtCard as $client_value) {
            $last_record = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
            if (json_encode($last_record) != "null") {

                $raed_HivCareArtCard_returns = HivCareArtCard::find($client_value->id); 

                 // read the last 2 reacords of the client

                $last_two_record = HivCardRrecords::where('hiv_care_art_card_id',$client_value->id)->orderBy('id','DESC')->limit(2)->get();
                try {
                   foreach ($last_two_record as  $last_two_value) {
                       
                   }

                   $date_string = explode("-",$last_two_value->date_checked_in);

                   $preve_to_date = date_create($date_string[1].'-'.$date_string[0].'-'.$date_string[2]);

                   $expected_date_of_return = date_timestamp_get($preve_to_date);

                   $date_string = explode("-",$last_record->date_checked_in);
                   
                   $preve_to_date = date_create($date_string[1].'-'.$date_string[0].'-'.$date_string[2]);
                   
                   $date_of_return = date_timestamp_get($preve_to_date);  

                   $days_btn = round(($date_of_return - $expected_date_of_return) / (60 * 60 * 24));

                   if ($days_btn < 8 && $days_btn > 0) {
                     $returns7[] = $raed_HivCareArtCard_returns; 
                   }

                   if ($days_btn >= 8 && $days_btn < 14) {
                     $returns14[] = $raed_HivCareArtCard_returns; 
                   }

                   if ($days_btn >= 14 && $days_btn < 22) {
                     $returns21[] = $raed_HivCareArtCard_returns; 
                   }


                } catch (\Exception $e) {}

                if ($last_record->TB_status == "Currently on TB Treatment") {
                    $currently_on_tb_treatment = $currently_on_tb_treatment + 1;
                    $tb_treatment_list[] = HivCareArtCard::find($last_record->hiv_care_art_card_id);
                }

                if ($last_record->TB_status == "No signs or Symptoms of TB") {
                    $no_signs = $no_signs + 1;
                }

                if ($last_record->TB_status == "Suspect") {
                    $status = $status + 1;
                }

                if ($last_record->TB_status == "Diagnosed with TB Disease") {
                    $diagnosed = $diagnosed + 1;
                }

                if ($last_record->ARV_adhere == "Good") {
                    $good = $good+1;
                 }

                if ($last_record->ARV_adhere == "Fair") {
                    $fair = $fair  + 1;
                }

                if ($last_record->ARV_adhere == "Poor") {
                    $poor = $poor + 1;
                    $raed_hivcareArtcard_bad[] = HivCareArtCard::find($client_value->id);
                }

                if (!empty($client_value->date_died)) {
                    $died = $died + 1;
                    $raed_hivcareArtcard_died[] = HivCareArtCard::find($client_value->id);
                }

                if (!empty($client_value->place_tranfred_to)) {
                    $place_tranfred_to = $place_tranfred_to + 1;
                    $raed_hivcareArtcard_tranfred[] = HivCareArtCard::find($client_value->id);
                }

                if ($client_value->lact == "Yes") {
                    $lact = $lact + 1;
                    $raed_hivcareArtcard_lact[] = HivCareArtCard::find($client_value->id);
                }

                if ($client_value->lact == "No") {
                     $not_lact = $not_lact + 1;
                }

                if ($client_value->merital_status == "Child") {
                    $child = $child + 1;
                }


                if ($client_value->merital_status == "Married") {
                    $married = $married + 1;
                }

                if ($client_value->merital_status == "Never Married") {
                    $never_married = $never_married + 1;
                }

                if ($client_value->merital_status == "Single") {
                    $single = $single + 1;
                }

                if ($client_value->merital_status == "Living Together") {
                    $livingtogether = $livingtogether + 1;
                }

                if ($client_value->merital_status == "Divorced") {
                    $bivorced = $bivorced + 1;
                }

                if ($client_value->merital_status == "Separated") {
                    $separated = $separated + 1;
                }

                if ($client_value->merital_status == "Widowed") {
                    $widowed = $widowed + 1;
                }

                // read PriorART last
                $priorart = PriorART::all()->where('hiv_care_art_card_id',$client_value->id)->last();

                if (json_encode($priorart) != "null") {
                  
                    if ($priorart->name == "Transfer in with records") {
                        $transfer_in = $transfer_in + 1;
                    }

                    if ($priorart->name == "PMTCT only") {
                        $pmtct = $pmtct + 1;
                    }

                    if ($priorart->name == "Earlier ARV, Not Transfer in") {
                        $earlier_arv = $earlier_arv + 1;
                    }

                    if ($priorart->name == "Prior ART") {
                        $prior_art = $prior_art + 1;
                    }

                    if ($priorart->name == "PEP") {
                        $pep = $pep + 1;
                    }

                    if ($priorart->name == "HEP-B") {
                        $hep_b = $hep_b + 1;
                    }

                    if ($priorart->name == "None") {
                       $none = $none + 1;
                    }
                }
            }
        }

        $referred_to_art_clinicyes = $referred_to_art_clinicno = $EBF_Exclusive = $RF_Replacement = $MF_Mixed = $CF_Complementary = $W_Wean = $NLB_No = $result_first_positive = $result_first_negative = 0;
        $raedhivexposedinfant_yes = array();

        $raed_HivExposedInfant=HivExposedInfant::all()->count();
        $raedhivexposedinfant=HivExposedInfant::all();
        $read_hivexposedinfantmale = HivExposedInfant::all()->where('sex','Male')->count();
        $read_hivexposedinfantfemale = HivExposedInfant::all()->where('sex','Female')->count();

        foreach ($raedhivexposedinfant as $infant_value) {
           if (!empty($infant_value->referred_to_art_clinic)) {
            if ($infant_value->referred_to_art_clinic == "Yes") {
                $referred_to_art_clinicyes = $referred_to_art_clinicyes + 1;
                $raedhivexposedinfant_yes[]=HivExposedInfant::find($infant_value->id);
            }
            if ($infant_value->referred_to_art_clinic == "No") {
                $referred_to_art_clinicno = $referred_to_art_clinicno + 1;
            }             
           }

           $hiv_exposedinfant_tesing_information = HivExposedInfantTesingInformation::all()->where('hivei_id',$infant_value->id)->last();
           if (json_encode($hiv_exposedinfant_tesing_information) != "null") {

               if ($hiv_exposedinfant_tesing_information->infant_feeding_status_first == "EBF—Exclusive Breastfeeding") {
                    $EBF_Exclusive = $EBF_Exclusive + 1;
               }

               if ($hiv_exposedinfant_tesing_information->infant_feeding_status_first == "RF—Replacement Feeding (never Breastfed)") {
                    $RF_Replacement = $RF_Replacement + 1;
               }

               if ($hiv_exposedinfant_tesing_information->infant_feeding_status_first == "MF--Mixed Feeding (< 6 months)") {
                  $MF_Mixed = $MF_Mixed + 1;
               }

               if ($hiv_exposedinfant_tesing_information->infant_feeding_status_first == "CF—Complementary Feeding (> 6 months)") {
                  $CF_Complementary = $CF_Complementary + 1;
               }

              if ($hiv_exposedinfant_tesing_information->infant_feeding_status_first == "W—Wean from Breastfeeding") {
                  $W_Wean = $W_Wean + 1;
              }

              if ($hiv_exposedinfant_tesing_information->infant_feeding_status_first == "NLB—No Longer Breastfeeding") {
                  $NLB_No = $NLB_No + 1;
               }

              if ($hiv_exposedinfant_tesing_information->result_first == "Positive") {
                   $result_first_positive = $result_first_positive + 1;
               }

              if ($hiv_exposedinfant_tesing_information->result_first == "Negative") {
                   $result_first_negative = $result_first_negative + 1;
               }
           }
         } 

        return view('report.comprihessive_report')->with(compact('count_HivCareArtCard','count_HivCareArtCard_male','art_ArtTreatmentInteraption_lost','art_ArtTreatmentInteraption_Stop','count_LinkFacilitator','read_LinkFacilitator','village','currently_on_tb_treatment','no_signs','status','diagnosed','good','fair','poor','raed_hivcareArtcard_bad','died','raed_hivcareArtcard_died','place_tranfred_to','raed_hivcareArtcard_tranfred','raed_hivcareArtcard_lact','lact','not_lact','child','married','single','livingtogether','bivorced','separated','widowed','never_married','transfer_in','pmtct','earlier_arv','prior_art','pep','hep_b','none','read_FamilySuportGroup','raed_HivExposedInfant','read_hivexposedinfantmale','read_hivexposedinfantfemale','raedhivexposedinfant','referred_to_art_clinicyes','referred_to_art_clinicno','raedhivexposedinfant_yes','EBF_Exclusive','RF_Replacement','MF_Mixed','CF_Complementary','W_Wean','NLB_No','result_first_positive','result_first_negative','tb_treatment_list','returns7','returns14','returns21','raed_HivCareArtCard'));
    }

    public function timespecifics(Request $request)
    {
        $this->validate($request,["month"=>"required","year"=>"required"]);

        $month = $request->month;
        $year = $request->year;

        $count_HivCareArtCard=HivCareArtCard::all()->where('month_enrolled_in_HIV',$month)->where('year_enrolled_in_HIV',$year)->count();

        $count_HivCareArtCard_male=HivCareArtCard::all()->where('sex','Male')->where('month_enrolled_in_HIV',$month)->where('year_enrolled_in_HIV',$year)->count();

        $art_ArtTreatmentInteraption_lost=ArtTreatmentInteraption::where("date_restart",NULL)->where("circle","Lost")->where('month_accured',$month)->where('year_accured',$year)->count();

        $art_ArtTreatmentInteraption_Stop=ArtTreatmentInteraption::where("date_restart",NULL)->where("circle","Stop")->where('month_accured',$month)->where('year_accured',$year)->count();

        $raed_HivCareArtCard = HivCareArtCard::all()->where('month_enrolled_in_HIV',$month)->where('year_enrolled_in_HIV',$year);


         $read_only_numbers = $raed_hivcareArtcard_bad = $raed_hivcareArtcard_died = $raed_hivcareArtcard_tranfred = $raed_hivcareArtcard_lact = $tb_treatment_list = array();

        $currently_on_tb_treatment=$no_signs=$status=$diagnosed=$good=$fair=$poor=$died=$place_tranfred_to=$lact=$not_lact=$child = $married = $single = $livingtogether = $bivorced = $separated = $widowed = $never_married= $none = $hep_b = $pep = $prior_art = $earlier_arv = $pmtct = $transfer_in = 0;


        foreach ($raed_HivCareArtCard as $client_value) {
            $last_record = HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
            if (json_encode($last_record) != "null") {

                if ($last_record->TB_status == "Currently on TB Treatment") {
                    $currently_on_tb_treatment = $currently_on_tb_treatment + 1;
                    $tb_treatment_list[] = HivCareArtCard::find($last_record->hiv_care_art_card_id);
                }

                if ($last_record->TB_status == "No signs or Symptoms of TB") {
                    $no_signs = $no_signs + 1;
                }

                if ($last_record->TB_status == "Suspect") {
                    $status = $status + 1;
                }

                if ($last_record->TB_status == "Diagnosed with TB Disease") {
                    $diagnosed = $diagnosed + 1;
                }

                if ($last_record->ARV_adhere == "Good") {
                    $good = $good+1;
                 }

                if ($last_record->ARV_adhere == "Fair") {
                    $fair = $fair  + 1;
                }

                if ($last_record->ARV_adhere == "Poor") {
                    $poor = $poor + 1;
                    $raed_hivcareArtcard_bad[] = HivCareArtCard::find($client_value->id);
                }

                if (!empty($client_value->date_died)) {
                    $died = $died + 1;
                    $raed_hivcareArtcard_died[] = HivCareArtCard::find($client_value->id);
                }

                if (!empty($client_value->place_tranfred_to)) {
                    $place_tranfred_to = $place_tranfred_to + 1;
                    $raed_hivcareArtcard_tranfred[] = HivCareArtCard::find($client_value->id);
                }

                if ($client_value->lact == "Yes") {
                    $lact = $lact + 1;
                    $raed_hivcareArtcard_lact[] = HivCareArtCard::find($client_value->id);
                }

                if ($client_value->lact == "No") {
                     $not_lact = $not_lact + 1;
                }

                if ($client_value->merital_status == "Child") {
                    $child = $child + 1;
                }


                if ($client_value->merital_status == "Married") {
                    $married = $married + 1;
                }

                if ($client_value->merital_status == "Never Married") {
                    $never_married = $never_married + 1;
                }

                if ($client_value->merital_status == "Single") {
                    $single = $single + 1;
                }

                if ($client_value->merital_status == "Living Together") {
                    $livingtogether = $livingtogether + 1;
                }

                if ($client_value->merital_status == "Divorced") {
                    $bivorced = $bivorced + 1;
                }

                if ($client_value->merital_status == "Separated") {
                    $separated = $separated + 1;
                }

                if ($client_value->merital_status == "Widowed") {
                    $widowed = $widowed + 1;
                }

                // read PriorART last
                $priorart = PriorART::all()->where('hiv_care_art_card_id',$client_value->id)->last();

                if (json_encode($priorart) != "null") {
                  
                    if ($priorart->name == "Transfer in with records") {
                        $transfer_in = $transfer_in + 1;
                    }

                    if ($priorart->name == "PMTCT only") {
                        $pmtct = $pmtct + 1;
                    }

                    if ($priorart->name == "Earlier ARV, Not Transfer in") {
                        $earlier_arv = $earlier_arv + 1;
                    }

                    if ($priorart->name == "Prior ART") {
                        $prior_art = $prior_art + 1;
                    }

                    if ($priorart->name == "PEP") {
                        $pep = $pep + 1;
                    }

                    if ($priorart->name == "HEP-B") {
                        $hep_b = $hep_b + 1;
                    }

                    if ($priorart->name == "None") {
                       $none = $none + 1;
                    }
                }
            }
        }

        return view('report.timespecifics')->with(compact('year','month','count_HivCareArtCard','count_HivCareArtCard_male','art_ArtTreatmentInteraption_lost','art_ArtTreatmentInteraption_Stop','count_LinkFacilitator','read_LinkFacilitator','village','currently_on_tb_treatment','no_signs','status','diagnosed','good','fair','poor','raed_hivcareArtcard_bad','died','raed_hivcareArtcard_died','place_tranfred_to','raed_hivcareArtcard_tranfred','raed_hivcareArtcard_lact','lact','not_lact','child','married','single','livingtogether','bivorced','separated','widowed','never_married','transfer_in','pmtct','earlier_arv','prior_art','pep','hep_b','none','read_FamilySuportGroup','raed_HivExposedInfant','read_hivexposedinfantmale','read_hivexposedinfantfemale','raedhivexposedinfant','referred_to_art_clinicyes','referred_to_art_clinicno','raedhivexposedinfant_yes','EBF_Exclusive','RF_Replacement','MF_Mixed','CF_Complementary','W_Wean','NLB_No','result_first_positive','result_first_negative','tb_treatment_list'));   
    }
} 