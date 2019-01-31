<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FsgService extends Model
{
    //
    public function falimlysuportgroupregister($value='')
    {
    	# code...
    	return $this->hasMany("App\FalimlySuportGroupRegister");
    }
}
