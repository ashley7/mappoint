<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HivExposedInfantFollowup extends Model
{
    //
    public function hivexposedinfant($value='')
    {
    	# code...
    	return $this->belongsTo('App\HivExposedInfant');
    }
}
