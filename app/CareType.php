<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CareType extends Model
{
    //
    public function appointmentrecordcaretype($value='')
    {
    	# code...
    	return $this->hasMany("App\AppointmentRecordCareType");
    }
}
