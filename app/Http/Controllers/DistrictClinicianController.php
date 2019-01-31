<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DistrictClinitian;
use App\District;

class DistrictClinicianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_district_clinician=DistrictClinitian::all();
        return view("district_clinician.clinicians")->with(compact('read_district_clinician'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $read_districts=District::all();
        return view("district_clinician.create_clinicians")->with(compact('read_districts'));
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
        $this->validate($request,["name"=>"required","description"=>"required","district_id"=>"required"]);

        $save_district_clinitian=new DistrictClinitian();
        $save_district_clinitian->name=$request->name;
        $save_district_clinitian->description=$request->description;
        $save_district_clinitian->district_id=$request->district_id;
        try {

            $save_district_clinitian->save();
            $status=$request->name." has been created successfully";
            
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }

        return redirect()->route('district_clinician.index')->with(compact('status'));
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
        $read_district_clinitian=DistrictClinitian::find($id);
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
        $read_district_clinitian=DistrictClinitian::find($id);
        return view("district_clinician.edit_clinician")->with(compact('read_district_clinitian','read_districts'));
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
        $save_district_clinitian=DistrictClinitian::find($id);
        if (!empty($request->name)) {
            # code...
            $save_district_clinitian->name=$request->name;
        }

        if (!empty($request->description)) {
            # code...
            $save_district_clinitian->description=$request->description;
        }

        if (!empty($request->district_id)) {
            # code...
            $save_district_clinitian->district_id=$request->district_id;
        }    
               
        try {

            $save_district_clinitian->save();
            $status=$request->name." has been Updated successfully";
            
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }

        return redirect()->route('district_clinician.index')->with(compact('status'));
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
            DistrictClinitian::destroy($id);
            $status="Deleted successfully";
        } catch (\Exception $e) {
             $status=$e->getMessage();
        }

        return redirect()->route('district.index')->with(compact('status'));
    }
}
