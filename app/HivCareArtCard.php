<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HivCareArtCard extends Model
{

    public function Hivexposedinfant($value='')
    {
        # code...
        return $this->hasOne('App\HivExposedInfant');
    }
    //
    public function village($value='')
    {
    	# code...
    	return $this->belongsTo("App\Village");
    }
    public function ptclinic($value='')
    {
    	# code...
    	return $this->belongsTo("App\PtClinic","pt_clinic_id");
    }

    public function careentrypoint($value='')
    {
    	# code...
    	return $this->belongsTo("App\CareEntryPoint","care_entry_point_id");
    }

    public function districtclinitian($value='')
    {
        # code...
        return $this->belongsTo("App\DistrictClinitian","district_clinitian_id");
    }
    public function hivcareartcartfamilymember($value='')
    {
        # code...
        return $this->hasMany("App\HivCareArtCartFamilyMember");
    }

    public function arttreatmentinteraption($value='')
    {
        # code...
        return $this->hasMany("App\ArtTreatmentInteraption");
    }

    public function artcardregimen($value='')
    {
        # code...
        return $this->hasMany("App\ArtCardRegimen");
    }

    public function priorart($value='')
    {
        # code...
        return $this->hasMany("App\PriorART");
    }

    public function hivcardrrecords($value='')
    {
        # code...
        return $this->hasMany("App\HivCardRrecords");
    }

    public function falimlysuportgroupregister($value='')
    {
        # code...
        return $this->hasOne("App\FalimlySuportGroupRegister");
    }

    public function communication($value='')
    {
        # code...
        return $this->hasMany("App\Communication");
    }

    public function exposedinfantfollowup($value='')
    {
        # code...
        return $this->hasMany("App\ExposedInfantFollowup","HivCareArtCard_id");
    }

   
}
