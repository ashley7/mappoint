<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Parish;

class ParishController extends Controller
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
        $this->validate($request,["name"=>"required","sub_county_id"=>"required"]);
        $save_Parish=new Parish();
        $save_Parish->name=$request->name;
        $save_Parish->sub_county_id=$request->sub_county_id;
        try {
            $save_Parish->save();
            $status=$save_Parish->name." Saved successfully.";
        } catch (\Exception $e) {
            $status=$e->getMessage();            
        }
        return redirect()->route('district.create')->with(compact('status'));
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
        $save_Parish=Parish::find($id);
        $save_Parish->name=$request->name;        
        try {
            $save_Parish->save();
            $status=$save_Parish->name." Saved successfully.";
        } catch (\Exception $e) {
            $status=$e->getMessage();            
        }

        echo $status;
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
            Parish::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->route('district.index')->with(compact('status'));
    }
}
