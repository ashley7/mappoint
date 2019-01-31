<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HivExposedInfantTesingInformation;

class HivExposedInfantTesingInformationController extends Controller
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
        $save_HivExposedInfantTesingInformation=new HivExposedInfantTesingInformation();
        $save_HivExposedInfantTesingInformation->hivei_id=$id;

        if (!empty($request->testname)) {
            # code...
            $save_HivExposedInfantTesingInformation->testname=$request->testname;
        }

        if (!empty($request->testdate)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->testdate));
            $testdate= date_timestamp_get($to_date);
            $save_HivExposedInfantTesingInformation->testdate=$testdate;
        }

        if (!empty($request->infant_feeding_status_first)) {
            # code...
            $save_HivExposedInfantTesingInformation->infant_feeding_status_first=$request->infant_feeding_status_first;
        }

        if (!empty($request->result_first)) {
            # code...
            $save_HivExposedInfantTesingInformation->result_first=$request->result_first;
        }

        if (!empty($request->date_given_to_caregiver_first)) {
            # code...
            $to_date = date_create(str_replace("/", "-", $request->date_given_to_caregiver_first));
            $date_given_to_caregiver_first= date_timestamp_get($to_date);
            $save_HivExposedInfantTesingInformation->date_given_to_caregiver_first=$date_given_to_caregiver_first;
        }
        try {
           $save_HivExposedInfantTesingInformation->save();
           echo "Saved";  
        } catch (\Exception $e) {
            
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
    }
}
