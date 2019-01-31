<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Communication;
use App\HivCareArtCard;
use App\Appointment;
use App\FalimlySuportGroupRegister;
class CommunicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_Communication=Communication::all();
        return view("communication.sms_list")->with(compact('read_Communication'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $read_only_numbers=HivCareArtCard::select('id','PatientNumber','surName','firstName','phone_number')->get();
        return view("communication.create_sms")->with(compact('read_only_numbers'));


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
        $this->validate($request,["patients"=>"required","sms"=>"required"]);
        $message=$request->sms;
        foreach ($request->patients as $value) {
            # code...
            $sick_person=HivCareArtCard::find($value);
            $phone_number=$sick_person->phone_number;

            $save_Communication=new Communication();
            try {
               $save_Communication->pushBulk_SMS($phone_number,$request->sms,$value,NULL); 
               $status="SMS Sent";
            } catch (\Exception $e) {
                 $status=$e->getMessage();
            }
            

        }

        return redirect()->route("communication.index")->with(compact('status'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // read apointment
        // read FSGMs
        // point to Petient and read his data, then start sending SMS
        $read_Appointment=Appointment::find($id);
        $read_FalimlySuportGroupRegister=FalimlySuportGroupRegister::select('hiv_care_art_card_id')->where('family_suport_group_id',$read_Appointment->family_suport_group_id)->get();
        if ($read_Appointment->appointment_status=="1") {           
            foreach ($read_FalimlySuportGroupRegister as $fsg_member) {

                $phone_number=$fsg_member->hivcareartcard->phone_number;
                $phone_owner_name=$fsg_member->hivcareartcard->phone_owner_name;             
                $PatientNumber=$fsg_member->hivcareartcard->PatientNumber;  

                $sms="Dear ".$phone_owner_name." No. ".$PatientNumber.", Your are reminded to come to the health center on ".$read_Appointment->date_to_return." at ".$read_Appointment->time_to_return;

                $save_Communication=new Communication();
                // sending the SMS
                if (Communication::where('appointment_id',$read_Appointment->id)->where('hiv_care_art_card_id',$fsg_member->hivcareartcard->id)->where('phonenumber',$fsg_member->hivcareartcard->phone_number)->count()==0) {
                    $save_Communication->pushBulk_SMS($phone_number,$sms,$fsg_member->hivcareartcard->id,$read_Appointment->id);
                }
            }
        }
       return redirect()->route("communication.index");
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
