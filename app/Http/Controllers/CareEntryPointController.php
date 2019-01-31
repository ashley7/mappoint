<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CareEntryPoint;

class CareEntryPointController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_care_entry_point=CareEntryPoint::all();
        return view("care_entry_point.careentry_point")->with(compact('read_care_entry_point'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view("care_entry_point.create_careentry_point");
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
        $this->validate($request,["name"=>"required"]);
        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name=$request->name;
        $save_CareEntryPoint->description=$request->description;
        try {
            $save_CareEntryPoint->save();
            $status=$request->name." has been created successfully";
        } catch (\Exception $e) {
            $status=$e->getMessage(); 
        }

        return redirect()->route('care_entry_point.index')->with(compact('status'));
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
        $read_CareEntryPoint=CareEntryPoint::find($id);
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
        $read_CareEntryPoint=CareEntryPoint::find($id);
        return view("care_entry_point.edit_careentry_point")->with(compact('read_CareEntryPoint'));
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
        $save_CareEntryPoint=CareEntryPoint::find($id);
        if (!empty($request->name)) {
            # code...
             $save_CareEntryPoint->name=$request->name;
        }

        if (!empty($request->description)) {
            # code...
            $save_CareEntryPoint->description=$request->description;
        }
       
        
        try {
            $save_CareEntryPoint->save();
            $status=$request->name." has been Updated successfully";
        } catch (\Exception $e) {
            $status=$e->getMessage(); 
        }

        return redirect()->route('care_entry_point.index')->with(compact('status'));
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
            CareEntryPoint::destroy($id);
            $status="Deleted successfully";
        } catch (\Exception $e) {
            $status=$e->getMessage(); 
        }

        return redirect()->route('care_entry_point.index')->with(compact('status'));
    }
}
