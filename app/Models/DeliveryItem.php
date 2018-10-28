<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DeliveryItem extends Model
{
    //
    protected $guarded = []; //mea
    
    public function products()
    {
        return $this->hasOne('App\Models\Product','id','product_id');
    }

    public function delivery()
    {
        return $this->belongsTo("App\Models\Delivery", "id","delivery_id");
    }
}
