<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Zizaco\Entrust\EntrustRole;
class Role extends EntrustRole
{
    //This is a many to may Relation

    public function users()
    {
        return $this->belongsToMany('App\User');
    }
}
