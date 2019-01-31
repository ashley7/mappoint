<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HivCardRrecords extends Model
{

    public function hivcareartard($value='')
    {
    	# code...
    	return $this->belongsTo("App\HivCareArtCard");
    }

     public function user($value='')
    {
        # code...
        return $this->belongsTo("App\User");
    }
}
