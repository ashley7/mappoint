<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sub_county extends Model
{
    //
    public function district($value='')
    {
    	# code...
    	return $this->belongsTo('App\District');
    }

    public function parish($value='')
    {
    	# code...
    	return $this->hasMany('App\Parish');
    }
}
