<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AgentOrder extends Model
{
    public function user()
    {
    	return $this->belongsTo('App\User');
    }

    public function agentInvoice()
    {
    	return $this->belongsTo('App\Models\AgentInvoice');
    }

    public function agentOrderItems()
    {
    	return $this->hasMany('App\Models\AgentOrderItem');
    }

    public function agentShipment()
    {
        return $this->hasOne('App\Models\AgentShipment');
    }
}
