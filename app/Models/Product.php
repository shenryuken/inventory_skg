<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = ['code','price'];
   
    public function StockItems()
    {
        return $this->hasMany('App\Models\StockItem', 'product_id');
    }
}
