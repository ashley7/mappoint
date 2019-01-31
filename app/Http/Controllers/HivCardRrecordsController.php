<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HivCardRrecords;
use Auth;

class HivCardRrecordsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //save data
        $save_HivCardRrecords=new HivCardRrecords();
        $save_HivCardRrecords->hiv_care_art_card_id=$request->hiv_card_id;
        if (!empty($request->date_checked_in)) {
            # code...
            $save_HivCardRrecords->date_checked_in=str_replace("/", "-", $request->date_checked_in);
            $date_checked_in=explode("/", $request->date_checked_in);
            $save_HivCardRrecords->month_checked_in=$date_checked_in[0];
            $save_HivCardRrecords->year_checked_in=$date_checked_in[2];
        }

        if (!empty($request->follow_up_date)) {
            # code...
            $save_HivCardRrecords->follow_up_date=str_replace("/", "-", $request->follow_up_date);
            $follow_up_date=explode("/", $request->follow_up_date);
            $save_HivCardRrecords->follow_up_month=$follow_up_date[0];
            $save_HivCardRrecords->follow_up_year=$follow_up_date[2];
        }
        
        if (!empty($request->duration_since_start_regimen)) {
            $save_HivCardRrecords->duration_since_start_regimen=$request->duration_since_start_regimen;
        }

        if (!empty($request->duration_since_start_art)) {
            # code...
            $save_HivCardRrecords->duration_since_start_art=$request->duration_since_start_art;
        }

        if (!empty($request->Wt)) {
            # code...
            $save_HivCardRrecords->Wt=$request->Wt;
        }

        if (!empty($request->method_hieght)) {
            # code...
            $save_HivCardRrecords->method_hieght=$request->method_hieght;
        }

        if (!empty($request->function_work)) {
            # code...
            $save_HivCardRrecords->function_work=$request->function_work;
        }
        if (!empty($request->WHO_clinic_stage)) {
            # code...
            $save_HivCardRrecords->WHO_clinic_stage=$request->WHO_clinic_stage;
        }
        if (!empty($request->TB_status)) {
            # code...
            $save_HivCardRrecords->TB_status=$request->TB_status;
        }
        

        $potential_side_effects[]=$request->potential_side_effects;
        if (!empty($request->potential_side_effects_spec)) {
            array_push($potential_side_effects, $request->potential_side_effects_spec);
        }
        $save_HivCardRrecords->potential_side_effects=json_encode($potential_side_effects);

        $other_problems[]=$request->other_problems;
        if (!empty($request->other_problems_spec)) {
            array_push($other_problems, $request->other_problems_spec);
        }
        $save_HivCardRrecords->other_problems=json_encode($other_problems);

        $save_HivCardRrecords->Cotrimoxole_Adhere=$request->Cotrimoxole_Adhere;
        $save_HivCardRrecords->Cotrimoxole_Dose=$request->Cotrimoxole_Dose;
        $save_HivCardRrecords->Cotrimoxole_days=$request->Cotrimoxole_days;
        $save_HivCardRrecords->INH_of_pills=$request->INH_of_pills;
        $save_HivCardRrecords->INH_of_days=$request->INH_of_days;
        $save_HivCardRrecords->Other_methods_dispensed=$request->Other_methods_dispensed;
        $save_HivCardRrecords->ARV_adhere=$request->ARV_adhere;
        $save_HivCardRrecords->ARV_regimen=$request->ARV_regimen;
        $save_HivCardRrecords->CD4_count=$request->CD4_count;
        $save_HivCardRrecords->link_provider=$request->link_provider;

        $reason_for_pooradherence[]=$request->reason_for_pooradherence;

        if (!empty($request->reason_for_pooradherence)) {
            # code...
            array_push($reason_for_pooradherence, $request->reason_for_pooradherence_spec);
        }

        $save_HivCardRrecords->reason_for_pooradherence=json_encode($reason_for_pooradherence);

        $save_HivCardRrecords->muac_oedema=$request->muac_oedema;
        $save_HivCardRrecords->fp_nofp=$request->fp_nofp;
        $save_HivCardRrecords->age=$request->age;
        $save_HivCardRrecords->ARV_regimen_of_pills=$request->ARV_regimen_of_pills;
        $save_HivCardRrecords->ARV_regimen_of_dispensed=$request->ARV_regimen_of_dispensed;
        $save_HivCardRrecords->infant_ab_pcr=$request->infant_ab_pcr;
        $save_HivCardRrecords->edd_emtct=$request->edd_emtct;
        $save_HivCardRrecords->TB_rx=str_replace("/", "-", $request->TB_rx);
        $save_HivCardRrecords->district_tb=$request->district_tb;
        $save_HivCardRrecords->functional_status=$request->functional_status;
        $save_HivCardRrecords->user_id=$request->user_id;

        try {
            $save_HivCardRrecords->save();
            echo "Saved successfully";
            // return $save_HivCardRrecords;
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
            HivCardRrecords::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->back();
    }
}
