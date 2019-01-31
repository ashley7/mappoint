<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChildrenHivStatus extends Model
{
    //
    public function falimlysuportgroupregister($value='')
    {
    	# code...
    	return $this->belongsTo("App\FalimlySuportGroupRegister");
    }
}
