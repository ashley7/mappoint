<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HivExposedInfant;
use App\HivExposedInfantVisits;
use App\PtClinic;
use App\Village;
use App\HivCareArtCard;

class HivExposedInfantController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $raed_HivExposedInfant=HivExposedInfant::all();
        return view("infant.infant_list")->with(compact('raed_HivExposedInfant'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view("infant.create_infant");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $this->validate($request,["infant_number"=>"required|unique:hiv_exposed_infants"]);
       $save_HivExposedInfant=new HivExposedInfant();
       $save_HivExposedInfant->infant_number=$request->infant_number;
       try {
           $save_HivExposedInfant->save();
           $status="HIV infant created succeessfully";
           return redirect()->route('hiv_exposed_infant.edit',$save_HivExposedInfant->id)->with(compact('status'));
       } catch (\Exception $e) {
           $status=$e->getMessage();
           return redirect()->back()->with(compact('status'));
       }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $read_HivExposedInfant=HivExposedInfant::find($id);
        return view("infant.details")->with(compact('read_HivExposedInfant'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $read_ptclinics=PtClinic::all();
        $read_HivExposedInfant=HivExposedInfant::find($id);
        $read_Village=Village::all();
        $read_only_numbers=HivCareArtCard::orderBy('PatientNumber','ASC')->get();
        return view("infant.update_infant")->with(compact('read_HivExposedInfant','read_ptclinics','read_Village','read_only_numbers'));
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
        //
        $read_HivExposedInfant=HivExposedInfant::find($id);

        if (!empty($request->date_of_registration)) {
            $to_date = date_create(str_replace("/", "-", $request->date_of_registration));
            $date_of_registration= date_timestamp_get($to_date);
            $read_HivExposedInfant->date_of_registration=$date_of_registration;        
        }

        if (!empty($request->infant_number)) {
            # code...
            $read_HivExposedInfant->infant_number=$request->infant_number; 
        }

        if (!empty($request->commonname_of_mother)) {
            # code...
            $read_HivExposedInfant->commonname_of_mother=$request->commonname_of_mother;
        }

        if (!empty($request->village_id)) {
            # code...
             $read_HivExposedInfant->village_id=$request->village_id; 
        }

        if (!empty($request->relationship)) {
            # code...
            $read_HivExposedInfant->relationship=$request->relationship;
        }

        if (!empty($request->relative_phonenumber)) {
            # code...
            $read_HivExposedInfant->relative_phonenumber=$request->relative_phonenumber;
        }

        if (!empty($request->person_disclosure)) {
            # code...
            $read_HivExposedInfant->person_disclosure=$request->person_disclosure;
        }

        if (!empty($request->place_of_delivery)) {
            # code...
            $read_HivExposedInfant->place_of_delivery=$request->place_of_delivery;
        }

        if (!empty($request->mode_of_delivery)) {
            # code...
            $read_HivExposedInfant->mode_of_delivery=$request->mode_of_delivery;
        }

        if (!empty($request->mother_pmtct)) {
            # code...
            $read_HivExposedInfant->mother_pmtct=$request->mother_pmtct;
        }

        if (!empty($request->alternative_contact_person)) {
            # code...
            $read_HivExposedInfant->alternative_contact_person=$request->alternative_contact_person;
        }

        if (!empty($request->lc_chairman)) {
            # code...
            $read_HivExposedInfant->lc_chairman=$request->lc_chairman;
        }
        if (!empty($request->care_giver_address_directions)) {
            # code...
            $read_HivExposedInfant->care_giver_address_directions=$request->care_giver_address_directions;
        }

        if (!empty($request->outreachworkers_intro)) {
            # code...
            $read_HivExposedInfant->outreachworkers_intro=$request->outreachworkers_intro;
        }

        if (!empty($request->lc_one_zone)) {
            # code...
            $read_HivExposedInfant->lc_one_zone=$request->lc_one_zone;
        }

        if (!empty($request->pt_clinic_id)) {
            # code...
            $read_HivExposedInfant->pt_clinic_id=$request->pt_clinic_id; 
        }

        if (!empty($request->entry_point)) {
            # code...
            $read_HivExposedInfant->entry_point=$request->entry_point;
        }

        if (!empty($request->surname)) {
            # code...
            $read_HivExposedInfant->surname=$request->surname;          
        }

        if (!empty($request->firstname)) {
            # code...
            $read_HivExposedInfant->firstname=$request->firstname;            
        }

        if (!empty($request->sex)) {
            # code...
            $read_HivExposedInfant->sex=$request->sex;
        }

        if (!empty($request->date_of_birth)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_of_birth));
            $date_of_birth= date_timestamp_get($to_date);
            $read_HivExposedInfant->date_of_birth=$date_of_birth;  
        }

        if (!empty($request->age)) {
            # code...
            $read_HivExposedInfant->age=$request->age;
        }

         if (!empty($request->clinic_referred_from)) {
            # code...
            $read_HivExposedInfant->clinic_referred_from=$request->clinic_referred_from;
        }

        if (!empty($request->date_at_nvp)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_at_nvp));
            $date_at_nvp= date_timestamp_get($to_date);
            $read_HivExposedInfant->date_at_nvp=$date_at_nvp;
        }

        if (!empty($request->age_at_nvp)) {
            # code...
            $read_HivExposedInfant->age_at_nvp=$request->age_at_nvp;
        }

        if (!empty($request->date_at_cotrim)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_at_cotrim));
            $date_at_cotrim= date_timestamp_get($to_date);
            $read_HivExposedInfant->date_at_cotrim=$date_at_cotrim;
        }

        if (!empty($request->age_at_cotrim)) {
            # code...
            $read_HivExposedInfant->age_at_cotrim=$request->age_at_cotrim;
        }

        if (!empty($request->surname_of_mother)) {
            # code...
            $read_HivExposedInfant->surname_of_mother=$request->surname_of_mother;
        }

        if (!empty($request->Mothers_ANC_No)) {
            # code...
            $read_HivExposedInfant->Mothers_ANC_No=$request->Mothers_ANC_No;
        }

        if (!empty($request->art_clinic_option)) {
            # code...
            $read_HivExposedInfant->art_clinic_option=$request->art_clinic_option;
        }

        if (!empty($request->art_clinic)) {
            # code...
            $read_HivExposedInfant->art_clinic=$request->art_clinic;
        }

        if (!empty($request->referred_to_art_clinic)) {
            # code...
            $read_HivExposedInfant->referred_to_art_clinic=$request->referred_to_art_clinic;
        }

        if (!empty($request->date_referred_to_art_clinic)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_referred_to_art_clinic));
            $date_referred_to_art_clinic= date_timestamp_get($to_date);
            $read_HivExposedInfant->date_referred_to_art_clinic=$date_referred_to_art_clinic;
        }

        if (!empty($request->date_enrolled_at_art_clinic)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_enrolled_at_art_clinic));
            $date_enrolled_at_art_clinic= date_timestamp_get($to_date);
            $read_HivExposedInfant->date_enrolled_at_art_clinic=$date_enrolled_at_art_clinic;
        }

        if (!empty($request->enrolled_to_art_clinic)) {
            # code...
            $read_HivExposedInfant->enrolled_to_art_clinic=$request->enrolled_to_art_clinic;
        }

        if (!empty($request->hiv_care_art_card_id)) {
            # code...
            $read_HivExposedInfant->hiv_care_art_card_id=$request->hiv_care_art_card_id;
        }

        if (!empty($request->Mothers_PRE_ART_No)) {
            # code...
            $read_HivExposedInfant->Mothers_PRE_ART_No=$request->Mothers_PRE_ART_No;
        }

        if (!empty($request->firstname_of_mother)) {
            # code...
            $read_HivExposedInfant->firstname_of_mother=$request->firstname_of_mother;
        }

        if (!empty($request->MotherNewlyTestedDuringBreastFeeding)) {
            # code...
            $read_HivExposedInfant->MotherNewlyTestedDuringBreastFeeding=$request->MotherNewlyTestedDuringBreastFeeding;
        }

        if (!empty($request->MotherNewlyEnrolledARTDuringBreastFeeding)) {
            # code...
            $read_HivExposedInfant->MotherNewlyEnrolledARTDuringBreastFeeding=$request->MotherNewlyEnrolledARTDuringBreastFeeding;
        }

        if (!empty($request->mother_antinantal)) {
            # code...
            $read_HivExposedInfant->mother_antinantal=$request->mother_antinantal;
        }

        if (!empty($request->mother_delivery)) {
            # code...
            $read_HivExposedInfant->mother_delivery=$request->mother_delivery;
        }

        if (!empty($request->mother_postnantal)) {
            # code...
            $read_HivExposedInfant->mother_postnantal=$request->mother_postnantal;
        }

        if (!empty($request->infants_arvforemtct)) {
            # code...
            $read_HivExposedInfant->infants_arvforemtct=$request->infants_arvforemtct;
        }

        if (!empty($request->date_dbs_collected_first)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_dbs_collected_first));
            $date_dbs_collected_first=date_timestamp_get($to_date);
            $read_HivExposedInfant->date_dbs_collected_first=$date_dbs_collected_first;
        }

        if (!empty($request->age_at_first_dbs_first)) {
            # code...
            $read_HivExposedInfant->age_at_first_dbs_first=$request->age_at_first_dbs_first;
        }

        if (!empty($request->infant_feeding_status_first)) {
            # code...
            $read_HivExposedInfant->infant_feeding_status_first=$request->infant_feeding_status_first;
        }

        if (!empty($request->result_first)) {
            # code...
            $read_HivExposedInfant->result_first=$request->result_first;
        }

        if (!empty($request->date_result_recieved_first)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_result_recieved_first));
            $date_result_recieved_first=date_timestamp_get($to_date);
            $read_HivExposedInfant->date_result_recieved_first=$date_result_recieved_first;
        }

        if (!empty($request->date_given_to_caregiver_first)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_given_to_caregiver_first));
            $date_given_to_caregiver_first=date_timestamp_get($to_date);
            $read_HivExposedInfant->date_given_to_caregiver_first=$date_given_to_caregiver_first;
        }

         if (!empty($request->date_dbs_collected_second)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_dbs_collected_second));
            $date_dbs_collected_second=date_timestamp_get($to_date);
            $read_HivExposedInfant->date_dbs_collected_second=$date_dbs_collected_second;
        }

        if (!empty($request->age_at_first_dbs_second)) {
            # code...
            $read_HivExposedInfant->age_at_first_dbs_second=$request->age_at_first_dbs_second;
        }

         if (!empty($request->infant_feeding_status_second)) {
            # code...
            $read_HivExposedInfant->infant_feeding_status_second=$request->infant_feeding_status_second;
        }

         if (!empty($request->result_second)) {
            # code...
            $read_HivExposedInfant->result_second=$request->result_second;
        }

         if (!empty($request->date_result_recieved_second)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_result_recieved_second));
            $date_result_recieved_second=date_timestamp_get($to_date);
            $read_HivExposedInfant->date_result_recieved_second=$date_result_recieved_second;
        }

         if (!empty($request->date_given_to_caregiver_second)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_given_to_caregiver_second));
            $date_given_to_caregiver_second=date_timestamp_get($to_date);
            $read_HivExposedInfant->date_given_to_caregiver_second=$date_given_to_caregiver_second;
        }

        if (!empty($request->rapid_test_date)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->rapid_test_date));
            $rapid_test_date=date_timestamp_get($to_date);
            $read_HivExposedInfant->rapid_test_date=$rapid_test_date;
        }

        if (!empty($request->rapid_test_age)) {
            $read_HivExposedInfant->rapid_test_age=$request->rapid_test_age;
        }

        if (!empty($request->rapid_test_result)) {
            $read_HivExposedInfant->rapid_test_result=$request->rapid_test_result;
        }

        if (!empty($request->discharged_neg)) {
            $read_HivExposedInfant->discharged_neg=$request->discharged_neg;
        }

        if (!empty($request->lost)) {
            $read_HivExposedInfant->lost=$request->lost;
        }

        if (!empty($request->refferred_for_art)) {
            $read_HivExposedInfant->refferred_for_art=$request->refferred_for_art;
        }

        if (!empty($request->died)) {
            $read_HivExposedInfant->died=$request->died;
        }

        if (!empty($request->clinic)) {
            $read_HivExposedInfant->clinic=$request->clinic;
        }

        if (!empty($request->enrolled)) {
            $read_HivExposedInfant->enrolled=$request->enrolled;
        }

        if (!empty($request->pre_art_number)) {
            $read_HivExposedInfant->pre_art_number=$request->pre_art_number;
        }

        if (!empty($request->transferred)) {
            $read_HivExposedInfant->transferred=$request->transferred;
        }

         if (!empty($request->transferred_to)) {
            $read_HivExposedInfant->transferred_to=$request->transferred_to;
        }
         
        try {
           $read_HivExposedInfant->save(); 
        } catch (\Exception $e) {
            echo $e->getMessage();
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
        try {
            HivExposedInfant::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->back();
    }
}
