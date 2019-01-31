<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HivCareArtCartFamilyMember extends Model
{
    //
    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->belongsTo("App\HivCareArtCard");
    }
}
