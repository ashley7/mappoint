<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FalimlySuportGroupRegister;
use App\HivCareArtCard;
use App\Appointment;
use App\ApointmentRecord;
use App\CareType;
use App\AppointmentRecordCareType;
use App\HivCardRrecords;

class ApointmentRecordController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $appointment_status = array();
        $read_clients=HivCareArtCard::select('PatientNumber','id','phone_number','surName','firstName')->get();
      

        return view("appointments.next_appointments")->with(['clients'=>$read_clients]);

      
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
       
        $save_ApointmentRecord=new ApointmentRecord();
        $save_ApointmentRecord->hiv_care_art_card_id=$request->hiv_care_art_card_id;
        $save_ApointmentRecord->appointment_id=$request->appointment_id;
        $save_ApointmentRecord->notes=$request->notes;
        $save_ApointmentRecord->number_of_visits=$request->number_of_visits;
        $save_ApointmentRecord->attendance_status=$request->attendance_status;
        $save_ApointmentRecord->follow_up_status=$request->follow_up_status;
        $save_ApointmentRecord->method_of_follow_up=$request->methodoffollowup;
        $save_ApointmentRecord->reschedauled_date=str_replace("/", "-", $request->reschedauleddate);
        $save_ApointmentRecord->reschedauled_time=$request->reschedauledtime;
        try {
            $save_ApointmentRecord->save();
            $status="Appointment records made successifully.";
        } catch (\Exception $e) {
            
        }

        try {

            if (!empty($request->caretype_id)) {
                # code...
                foreach ($request->caretype_id as $value_ofcaretypes) {
                # code...
                    $save_AppointmentRecordCareType=new AppointmentRecordCareType();
                    $save_AppointmentRecordCareType->apointment_record_id=$save_ApointmentRecord->id;
                    $save_AppointmentRecordCareType->care_type_id=$value_ofcaretypes;
                try {
                    $save_AppointmentRecordCareType->save();
                } catch (\Exception $e) {
                    
                }
            }
         }
     } catch (\Exception $e) {
        $status=$e->getMessage();
}
        // $readFalimlySuportGroupRegister=FalimlySuportGroupRegister::all()->where('hiv_care_art_card_id',$request->hiv_care_art_card_id)->last();   
        // $id=$request->appointment_id."_".$readFalimlySuportGroupRegister->id;
        return redirect()->back()->with(compact('status'));
        // return redirect()->route('appointment_records.edit',$request->id)->with(compact('status'));
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
        $data=explode("_", $id);
        $read_Appointment=Appointment::find($data[0]);
        $read_HivCareArtCard=HivCareArtCard::find($data[1]);
        $read_CareType=CareType::all();
        $id=$data[2]."_".$data[3];
        return view("appointments.create_appointment_record")->with(compact('read_Appointment','read_HivCareArtCard','id','read_CareType'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $data=explode("_", $id);
        $read_Appointment=Appointment::find($data[1]);
        $read_members=FalimlySuportGroupRegister::all()->where('family_suport_group_id',$data[0]);

        return view("appointments.appointemnt_register")->with(compact('read_members','read_Appointment','id'));
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
        $save_ApointmentRecord=ApointmentRecord::find($id);
         if (!empty($request->notes)) {
            # code...
            $save_ApointmentRecord->notes=$request->notes;
        }
        
        $save_ApointmentRecord->number_of_visits=$request->number_of_visits;
        $save_ApointmentRecord->attendance_status=$request->attendance_status;
        $save_ApointmentRecord->follow_up_status=$request->follow_up_status;
        $save_ApointmentRecord->method_of_follow_up=$request->methodoffollowup;
        $save_ApointmentRecord->reschedauled_date=str_replace("/", "-", $request->reschedauleddate);
        $save_ApointmentRecord->reschedauled_time=$request->reschedauledtime;
        try {
            $save_ApointmentRecord->save();
            $status="Appointment records made successifully.";
        } catch (\Exception $e) {
            
        }

        try {
         

            if (!empty($request->caretype_id)) {
                # code...
                try {
                     AppointmentRecordCareType::where('apointment_record_id',$save_ApointmentRecord->id)->delete();
                } catch (\Exception $e) {
                    // echo $e->getMessage();
                    // exit();
                }
                
                foreach ($request->caretype_id as $value_ofcaretypes) {
                    # code...
                    $save_AppointmentRecordCareType=new AppointmentRecordCareType();
                    $save_AppointmentRecordCareType->apointment_record_id=$save_ApointmentRecord->id;
                    $save_AppointmentRecordCareType->care_type_id=$value_ofcaretypes;
                    try {
                        $save_AppointmentRecordCareType->save();
                    } catch (\Exception $e) {
                        
                    }
                }
            }        
            
        } catch (\Exception $e) {
            
        }
        
        return redirect()->back()->with(compact('status'));
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
            ApointmentRecord::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->back();
    }
}
