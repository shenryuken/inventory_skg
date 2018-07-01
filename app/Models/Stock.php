<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    public function ProductStocks()
    {
        return $this->hasMany('App\Models\ProductStock','stocks_id');
    }

    
}
