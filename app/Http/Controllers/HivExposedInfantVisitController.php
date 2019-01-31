<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HivExposedInfantVisits;

class HivExposedInfantVisitController extends Controller
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
        //
        
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
        $immunisationcodes=$clinicalassessment_spec=array();

        $raed_HivExposedInfantVisit=new HivExposedInfantVisits();
        $raed_HivExposedInfantVisit->hiv_exposed_infant_id=$id;

        $to_date = date_create(str_replace("/", "-", $request->appointment_date));       
        $to_datevisit_date = date_create(str_replace("/", "-", $request->visit_date));       

        $raed_HivExposedInfantVisit->appointment_date=date_timestamp_get($to_date);
        $raed_HivExposedInfantVisit->visit_date = date_timestamp_get($to_datevisit_date);
        $raed_HivExposedInfantVisit->age=$request->age;
        $raed_HivExposedInfantVisit->visit_name=$request->visit_name;
        $raed_HivExposedInfantVisit->hive_test=$request->hive_test;

        $immunisationcodes=$request->immunisation_codes;

        if (!empty($request->immunisation_codes_spec)) {
            # code...
            array_push($immunisationcodes, $request->immunisation_codes_spec);
        }

        $raed_HivExposedInfantVisit->immunisation_codes=json_encode($immunisationcodes);

        $clinical_assessmentspec=$request->clinical_assessment;

        if (!empty($request->clinical_assessment_spec)) {
            # code...
            array_push($clinical_assessmentspec, $request->clinical_assessment_spec);
        }

        $raed_HivExposedInfantVisit->clinical_assessment_spec=json_encode($clinical_assessmentspec);


        $raed_HivExposedInfantVisit->ctx_nvp=$request->nvp;
        $raed_HivExposedInfantVisit->height=$request->height;
        $raed_HivExposedInfantVisit->weight=$request->weight;
        $raed_HivExposedInfantVisit->cotrim=$request->cotrim;
        $raed_HivExposedInfantVisit->z_scores=$request->z_scores;
        $raed_HivExposedInfantVisit->Pre_ART_No=$request->Pre_ART_No;
        $raed_HivExposedInfantVisit->development_milestones=json_encode($request->development_milestones);
        $raed_HivExposedInfantVisit->head_circumference=$request->head_circumference;
        $raed_HivExposedInfantVisit->muac=$request->muac;
        $raed_HivExposedInfantVisit->actions_taken=$request->actions_taken;
        $raed_HivExposedInfantVisit->other_indicators=$request->other_indicators;
        $raed_HivExposedInfantVisit->mother_arv=$request->mother_arv;
        $raed_HivExposedInfantVisit->infant_feeding=$request->infant_feeding;
        try {
            $raed_HivExposedInfantVisit->save();
            echo "Saved";
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
            HivExposedInfantVisits::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->back();
    }
}
