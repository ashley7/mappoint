<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FamilySuportGroup;
use App\FalimlySuportGroupRegister;

class FamilySuportGroupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_FamilySuportGroup=FamilySuportGroup::all();
        return view("family_suport_gruop.fsg")->with(compact('read_FamilySuportGroup'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view("family_suport_gruop.create_fsg");
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
        $save_FamilySuportGroup=new FamilySuportGroup();
        $save_FamilySuportGroup->name=$request->name;
        $save_FamilySuportGroup->description=$request->description;
        try {
            $save_FamilySuportGroup->save();
            $status="Family Suport Group created successifully";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route('family_suport_group.index')->with(compact('status'));

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
        $read_members=FalimlySuportGroupRegister::all()->where('family_suport_group_id',$id);
        return view("family_suport_gruop.fsg_register")->with(compact('read_members'));
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
        $read_FamilySuportGroup=FamilySuportGroup::find($id);
        return view("family_suport_gruop.edit_fsg")->with(compact('read_FamilySuportGroup'));


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
        $save_FamilySuportGroup=FamilySuportGroup::find($id);
        if (!empty($request->name)) {
            # code...
            $save_FamilySuportGroup->name=$request->name;
        }

        if (!empty($request->description)) {
            $save_FamilySuportGroup->description=$request->description;
        }

        try {
            $save_FamilySuportGroup->save();
            $status="Family Suport Group Updated successifully";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route('family_suport_group.index')->with(compact('status'));
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
            FamilySuportGroup::destroy($id);

            $status="Deleted successifully";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route('family_suport_group.index')->with(compact('status'));
    }
}
