<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ApointmentRecord extends Model
{
    //
    public function appointment($value='')
    {
    	# code...
    	return $this->belongsTo("App\Appointment");
    }

    public function appointmentrecordcaretype($value='')
    {
    	# code...
    	return $this->hasMany("App\AppointmentRecordCareType");
    }
}
