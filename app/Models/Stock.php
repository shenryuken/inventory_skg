<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    public function products()
    {
        return $this->belongsToMany('App\Product', 'product_stock', 
        'stocks_id', 'products_id');
    }
}
