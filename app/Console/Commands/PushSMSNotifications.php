<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Appointment;
use App\Communication;
use App\FalimlySuportGroupRegister;

class PushSMSNotifications extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'sms:push';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send SMS appoitments notifications to HIV patients.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //
        $save_Communication=new Communication();
        $read_Appointment=Appointment::select('id')->where('appointment_status',1)->get();

        foreach ($read_Appointment as $appointment_value) {
           
            $read_Appointment=Appointment::find($appointment_value->id);
            $read_FalimlySuportGroupRegister=FalimlySuportGroupRegister::select('hiv_care_art_card_id')->where('family_suport_group_id',$read_Appointment->family_suport_group_id)->get();
            if ($read_Appointment->appointment_status=="1") {           
                foreach ($read_FalimlySuportGroupRegister as $fsg_member) {
                    $phone_number=$fsg_member->hivcareartcard->phone_number;
                    $phone_owner_name=$fsg_member->hivcareartcard->phone_owner_name;             
                    $PatientNumber=$fsg_member->hivcareartcard->PatientNumber;  

                    $sms="Dear ".$phone_owner_name." No. ".$PatientNumber.", Your are reminded to come to the health center on ".$read_Appointment->date_to_return." at ".$read_Appointment->time_to_return;

                    
                    // sending the SMS
                    // Check if user recieved this message.
                    if (Communication::where('appointment_id',$read_Appointment->id)->where('hiv_care_art_card_id',$fsg_member->hivcareartcard->id)->where('phonenumber',$fsg_member->hivcareartcard->phone_number)->count()==0) {
                        # code...
                            $save_Communication->pushBulk_SMS($phone_number,$sms,$fsg_member->hivcareartcard->id,$read_Appointment->id);
                        echo "It ran";
                        
                    }
                    else{

                        echo "It not ran";
                        
                    }
                    
                }

               
            }
        }

        $save_Communication->push_Email("M-Appoint","Cron Jobs excecuted Successfully","ashley7520charles@gmail.com");

    }
}
