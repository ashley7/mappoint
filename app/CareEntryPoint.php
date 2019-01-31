<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CareEntryPoint extends Model
{
    //
    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->hasMany("App\HivCareArtCard","care_entry_point_id");
    }
}
