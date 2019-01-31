<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FamilySupportGroupRegisterFollowup extends Model
{
    //
    public function falimlysuportgroupregister($value='')
    {
    	# code...
    	return $this->belongsTo("App\FalimlySuportGroupRegister");
    }
}
