<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Appointment extends Model
{
    //
    public function familysuportgroup($value='')
    {
    	# code...
    	return $this->belongsTo("App\FamilySuportGroup","family_suport_group_id");
    }

    public function apointmentrecord($value='')
    {
    	# code...
    	return $this->hasMany("App\ApointmentRecord");
    }
}
