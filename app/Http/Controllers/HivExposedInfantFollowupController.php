<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HivExposedInfantFollowup;

class HivExposedInfantFollowupController extends Controller
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

        $save_HivExposedInfantFollowup=new HivExposedInfantFollowup();
        $save_HivExposedInfantFollowup->attempt_name=$request->attempt_name;

        $to_date = date_create(str_replace("/", "-", $request->attempt_date));
        $attempt_date= date_timestamp_get($to_date);

        $save_HivExposedInfantFollowup->attempt_date=$attempt_date;
        $save_HivExposedInfantFollowup->hiv_exposed_infant_id=$id;
        $save_HivExposedInfantFollowup->attempt_outcome=$request->attempt_outcome;
        $save_HivExposedInfantFollowup->final_status=$request->final_status;
        try {
            $save_HivExposedInfantFollowup->save();
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
