<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FamilySuportGroupLinkFacilitator extends Model
{
    //
    public function linkfacilitator()
    {
    	# code...
    	return $this->belongsTo('App\LinkFacilitator');
    }

    public function familysuportgroup($value='')
    {
    	# code...
    	return $this->belongsTo("App\FamilySuportGroup");
    }
}
