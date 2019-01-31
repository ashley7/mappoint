<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FalimlySuportGroupRegister extends Model
{
    //
    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->belongsTo("App\HivCareArtCard","hiv_care_art_card_id");
    }

    public function familysuportgroup($value='')
    {
    	# code...
    	return $this->belongsTo("App\FamilySuportGroup","family_suport_group_id");
    }

    public function fsgservice($value='')
    {
    	# code...
    	return $this->belongsTo("App\FsgService","fsg_service_id");
    }

    public function childrenHivstatus($value='')
    {
        # code...
        return $this->hasMany("App\ChildrenHivStatus");
    }

    public function familysupportgroupregisterfollowup($value='')
    {
        # code...
        return $this->hasMany("App\FamilySupportGroupRegisterFollowup");
    }
}
