<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HivCareArtCard;
use App\FalimlySuportGroupRegister;
use App\FsgService;
use App\FamilySuportGroup;
use App\CareEntryPoint;
class FalimlySuportGroupRegisterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_members=FalimlySuportGroupRegister::all();
        return view("family_suport_gruop.fsg_register")->with(compact('read_members'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $read_HivCareArtCard=HivCareArtCard::orderBy('surName','ASC')->get();
        $read_FsgService=FsgService::all();
        $read_FamilySuportGroup=FamilySuportGroup::all();
        $read_care_entry_point=CareEntryPoint::all();
        return view("family_suport_gruop.create_fsg_member")->with(compact('read_HivCareArtCard','read_FsgService','read_FamilySuportGroup','read_care_entry_point'));

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
        $save_FalimlySuportGroupRegister=new FalimlySuportGroupRegister();
        $save_FalimlySuportGroupRegister->date_of_enrolement=str_replace("/", "-", $request->date_of_enrolement);
        $date_of_enrolement=explode("/", $request->date_of_enrolement);
        $save_FalimlySuportGroupRegister->month_of_enrolement=$date_of_enrolement[0];
        $save_FalimlySuportGroupRegister->year_of_enrolement=$date_of_enrolement[2];

        $relationship_to_index_client=$request->relationship_to_index_client;

        if (!empty($request->relationship_to_index_client_spec)) {
            # code...
            $relationship_to_index_client=$request->relationship_to_index_client.", ".$request->relationship_to_index_client_spec;
        }

        $family_planning_method[]=$request->family_planning_method;//this is an array
        if (!empty($request->family_planning_method_spec)) {
            # code...
            array_push($family_planning_method, $request->family_planning_method_spec);
        }

        $save_FalimlySuportGroupRegister->relationship_to_index_client=$relationship_to_index_client;
        $save_FalimlySuportGroupRegister->first_time_or_reEnrollemt=$request->first_time_or_reEnrollemt;
        $save_FalimlySuportGroupRegister->hiv_status_at_enrolment=$request->hiv_status_at_enrolment;
        $save_FalimlySuportGroupRegister->disclousure_status=$request->disclousure_status;
        $save_FalimlySuportGroupRegister->entry_point=$request->entry_point;
        $save_FalimlySuportGroupRegister->family_planning_method=json_encode($family_planning_method);
        $save_FalimlySuportGroupRegister->prior_art=$request->prior_art;
        $save_FalimlySuportGroupRegister->art=$request->art;
        $save_FalimlySuportGroupRegister->exp=$request->exp;
        $save_FalimlySuportGroupRegister->art_regimen_at_enrolment=$request->art_regimen_at_enrolment;
        $save_FalimlySuportGroupRegister->Receiving_OI_Prophylaxis=$request->Receiving_OI_Prophylaxis;
        $save_FalimlySuportGroupRegister->Most_recent_CD4_Count=$request->Most_recent_CD4_Count;
        $save_FalimlySuportGroupRegister->Most_recent_CD4_Count_date=$request->Most_recent_CD4_Count_date;
        $save_FalimlySuportGroupRegister->Most_recent_WHO_Clinical_Stage=$request->Most_recent_WHO_Clinical_Stage;
        $save_FalimlySuportGroupRegister->Tested_by_DNA_PCR=$request->Tested_by_DNA_PCR;
        $save_FalimlySuportGroupRegister->Date_of_DNA_PCR_Test=$request->Date_of_DNA_PCR_Test;
        $save_FalimlySuportGroupRegister->Result_of_DNA_PCR_Test=$request->Result_of_DNA_PCR_Test;
        $save_FalimlySuportGroupRegister->fsg_service_id_medical=json_encode($request->fsg_service_id_medical);
        $save_FalimlySuportGroupRegister->fsg_service_id_community=json_encode($request->fsg_service_id_community);
        $save_FalimlySuportGroupRegister->maternal_care=$request->maternal_care;
        $save_FalimlySuportGroupRegister->prophylaxis_treatment=$request->prophylaxis_treatment;
        $save_FalimlySuportGroupRegister->hiv_care_art_card_id=$request->hiv_care_art_card_id;
        $save_FalimlySuportGroupRegister->fsg_service_id=$request->fsg_service_id;
        $save_FalimlySuportGroupRegister->family_suport_group_id=$request->family_suport_group_id;
        try {
            $save_FalimlySuportGroupRegister->save();
            echo "Saved";
        } catch (\Exception $e) {
            echo $e->getMessage();
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
        //
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
        $read_FalimlySuportGroupRegister=FalimlySuportGroupRegister::find($id);
        $read_HivCareArtCard=HivCareArtCard::all();
        $read_FsgService=FsgService::all();
        $read_FamilySuportGroup=FamilySuportGroup::all();
        $read_care_entry_point=CareEntryPoint::all();
        return view("family_suport_gruop.edit_fsg_member")->with(compact('read_HivCareArtCard','read_FsgService','read_FamilySuportGroup','read_FalimlySuportGroupRegister','read_care_entry_point'));

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
        $save_FalimlySuportGroupRegister=FalimlySuportGroupRegister::find($id);
        if (!empty($request->date_of_enrolement)) {
            # code...
             $save_FalimlySuportGroupRegister->date_of_enrolement=str_replace("/", "-", $request->date_of_enrolement);
        }

        if (!empty($request->date_of_enrolement)) {
            # code...
            $date_of_enrolement=explode("/", $request->date_of_enrolement);
            $save_FalimlySuportGroupRegister->month_of_enrolement=$date_of_enrolement[0];
            $save_FalimlySuportGroupRegister->year_of_enrolement=$date_of_enrolement[2];
        }

        if (!empty($request->relationship_to_index_client)) {
            # code...
            $relationship_to_index_client=$request->relationship_to_index_client;
        }    
       

        if (!empty($request->relationship_to_index_client_spec)) {
            # code...
            $relationship_to_index_client=$request->relationship_to_index_client.", ".$request->relationship_to_index_client_spec;
            $save_FalimlySuportGroupRegister->relationship_to_index_client=$relationship_to_index_client;
        }

        $family_planning_method[]=$request->family_planning_method;//this is an array
        if (!empty($request->family_planning_method_spec)) {
            # code...
            array_push($family_planning_method, $request->family_planning_method_spec);
            $save_FalimlySuportGroupRegister->family_planning_method=json_encode($family_planning_method);
        }

        if (!empty($request->first_time_or_reEnrollemt)) {
            # code...
            $save_FalimlySuportGroupRegister->first_time_or_reEnrollemt=$request->first_time_or_reEnrollemt;
        }

        if (!empty($request->hiv_status_at_enrolment)) {
            # code...
            $save_FalimlySuportGroupRegister->hiv_status_at_enrolment=$request->hiv_status_at_enrolment;
        }
       

       if (!empty($request->disclousure_status)) {
           # code...
           $save_FalimlySuportGroupRegister->disclousure_status=$request->disclousure_status;
       }

       if (!empty($request->entry_point)) {
           # code...
           $save_FalimlySuportGroupRegister->entry_point=$request->entry_point;
       }

       if (!empty($request->prior_art)) {
           # code...
          $save_FalimlySuportGroupRegister->prior_art=$request->prior_art;
       }

       if (!empty($request->art)) {
           # code...
          $save_FalimlySuportGroupRegister->art=$request->art;
       }

       if (!empty($request->exp)) {
           # code...
          $save_FalimlySuportGroupRegister->exp=$request->exp;
       }

       if (!empty($request->art_regimen_at_enrolment)) {
           # code...
          $save_FalimlySuportGroupRegister->art_regimen_at_enrolment=$request->art_regimen_at_enrolment;
       }

       if (!empty($request->Receiving_OI_Prophylaxis)) {
           # code...
          $save_FalimlySuportGroupRegister->Receiving_OI_Prophylaxis=$request->Receiving_OI_Prophylaxis;
       }

       if (!empty($request->Most_recent_CD4_Count)) {
           # code...
          $save_FalimlySuportGroupRegister->Most_recent_CD4_Count=$request->Most_recent_CD4_Count;
       }

       if (!empty($request->Most_recent_CD4_Count_date)) {
           # code...
          $save_FalimlySuportGroupRegister->Most_recent_CD4_Count_date=$request->Most_recent_CD4_Count_date;
       }

       if (!empty($request->Most_recent_WHO_Clinical_Stage)) {
           $save_FalimlySuportGroupRegister->Most_recent_WHO_Clinical_Stage=$request->Most_recent_WHO_Clinical_Stage;
       }

       if (!empty($request->Tested_by_DNA_PCR)) {
           # code...
           $save_FalimlySuportGroupRegister->Tested_by_DNA_PCR=$request->Tested_by_DNA_PCR;
       }

       if (!empty($request->Date_of_DNA_PCR_Test)) {
           # code...
           $save_FalimlySuportGroupRegister->Date_of_DNA_PCR_Test=$request->Date_of_DNA_PCR_Test;
       }

       if (!empty($request->Result_of_DNA_PCR_Test)) {
           # code...
          $save_FalimlySuportGroupRegister->Result_of_DNA_PCR_Test=$request->Result_of_DNA_PCR_Test;
       }

       if (!empty($request->fsg_service_id_medical)) {
           # code...
          $save_FalimlySuportGroupRegister->fsg_service_id_medical=json_encode($request->fsg_service_id_medical);
       }

       if (!empty($request->fsg_service_id_community)) {
           # code...
          $save_FalimlySuportGroupRegister->fsg_service_id_community=json_encode($request->fsg_service_id_community);
       }

       if (!empty($request->maternal_care)) {
           # code...
           $save_FalimlySuportGroupRegister->maternal_care=$request->maternal_care;
       }

       if (!empty($request->prophylaxis_treatment)) {
           # code...
           $save_FalimlySuportGroupRegister->prophylaxis_treatment=$request->prophylaxis_treatment;
       }

       if (!empty($request->family_suport_group_id)) {
           # code...
        $save_FalimlySuportGroupRegister->family_suport_group_id=$request->family_suport_group_id;
       }
        
        try {
            $save_FalimlySuportGroupRegister->save();
            echo "Updated";
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
        //
        try {
            FalimlySuportGroupRegister::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->route("fsg_register.index");
    }
}
