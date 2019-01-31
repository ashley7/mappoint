<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\District;
use App\Village;

class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_Village=Village::all();
        return view("district.district_list")->with(compact('read_Village'));

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
        return view("district.create_district")->with(compact('read_districts'));
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
        $save_district=new District();
        $save_district->name=$request->name;
        $save_district->description=$request->description;
        try {
            $save_district->save();
            $status=$request->name." has been created successfully";
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
         $read_district=District::find($id);
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
        $read_district=District::find($id);
        return view('district.edit_district')->with(compact('read_district'));
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
        $save_district=District::find($id);
        if (!empty($request->name)) {
            # code...
            $save_district->name=$request->name;
        }
        if (!empty($request->description)) {
            # code...
            $save_district->description=$request->description;
        }
        
        try {
            $save_district->save();
            $status=$request->name." has been Updated successfully";
        } catch (\Exception $e) {
             $status=$e->getMessage();
        }
        return redirect()->route('district.create')->with(compact('status'));
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
            District::destroy($id);
             $status="Deleted successfully";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
         return redirect()->route('district.index')->with(compact('status'));
    }
}
