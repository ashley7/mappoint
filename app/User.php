<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Zizaco\Entrust\Traits\EntrustUserTrait;

class User extends Authenticatable
{
    use Notifiable;
    use EntrustUserTrait;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    // This is a many to may Relation

    public function roles()
    {
        return $this->belongsToMany('App\Role');
    }

   public function shop($value='')
   {
       # code...
    return $this->hasMany('App\Shop');
   }

    public function clients($value='')
    {
        # code...
        return $this->hasMany('App\Clent');
    }

    public function linkfacilitator($value='')
    {
        # code...
        return $this->hasOne('App\LinkFacilitator');
    }

    public function hivcardrrecords($value='')
    {
        # code...
        return $this->hasMany("App\HivCardRrecords");
    }
}
