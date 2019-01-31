<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FamilySuportGroup extends Model
{
    //
    public function linkfacilitator($value='')
    {
    	# code...
    	return $this->belongsTo('App\LinkFacilitator','fs_group_id','lf_id');
    }

    public function familysuportgroupLinkfacilitator($value='')
    {
    	# code...
    	return $this->hasMany("App\FamilySuportGroupLinkFacilitator");
    }

    public function falimlysuportgroupregister($value='')
    {
        # code...
        return $this->hasMany("App\FalimlySuportGroupRegister");
    }

    public function appointment($value='')
    {
        # code...
        return $this->hasMany("App\Appointment");
    }
}
