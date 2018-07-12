<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AgentOrderHdr extends Model
{
    //
    protected $table = 'agent_order_hdr';

    public function agentOrderItems()
    {
    	return $this->hasMany('App\Models\AgentOrderItem');
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



}