<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CareType;

class CareTypesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_CareType=CareType::all();
        return view("appointments.caretypes")->with(compact('read_CareType'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view("appointments.create_caretypes");
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
        $save_CareType=new CareType();
        $save_CareType->name=$request->name;
        $save_CareType->description=$request->description;
        try {
            $save_CareType->save();
        } catch (\Exception $e) {
            
        }
        return redirect()->route("care_types.index");

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
        $save_CareType=CareType::find($id);
        return view("appointments.edit_caretypes")->with(compact('save_CareType'));


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
        $save_CareType=CareType::find($id);
        $save_CareType->name=$request->name;
        $save_CareType->description=$request->description;
        try {
            $save_CareType->save();
        } catch (\Exception $e) {
            
        }
        return redirect()->route("care_types.index");
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
            CareType::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->route("care_types.index");
    }
}
