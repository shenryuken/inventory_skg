<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderHdr extends Model
{
    //
    protected $table = 'orders_hdr';

    // public function OrderItems()
    // {
    // 	return $this->hasMany('App\Models\OrderItem', 'order_no', 'order_no');
    // }

    public function orderItems()
    {
        return $this->hasMany('App\Models\OrderItem', 'order_no', 'order_no');
    }


    public function DeliveryType()
    {
        return $this->hasOne('App\Models\DeliveryType','id','delivery_type');
    }

    public function user()
    {
    	return $this->hasOne('App\User','id','agent_id');
    }

    public function globalstatus()
    {
    	return $this->hasOne('App\Models\GlobalStatus','status','status');
    }

    public function billing_address()
    {
    	return $this->hasOne('App\Models\Address','id','bill_address');
    }

    public function shipping_address()
    {
    	return $this->hasOne('App\Models\Address','id','ship_address');
    }

    // public function invoice()
    // {
    //     return $this->hasOne('App\Models\Invoice','invoice_no','invoice_no');
    // }

    public function invoice()
    {
        return $this->hasOne('App\Models\Invoice');
    }
}