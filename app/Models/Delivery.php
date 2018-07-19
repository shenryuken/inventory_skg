<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Delivery extends Model
{
    protected $guarded = []; //means allow all expect the fields mentioned here    
    //
    public function salesOrder(){
        return $this->hasOne('App\Models\OrderHdr','id','order_id');
    }

    public function deliveryItem()
    {
        return $this->hasMany('App\Models\DeliveryItem');
    }

    public function courier()
    {
        return $this->belongsTo('App\Models\Courier','courier_id','id');
    }
}
