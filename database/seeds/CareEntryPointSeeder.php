<?php

use Illuminate\Database\Seeder;
use App\CareEntryPoint;

class CareEntryPointSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="eMTCT";
        $save_CareEntryPoint->save();

        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="TB";
        $save_CareEntryPoint->save();

        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="Out Patient";
        $save_CareEntryPoint->save();

        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="STI";
        $save_CareEntryPoint->save();

        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="YCC";
        $save_CareEntryPoint->save();

        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="Inpatient";
        $save_CareEntryPoint->save();

        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="SMC";
        $save_CareEntryPoint->save();

        $save_CareEntryPoint=new CareEntryPoint();
        $save_CareEntryPoint->name="Out Reach";
        $save_CareEntryPoint->save();
    }
}