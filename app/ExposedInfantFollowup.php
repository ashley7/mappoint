<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ExposedInfantFollowup extends Model
{
    //
    public function hivcareartcard($value='')
    {
    	return $this->belongsTo('App\HivCareArtCard');
    }
}
