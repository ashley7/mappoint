<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PtClinic;
use App\District;

class PtClinicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_ptclinics=PtClinic::all();
        return view('ptclinic.pt_clinic')->with(compact('read_ptclinics'));
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
        return view('ptclinic.create_pt_clinic')->with(compact('read_districts'));
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
        $this->validate($request,["name"=>"required","description"=>"required","number"=>"required|unique:pt_clinics","district_id"=>"required"]);

        $save_PtClinic=new PtClinic();
        $save_PtClinic->name=$request->name;
        $save_PtClinic->number=$request->number;
        $save_PtClinic->description=$request->description;
        $save_PtClinic->district_id=$request->district_id;
        try {
            $save_PtClinic->save();
            $status=$request->name." has been created successfully.";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route('pt_clinic.index')->with(compact('status'));
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
         $read_PtClinic=PtClinic::find($id);
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
        $read_PtClinic=PtClinic::find($id);
        return view("ptclinic.edit_pt_clinic")->with(compact('read_districts','read_PtClinic'));
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

        $save_PtClinic=PtClinic::find($id);
        if (!empty($request->name)) {
            # code...
            $save_PtClinic->name=$request->name;
        }

        if (!empty($request->number)) {
            # code...
            $save_PtClinic->number=$request->number;
        }

        if (!empty($request->description)) {
            # code...
             $save_PtClinic->description=$request->description;
        }
        if (!empty($request->district_id)) {
            # code...
              $save_PtClinic->district_id=$request->district_id;
        }            
       
      
        try {
            $save_PtClinic->save();
            $status=$request->name." has been Updated successfully.";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route('pt_clinic.index')->with(compact('status'));
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
            PtClinic::destroy($id);
             $status="Deleted successfully.";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route('pt_clinic.index')->with(compact('status'));
    }
}
