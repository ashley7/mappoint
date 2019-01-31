<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Appointment;
use App\FamilySuportGroup;
use App\ApointmentRecord;
use App\HivCareArtCard;
use App\Communication;
use App\LinkFacilitator;
use App\FamilySuportGroupLinkFacilitator;

class AppointmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_Appointment=Appointment::all();
        return view("appointments.appointments")->with(compact('read_Appointment'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $read_FamilySuportGroup=FamilySuportGroup::all();
        return view("appointments.create_appointment")->with(compact('read_FamilySuportGroup'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,["date_to_return"=>"required","time_to_return"=>"required","group_id"=>"required"]);
        $save_Appointment=new Appointment();
        $save_Appointment->date_to_return=str_replace("/", "-", $request->date_to_return);
        $save_Appointment->time_to_return=$request->time_to_return;
        $save_Appointment->appointment_status=1;//not yet
        $save_Appointment->family_suport_group_id=$request->group_id;
        try {
            $phone_number="";
            $save_Appointment->save();
            $status="Recorded successifully";

            $save_Communication=new Communication();

                $link_fac=FamilySuportGroupLinkFacilitator::all()->where('fs_group_id',$save_Appointment->familysuportgroup->id);

                foreach ($link_fac as $value) {
                    # code...
                    try {
                        $link_facili=LinkFacilitator::find($value->lf_id);
                        $sms="An Appointment has been made for you FSG on ".$save_Appointment->date_to_return." at ".$save_Appointment->time_to_return;
                        $save_Communication->pushBulk_SMS($link_facili->user->phone_number,$sms,NULL,NULL); 
                    } catch (\Exception $e) {
                        
                    }
                }
               
                 } catch (\Exception $e) {
            $status=$e->getMessage();
          
        }
        return redirect()->route('appointments.index')->with(compact('status'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=explode("_", $id);
        $read_ApointmentRecord=ApointmentRecord::all()->where('hiv_care_art_card_id',$data[1]);
        $readHivCareArtCard=HivCareArtCard::find($data[1]);     
        $title="Appointment records for ".$readHivCareArtCard->PatientNumber." (".$readHivCareArtCard->surName." ".$readHivCareArtCard->firstName.")";
        return view("appointments.appointment_records")->with(compact('read_ApointmentRecord','title','id'));
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
        $read_Appointment=Appointment::find($id);
        $read_FamilySuportGroup=FamilySuportGroup::all();
        return view("appointments.edit_appointment")->with(compact('read_Appointment','read_FamilySuportGroup'));

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
        $save_Appointment=Appointment::find($id);
        if (!empty($request->date_to_return)) {
            # code...
            $save_Appointment->date_to_return=str_replace("/", "-", $request->date_to_return);
        }

        if (!empty($request->time_to_return)) {
            # code...
            $save_Appointment->time_to_return=$request->time_to_return;
        }
        if (!empty($request->group_id)) {
            # code...
            $save_Appointment->family_suport_group_id=$request->group_id;
        }
     
        try {
            $save_Appointment->save();
            $status="Updated successifully";
        } catch (\Exception $e) {
            $status=$e->getMessage();
        }
        return redirect()->route('appointments.index')->with(compact('status'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            Appointment::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->route('appointments.index')->with(compact('status'));
    }
}
