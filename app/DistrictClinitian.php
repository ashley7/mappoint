<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DistrictClinitian extends Model
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
