<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = ['code','price'];
   
    public function ProductStocks()
    {
        return $this->hasMany('App\Models\ProductStock', 'products_id');
    }
}
