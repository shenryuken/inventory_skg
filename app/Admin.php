<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Notifications\AdminResetPasswordNotification;

use App\Models\Role;

class Admin extends Authenticatable
{
    use Notifiable;

    protected $guard = 'admin';

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

    public function sendPasswordResetNotification($token)
    {
        $this->notify(new AdminResetPasswordNotification($token));
    }

    public function profile()
    {
        return $this->morphOne('App\Models\Profile', 'profileable');
    }

    //==========================================================
    // ACL
    //==========================================================
    public function roles()
    {
        return $this->belongsToMany('App\Models\Role');
    }

    public function assignRole($role)
    {
        if (is_string($role)) {
            $role = Role::where('name', $role)->first();
        }
 
        return $this->roles()->attach($role);
    }
     
    public function revokeRole($role)
    {
        if (is_string($role)) {
            $role = Role::where('name', $role)->first();
        }
 
        return $this->roles()->detach($role);
    }

    public function hasRole($name)
    {
        foreach($this->roles as $role)
        {
            if ($role->name === $name) return true;
        }
         
        return false;
    }

    public function address()
    {
        return $this->morphMany('App\Models\Address', 'applicable');
    }

    //==========================================================
    // END ACL
    //==========================================================

    public function pointTransfers()
    {
        return $this->morphMany('App\Models\PointTransfer', 'point_transferable');
    }
}
