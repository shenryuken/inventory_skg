<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    //
    protected $table = 'orders_item';

    public function products()
    {
        return $this->hasOne('App\Models\Product','id','product_id');
    }
}