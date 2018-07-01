<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $guarded = [];

    public function ProductStocks()
    {
        return $this->hasMany('App\Models\ProductStock', 'suppliers_id');
    }
}
