<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $guarded = [];

    public function StockItem()
    {
        return $this->hasMany('App\Models\StockItem', 'supplier_id');
    }
}
