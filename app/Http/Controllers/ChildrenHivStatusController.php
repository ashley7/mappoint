<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ChildrenHivStatus;
use App\FalimlySuportGroupRegister;
class ChildrenHivStatusController extends Controller
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
        $save_ChildrenHivStatus=new ChildrenHivStatus();
        $save_ChildrenHivStatus->sName=$request->sName;
        $save_ChildrenHivStatus->fName=$request->fName;
        $save_ChildrenHivStatus->date_tested=str_replace("/", "-", $request->date_tested);
        $date_tested=explode("/",$request->date_tested);
        $save_ChildrenHivStatus->month_tested=$date_tested[0];
        $save_ChildrenHivStatus->year_tested=$date_tested[2];
        $save_ChildrenHivStatus->test_results=$request->test_results;
        $read_FalimlySuportGroupRegister=FalimlySuportGroupRegister::all()->where('hiv_care_art_card_id',$request->hiv_care_art_card_id)->last();
        if (json_encode($read_FalimlySuportGroupRegister)!="null") {
            # code...
            $save_ChildrenHivStatus->falimly_suport_group_register_id=$read_FalimlySuportGroupRegister->id;
            try {
                $save_ChildrenHivStatus->save();
                echo "Saved";
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
        }
        else{
            echo "No member found";
        }





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
