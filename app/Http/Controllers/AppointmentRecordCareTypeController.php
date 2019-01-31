<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ApointmentRecord;
use App\Appointment;
use App\CareType;

class AppointmentRecordCareTypeController extends Controller
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
        $editingApointment=Appointment::find($id);
       // return $editingApointment;
        if ($editingApointment->appointment_status=="1") {
            # code...
            $editingApointment->appointment_status=2;

            $editingApointment->save();

            return redirect()->back();
        }
        if ($editingApointment->appointment_status=="2") {
            $editingApointment->appointment_status=1;
            
            $editingApointment->save();

            return redirect()->back();
        }

       
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // $data=explode("_", $id);
        $save_ApointmentRecord=ApointmentRecord::find($id);
        $read_CareType=CareType::all();
        return view("appointments.edit_appointmentrecords")->with(compact('save_ApointmentRecord','read_CareType','id'));
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
