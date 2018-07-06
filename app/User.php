<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

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

     public function profile()
    {
        return $this->morphOne('App\Models\Profile', 'profileable');
    }

    public function account()
    {
        return $this->hasOne('App\Models\Account');
    }

    public function wallet()
    {
        return $this->hasOne('App\Models\Wallet')->withDefault([
            'retail_profit' => 0,
            'personal_rebate' => 0,
            'direct_sponsor' => 0, 
        ]);
    }

    public function rank()
    {
        return $this->belongsTo('App\Models\Rank');
    }

    public function referral()
    {
        return $this->hasOne('App\Models\Referral');
    }

    public function userPurchases()
    {
        return $this->hasMany('App\Models\UserPurchase');
    }

    public function userSales()
    {
        return $this->hasMany('App\Models\UserSale');
    }

    public function stores()
    {
        return $this->hasMany('App\Models\Store');
    }

    public function active_do()
    {
        return $this->hasOne('App\Models\ActiveDo')->withDefault([
            'do_group_bonus' => 0,
            'cto_value_share' => 0,
        ]);
    }

    public function active_sdo()
    {
        return $this->hasOne('App\Models\ActiveSdo')->withDefault([
            'sdo_group_bonus' => 0,
            'cto_value_share' => 0,
            'sdo_to_sdo_bonus'=> 0
        ]);
    }

    public function userBonus()
    {
        return $this->hasMany('App\Models\UserBonus');
    }
}
