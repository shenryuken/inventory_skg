<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
    public function StockItem()
    {
        return $this->hasMany('App\Models\StockItem','stock_id');
    }

    
}
