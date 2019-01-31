<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AppointmentRecordCareType extends Model
{
    //
    public function apointmentrecord($value='')
    {
    	# code...
    	return $this->belongsTo("App\ApointmentRecord");
    }

    public function caretype($value='')
    {
    	# code...
    	return $this->belongsTo("App\CareType","care_type_id");
    }
}
