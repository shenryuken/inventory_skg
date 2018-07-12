<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GlobalStatus extends Model
{
    protected $table = 'global_status';

    public function AgentOrderHdr()
    {
        return $this->belongsTo('App\Models\AgentOrderHdr','status');
    }

}