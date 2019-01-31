<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LinkFacilitator extends Model
{
    //
    public function user($value='')
    {
    	# code...
    	return $this->belongsTo('App\User');
    }

    public function familysuportgrouplinkfacilitator($value='')
    {
    	# code...
    	return $this->hasMany('App\FamilySuportGroupLinkFacilitator','lf_id');
    }
}
