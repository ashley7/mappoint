<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    //
    public function ptclinic($value='')
    {
    	# code...
    	return $this->hasMany('App\PtClinic');
    }

    public function districtclinitian($value='')
    {
    	# code...
    	return $this->hasMany('App\DistrictClinitian');
    }

    public function hivcareartcard($value='')
    {
        # code...
        return $this->hasMany("App\HivCareArtCard");
    }

    public function sub_county($value='')
    {
        # code...
        return $this->hasMany('App\Sub_county');
    }
}
