<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AgentOrderItem extends Model
{
    //
    protected $table = 'agent_order_items';

    public function products()
    {
        return $this->hasOne('App\Models\Product','id','product_id');
    }

}
