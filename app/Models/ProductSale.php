<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductSale extends Model
{
	protected $fillable = ['product_id','quantity', 'amount'];

    public function product()
    {
    	return $this->belongsTo('App\Models\Product');
    }
}
