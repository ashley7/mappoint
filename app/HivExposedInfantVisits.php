<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HivExposedInfantVisits extends Model
{
    //
    public function hivexposedinfant($value='')
    {
    	# code...
    	return $this->belongsTo("App\HivExposedInfant");
    }
}
