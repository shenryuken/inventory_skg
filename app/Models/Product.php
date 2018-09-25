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

    public function Stocks()
    {
        return $this->hasMany('App\Models\Stock', 'product_id');
    }

    public function returnGoods()
    {
        return $this->hasMany('App\Models\StockItem', 'product_id');
    }

    public function orderItem()
    {
    	return $this->belongsTo('App\Models\OrderItem');
    }
}
