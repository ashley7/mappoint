<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FalimlySuportGroupRegister;
use App\FsgService;
use App\Appointment;
use App\FamilySupportGroupRegisterFollowup;

class FamilySupportGroupRegisterFollowupController extends Controller
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
        $medical_services_accessed=array();
        $save_FamilySupportGroupRegisterFollowup=new FamilySupportGroupRegisterFollowup();
        $save_FamilySupportGroupRegisterFollowup->fsg_number=$request->fsg_number;
        $save_FamilySupportGroupRegisterFollowup->appoint_date=$request->appoint_date;
        $save_FamilySupportGroupRegisterFollowup->visit_date=$request->visit_date;
        $save_FamilySupportGroupRegisterFollowup->hiv_status=$request->hiv_status;
        $save_FamilySupportGroupRegisterFollowup->coments=$request->coments;

        $medical_services_accessed[]=$request->medical_services_accessed;    

        if (!empty($request->medical_services_accessed_spec)) {
            # code...
            array_push($medical_services_accessed, $request->medical_services_accessed_spec);
        }
        $save_FamilySupportGroupRegisterFollowup->medical_services_accessed=json_encode($medical_services_accessed);
        $community_services_accessed[]=$request->community_services_accessed;

        if (!empty($request->community_services_accessed_spec)) {
            # code...
            array_push($community_services_accessed, $request->community_services_accessed_spec);
        }
        $save_FamilySupportGroupRegisterFollowup->community_services_accessed=json_encode($community_services_accessed);

        $family_planning_methods[]=$request->family_planning_method;

        if (!empty($request->family_planning_method_spec)) {
            # code...
            array_push($family_planning_methods, $request->family_planning_method_spec);
        }
        $save_FamilySupportGroupRegisterFollowup->family_planning_methods=json_encode($family_planning_methods);

        $save_FamilySupportGroupRegisterFollowup->fsgr_id=$request->falimly_suport_group_register_id;

        try {
            $save_FamilySupportGroupRegisterFollowup->save();
            $status="Follow-up record created successfully.";
        } catch (\Exception $e) {
            $status= $e->getMessage();
          
        }

        return redirect()->route('fsg_follow_up.show',$request->falimly_suport_group_register_id)->with(compact('status'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $falimlysuportgroupregister=FalimlySuportGroupRegister::find($id);
        $read_FamilySupportGroupRegisterFollowup=FamilySupportGroupRegisterFollowup::where('fsgr_id',$id)->get();


        return view("family_suport_gruop.follow_up")->with(compact('falimlysuportgroupregister','read_FamilySupportGroupRegisterFollowup'));
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
        $appointments=array();
        $falimlysuportgroupregister=FalimlySuportGroupRegister::find($id);
        foreach ($falimlysuportgroupregister->familysuportgroup->appointment as $appnt_value) {
          $appointments[]=Appointment::find($appnt_value->id);
        }
        $read_FsgService=FsgService::all();
        return view("family_suport_gruop.create_follow_up")->with(compact('appointments','falimlysuportgroupregister','read_FsgService'));


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
