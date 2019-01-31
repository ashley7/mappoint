<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\HivCareArtCard;
use App\District;
use App\DistrictClinitian;
use App\PtClinic;
use App\PriorART;
use App\CareEntryPoint;
use App\HivCareArtCartFamilyMember;
use App\ArtTreatmentInteraption;
use App\ArtCardRegimen;
use App\Village;

class HivCareArtCardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_only_numbers=HivCareArtCard::all();
        return view("Hiv_care_art_card.hiv_patient_list")->with(compact('read_only_numbers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //load form for number
        return view("Hiv_care_art_card.create_hiv_patient_numbers");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
       
        // if ($request->ajax()) {
            # code...
            $save_number=new HivCareArtCard();
            $this->validate($request,["unique_number"=>"required"]);
            $save_number->PatientNumber=$request->unique_number;
            $save_number->user_id=Auth::user()->id;
            try {
             $save_number->save();
             $status="Patient ART form initiated Successfully"; 
            return redirect()->route('hiv_care_art_card.edit',$save_number->id)->with(compact('status'));
  
            } catch (\Exception $e) {
                $status="Not Save, The number is already taken";
                return redirect()->back()->with(compact('status'));
            }
        // }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // load the details of the patient
        $read_HivCareArtCard=HivCareArtCard::find($id);
        return view("Hiv_care_art_card.HIV_care_ART_CARD")->with(compact('read_HivCareArtCard'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $read_districts=District::all();
        $read_district_clinician=DistrictClinitian::all();
        $read_PtClinic=PtClinic::all();
        $read_CareEntryPoint=CareEntryPoint::all();
        $read_HivCareArtCard=HivCareArtCard::find($id);
        $read_Village=Village::all();
        return view("Hiv_care_art_card.hiv_patient_card_form")->with(compact('read_HivCareArtCard','read_districts','read_district_clinician','read_PtClinic','read_CareEntryPoint','read_Village'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //writin data for the card
        $save_card=HivCareArtCard::find($id);
        // save didtrict
        if (!empty($request->district_it)) {
            $save_card->village_id=$request->district_it;
            try {
                $save_card->save();
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->lact)) {
            $save_card->lact=$request->lact;
            try {
                $save_card->save();
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->patient_number)) {
            # code...
            $save_card->PatientNumber=$request->patient_number;
            try {
                $save_card->save();
            } catch (\Exception $e) {
                
            }
        }

        if (!empty($request->preg)) {
            $save_card->preg=$request->preg;
            try {
                $save_card->save();
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->relevant_medical_conditions)) {
            # code...
            $save_card->relevant_medical_conditions=$request->relevant_medical_conditions;
            try {
                $save_card->save();
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->test_type)) {
            # code...
             $save_card->test_type=$request->test_type;
            try {
                $save_card->save();
                //echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->test_location)) {
            # code...
             $save_card->test_location=$request->test_location;
            try {
                $save_card->save();
                //echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        // save name
        if (!empty($request->sirname)) {
            # code...
            $save_card->surName=$request->sirname;
            try {
                $save_card->save();
                //echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->sex)) {
            # code...
            $save_card->sex=$request->sex;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->phone_number)) {
            # code...
            $save_card->phone_number=$request->phone_number;
            try {
                $save_card->save();
                echo "Save successfully";
            } catch (\Exception $e) {
                echo "The phone number ".$request->phone_number." is taken. ".$e->getMessage();
            }
        }

        if (!empty($request->merital_status)) {
            # code...
            $save_card->merital_status=$request->merital_status;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->health_unit)) {
            # code...
            $save_card->health_unit=$request->health_unit;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->firstname)) {
            # code...
            $save_card->firstName=$request->firstname;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->age)) {
            # code...
            $save_card->age=$request->age;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->address)) {
            # code...
            $save_card->address=$request->address;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->phone_number_owner)) {
            # code...
            $save_card->phone_owner_name=$request->phone_number_owner;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->clinician_id)) {
            # code...
            $save_card->district_clinitian_id=$request->clinician_id;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->pt_clinic_id)) {
            # code...
            $save_card->pt_clinic_id=$request->pt_clinic_id;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->date_of_birth)) {
            # code...
            $save_card->date_of_birth=str_replace("/", "-", $request->date_of_birth);
            $date_of_birth=explode("/", $request->date_of_birth);
            $save_card->month_of_birth=$date_of_birth[0];
            $save_card->year_of_birth=$date_of_birth[2];
            $save_card->save();
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->prior_art)) {
            # code...
            $savePriorART=new PriorART();
            $savePriorART->name=$request->prior_art;
            $savePriorART->date=$request->prior_art_date;
            $savePriorART->location=$request->prior_art_location;
            $savePriorART->ARVs=$request->prior_art_arvs;
            $savePriorART->hiv_care_art_card_id=$save_card->id;
            try {
                $savePriorART->save();
                  echo "Saved successfully";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }


        if (!empty($request->care_entry_point)) {
            # code...
            $save_card->care_entry_point_id=$request->care_entry_point;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->care_entry_point_specify)) {
            # code...
            $save_card->care_entry_point_specify=$request->care_entry_point_specify;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->treatmemnt_suporter)) {
            # code...
            $save_card->treatmemnt_suporter=$request->treatmemnt_suporter;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->treatment_address)) {
            # code...
            $save_card->treatment_address=$request->treatment_address;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->treatment_telephone)) {
            # code...
            $save_card->treatment_telephone=$request->treatment_telephone;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->home_based_care_provider)) {
            # code...
            $save_card->home_based_care_provider=$request->home_based_care_provider;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->drug_allagies)) {
            # code...
            $save_card->drug_allagies=$request->drug_allagies;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        

        if (!empty($request->family_sirname)) {
            # code...
            $save_HivCareArtCartFamilyMember=new HivCareArtCartFamilyMember();
            $save_HivCareArtCartFamilyMember->surName=$request->family_sirname;
            $save_HivCareArtCartFamilyMember->firstName=$request->family_firstname;
            $save_HivCareArtCartFamilyMember->age=$request->family_age;
            $save_HivCareArtCartFamilyMember->HIV_status=$request->Hive_Care;
            $save_HivCareArtCartFamilyMember->Hive_Care=$request->HIV_status;
            $save_HivCareArtCartFamilyMember->family_members_number=$request->family_unique_number;
            $save_HivCareArtCartFamilyMember->hiv_care_art_card_id=$id;
            try {
                $save_HivCareArtCartFamilyMember->save();
                echo "Saved";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->circle)) {
            # code...
            $save_ArtTreatmentInteraption=new ArtTreatmentInteraption();
            $save_ArtTreatmentInteraption->circle=$request->circle;
            $save_ArtTreatmentInteraption->date_accured=str_replace("/", "-", $request->circle_date_recorded);
            $circle_date_recorded=explode("/", $request->circle_date_recorded);
            $save_ArtTreatmentInteraption->month_accured=$circle_date_recorded[0];
            $save_ArtTreatmentInteraption->year_accured=$circle_date_recorded[2];
            $save_ArtTreatmentInteraption->reason=$request->circle_reason;
            $save_ArtTreatmentInteraption->hiv_care_art_card_id=$id;
            if (!empty($request->reason_specify)) {
                # code...
                $save_ArtTreatmentInteraption->reason=$request->reason_specify;
            }
            try {
                $save_ArtTreatmentInteraption->save();
            } catch (\Exception $e) {
                
            }
        }


        if (!empty($request->drug_allagies)) {
            # code...
            $save_card->drug_allagies=$request->drug_allagies;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->date_comfirmed_hiv)) {
            # code...
            $save_card->date_comfirmed_hiv=str_replace("/", "-", $request->date_comfirmed_hiv);
            $date_comfirmed_hiv=explode("/", $request->date_comfirmed_hiv);
            $save_card->month_comfirmed_hiv=$date_comfirmed_hiv[0];
            $save_card->year_comfirmed_hiv=$date_comfirmed_hiv[2];
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->place_of_hiv_confirmation)) {
            # code...
            $save_card->place_of_hive_confirmation=$request->place_of_hiv_confirmation;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->clinical_stage)) {
            # code...
            $save_card->clinical_stage=$request->clinical_stage;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->reason_why_elligible)) {
            # code...
            $save_card->reason_why_elligible=$request->reason_why_elligible;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->date_madically_eligible_date_ART)) {
            # code...
            $save_card->date_medically_legible=str_replace("/", "-", $request->date_madically_eligible_date_ART);
            $date_madically_eligible_date_ART=explode("/", $request->date_madically_eligible_date_ART);
            $save_card->month_medically_legible=$date_madically_eligible_date_ART[0];
            $save_card->year_medically_legible=$date_madically_eligible_date_ART[2];
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->date_transfered_in)) {
            # code...
            $save_card->date_transfered_in=str_replace("/", "-", $request->date_transfered_in);
            $date_transfered_in=explode("/", $request->date_transfered_in);
            $save_card->month_transfered_in=$date_transfered_in[0];
            $save_card->year_transfered_in=$date_transfered_in[2];
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->transfred_in_from)) {
            # code...
            $save_card->transfred_in_from=$request->transfred_in_from;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->cohort)) {
            # code...
            $save_card->cohort=$request->cohort;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }
        

        if (!empty($request->date_art_started)) {
            # code...
            $save_card->date_art_started=str_replace("/", "-", $request->date_art_started);
            $date_art_started=explode("/", $request->date_art_started);
            $save_card->month_art_started=$date_art_started[0];
            $save_card->year_art_started=$date_art_started[2];
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->initial_regimen)) {
            # code...
            $save_card->initial_regimen=$request->initial_regimen;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->weight_at_ART_start)) {
            # code...
            $save_card->weight_at_ART_start=$request->weight_at_ART_start;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->function_at_ART_start)) {
            # code...
            $save_card->function_at_ART_start=$request->function_at_ART_start;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->date_transfred_out)) {
            # code...
            $save_card->date_transfred_out=str_replace("/", "-", $request->date_transfred_out);
            $date_transfred_out=explode("/", $request->date_transfred_out);
            $save_card->month_transfred_out=$date_transfred_out[0];
            $save_card->year_transfred_out=$date_transfred_out[2];
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }


        if (!empty($request->place_tranfred_to)) {
            # code...
            $save_card->place_tranfred_to=$request->place_tranfred_to;
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->date_enrolled_in_HIV)) {
            # code...
            $save_card->date_enrolled_in_HIV=str_replace("/", "-", $request->date_enrolled_in_HIV);
            $date_enrolled_in_HIV=explode("/",$request->date_enrolled_in_HIV);
            $save_card->month_enrolled_in_HIV=$date_enrolled_in_HIV[0];
            $save_card->year_enrolled_in_HIV=$date_enrolled_in_HIV[2];
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

        if (!empty($request->date_died)) {
            # code...
            $save_card->date_died=str_replace("/", "-", $request->date_died);
            $date_died=explode("/", $request->date_died);
            $save_card->month_died=$date_died[0];
            $save_card->year_died=$date_died[2];
            $save_card->person_live_status="Died";
            try {
                $save_card->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }

          if (!empty($request->regimen)) {
            
            $save_ArtCardRegimen=new ArtCardRegimen();
            $save_ArtCardRegimen->regimen=$request->regimen;
            $save_ArtCardRegimen->reason=$request->regimen_reason;
            if (!empty($request->regimen_reason_specify)) {
                # code...
                $save_ArtCardRegimen->reason=$request->regimen_reason_specify;
            }
            $save_ArtCardRegimen->date_recorded=str_replace("/", "-", $request->date_of_regimen);
            $date_of_regimen=explode("/",$request->date_of_regimen);
            $save_ArtCardRegimen->month_recorded=$date_of_regimen[0];
            $save_ArtCardRegimen->year_recorded=$date_of_regimen[2];
            $save_ArtCardRegimen->hiv_care_art_card_id=$id;
            try {
                $save_ArtCardRegimen->save();
              //  echo "string";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }      
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //delete patient
        try {
            HivCareArtCard::destroy($id);
            $status="Deleted Successfully.";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route("hiv_care_art_card.index")->with(compact('status'));
    }
}
