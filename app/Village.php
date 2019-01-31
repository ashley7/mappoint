<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Village extends Model
{
    //
    public function parish($value='')
    {
    	# code...
    	return $this->belongsTo('App\Parish');
    }
    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->hasMany('App\HivCareArtCard');
    }

    public function hivexposedinfant($value='')
    {
        # code...
        return $this->hasMany('App\HivExposedInfant');
    }
}
