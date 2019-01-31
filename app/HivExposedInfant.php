<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HivExposedInfant extends Model
{
    //

    public function hivexposedinfantvisits($value='')
    {
    	# code...
    	return $this->hasMany("App\HivExposedInfantVisits");
    }

    public function village($value='')
    {
    	# code...
    	return $this->belongsTo('App\Village');
    }

    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->belongsTo('App\HivCareArtCard','hiv_care_art_card_id');
    }

    public function hivexposedinfanttesinginformation($value='')
    {
    	# code...
    	return $this->hasMany('App\HivExposedInfantTesingInformation','hivei_id');
    }

    public function hivexposedinfantfollowup($value='')
    {
        # code...
        return $this->hasMany('App\HivExposedInfantFollowup','hiv_exposed_infant_id');
    }
}
