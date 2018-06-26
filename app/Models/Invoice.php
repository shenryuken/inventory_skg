<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function order()
    {
    	return $this->hasOne('App\Models\Order');
    }

    public function payments()
    {
    	return $this->hasMany('App\Models\Payment');
    }
}
