<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Attendance;
use App\Appointment;
use App\FamilySuportGroup;
use App\ArtTreatmentInteraption;
use App\FalimlySuportGroupRegister;
use App\HivCareArtCard;
use App\Communication;

class AttendanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_Appointment=Appointment::all()->where('appointment_status',1);
        return view('attendance.attandace_list')->with(compact('read_Appointment'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $read_Appointment=Appointment::all()->where('appointment_status',1);
        return view("attendance.appointments")->with(compact('read_Appointment'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
  
        $this->validate($request,["member"=>"required"]);
        foreach ($request->member as $hiv_care_art_card_id) {
            // check the status chosen
            if (!empty($request->present)) {
                foreach ($request->present as $present_value) {
                    $present_data=explode("_", $present_value);
                    if ($present_data[1]==$hiv_care_art_card_id) {
                        # code...
                        $save_Attendance=new Attendance();                     
                        $save_Attendance->status=$present_data[0];
                        $save_Attendance->appointment_id=$request->appointment;
                        $save_Attendance->hiv_care_art_card_id=$hiv_care_art_card_id;
                        // check if the person has record for todat
                        if (Attendance::all()->where('appointment_id',$request->appointment)->where('hiv_care_art_card_id',$hiv_care_art_card_id)->count()==0) {
                            # code...
                            try {

                                $person_last=Attendance::all()->where('hiv_care_art_card_id',$hiv_care_art_card_id)->last();

                                if (json_encode($person_last)!="null") {
                                    # code...
                                    if ($person_last->status==0 && $present_data[0]==0) {//he is absent now, and last time he was absent
                                        # setn him has lost
                                        $save_ArtTreatmentInteraption=new ArtTreatmentInteraption();
                                        // if last record is Lost again, make hime Stoped
                                        // $ArtTreatmentInteraption_status=ArtTreatmentInteraption::all()->where('hiv_care_art_card_id',$hiv_care_art_card_id)->last();
                                        // if (json_encode($ArtTreatmentInteraption_status)!="null") {
                                            # code...
                                            // if ($ArtTreatmentInteraption_status->circle=="Lost") {
                                                # code...

                                                $save_ArtTreatmentInteraption->circle="Missed Drug Pick-up";

                                                $hivCareArtCard=HivCareArtCard::find($hiv_care_art_card_id);
                                                $sms="Patient No. ".$hivCareArtCard->PatientNumber." :".$hivCareArtCard->surName." ".$hivCareArtCard->firstName." has missed two consecative appointments. please check on this client.";

                                                $phone_number="+256782505788";

                                                $save_Communication=new Communication();
                                                try {
                                                   $save_Communication->pushBulk_SMS($phone_number,$sms,NULL,NULL); 
                                                
                                                } catch (\Exception $e) {
                                                     $status=$e->getMessage();
                                                }
                                            // }
                                            // elseif(ArtTreatmentInteraption::all()->where('hiv_care_art_card_id',$hiv_care_art_card_id)->count()==0){
                                            //      $save_ArtTreatmentInteraption->circle="Lost";
                                            // }                                        

                                        // }
                                       
                                        $save_ArtTreatmentInteraption->date_accured=date("m-d-Y");
                                        $save_ArtTreatmentInteraption->month_accured=date("m");
                                        $save_ArtTreatmentInteraption->year_accured=date("Y");
                                        $save_ArtTreatmentInteraption->reason="Missed two consecutive appointments";
                                        $save_ArtTreatmentInteraption->hiv_care_art_card_id=$hiv_care_art_card_id;
                                        try {
                                            $save_ArtTreatmentInteraption->save();
                                        } catch (\Exception $e) {
                                            echo $e->getMessage();
                                            // exit();
                                            
                                        }

                                    }

                                }

                                $save_Attendance->save();  
                            } catch (\Exception $e) {
                                 echo $e->getMessage();
                            }
                            
                        }

                        elseif (Attendance::all()->where('appointment_id',$request->appointment)->where('hiv_care_art_card_id',$hiv_care_art_card_id)->count()==1) {
                            $person=Attendance::all()->where('appointment_id',$request->appointment)->where('hiv_care_art_card_id',$hiv_care_art_card_id)->last();
                            $person->status=$present_data[0];
                            try {
                                $person->save(); 
                            } catch (\Exception $e) {
                                echo $e->getMessage();
                            }                           
                        }     
                        $status="Successfully recorded";
                    }
                }
            }
        }

        return redirect()->route('attandance.index')->with(compact('status'));
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
        $data=explode("_", $id);
        try {
         
        $read_FamilySuportGroup=FamilySuportGroup::find($data[0]);
        $read_Appointment=Appointment::find($data[1]);
        $read_members=FalimlySuportGroupRegister::select('hiv_care_art_cards.id as hiv_care_art_card_id','hiv_care_art_cards.PatientNumber','hiv_care_art_cards.surName','hiv_care_art_cards.firstName','hiv_care_art_cards.phone_number')->where('family_suport_group_id',$data[0])->join('hiv_care_art_cards','falimly_suport_group_registers.hiv_care_art_card_id','hiv_care_art_cards.id')->get();

        return view('attendance.create_record')->with(compact('read_members','id','read_Appointment','read_FamilySuportGroup'));

        } catch (\Exception $e) {
            return redirect()->back();
        }
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
