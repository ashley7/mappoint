<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ArtCardRegimen extends Model
{
    //
    public function hivcareartcard($value='')
    {
    	# code...
    	return $this->belongsTo("App\HivCareArtCard");
    }
}
