<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PtClinic extends Model
{
    //
    public function district($value='')
    {
    	# code...
    	return $this->belongsTo('App\District');
    }

    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->hasMany("App\HivCareArtCard");
    }
}
