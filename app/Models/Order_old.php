<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function invoice()
    {
    	return $this->belongsTo('App\Models\Invoice');
    }

    public function orderItems()
    {
    	return $this->hasMany('App\Models\OrderItem');
    }

    public function shipment()
    {
        return $this->hasOne('App\Models\Shipment');
    }
}
