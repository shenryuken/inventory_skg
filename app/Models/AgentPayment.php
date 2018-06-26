<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AgentPayment extends Model
{
    public function agentInvoice()
    {
    	return $this->belongsTo('App\Models\AgentInvoice');
    }
}
