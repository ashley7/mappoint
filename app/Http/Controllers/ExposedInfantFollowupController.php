<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ExposedInfantFollowup;
use App\HivCareArtCard;

class ExposedInfantFollowupController extends Controller
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
        $read_ExposedInfantFollowup=new ExposedInfantFollowup();
        $read_ExposedInfantFollowup->name=$request->infant_name;
        $read_ExposedInfantFollowup->dob=str_replace("/", "-", $request->infant_dob);
        $read_ExposedInfantFollowup->feeding_status=$request->feeding_status;
        $read_ExposedInfantFollowup->CTP=$request->ctp;
        $read_ExposedInfantFollowup->date_of_first_PCR=str_replace("/", "-", $request->first_pcr_date);
        $read_ExposedInfantFollowup->final_status=$request->final_status;
        $read_ExposedInfantFollowup->unique_id=$request->unique_id;
        $read_ExposedInfantFollowup->HivCareArtCard_id=$id;
        try {
            $read_ExposedInfantFollowup->save();
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
    }
}
