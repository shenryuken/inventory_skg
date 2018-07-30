<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentType extends Model
{

    protected $table = 'payment_type';
    protected $guarded = []; //means allow all expect the fields mentioned here    

    // public function AgentOrderHdr()
    // {
    //     return $this->belongsTo('App\Models\AgentOrderHdr','delivery_type');
    // }

}