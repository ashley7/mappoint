<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FamilySuportGroup;
use App\LinkFacilitator;
use App\FamilySuportGroupLinkFacilitator;

class FamilySuportGroupLinkFacilitatorController extends Controller
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
        $read_FamilySuportGroup=FamilySuportGroup::all();
        $read_LinkFacilitator=LinkFacilitator::all();
        return view("family_suport_gruop.create_fsg_lf")->with(compact('read_FamilySuportGroup','read_LinkFacilitator'));

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
        $this->validate($request,["linkfacilitator"=>"required","fsg"=>"required"]);
        foreach ($request->fsg as $fsg_value) {
            $save_FamilySuportGroupLinkFacilitator=new FamilySuportGroupLinkFacilitator();

            $save_FamilySuportGroupLinkFacilitator->fs_group_id=$fsg_value;
            $save_FamilySuportGroupLinkFacilitator->lf_id=$request->linkfacilitator;
            try {
                $save_FamilySuportGroupLinkFacilitator->save();
            } catch (\Exception $e) {
                
            }
        }

        return redirect()->route('link_facilitator.index');
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
        $read_LinkFacilitator=LinkFacilitator::find($id);
        return view("family_suport_gruop.link_facilitaor_groups")->with(compact('read_LinkFacilitator'));


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
            $data=explode("_", $id);
            FamilySuportGroupLinkFacilitator::where('fs_group_id',$data[0])->where('lf_id',$data[1])->delete();
        } catch (\Exception $e) {
            
        }
        return redirect()->back();
    }
}
