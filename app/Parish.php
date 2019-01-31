<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Parish extends Model
{
    //
    public function sub_county($value='')
    {
    	# code...
    	return $this->belongsTo('App\Sub_county');
    }

    public function village($value='')
    {
    	# code...
    	return $this->hasMany('App\Village');
    }
}
