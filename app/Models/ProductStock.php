<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductStock extends Model
{
    protected $guarded = [];
    protected $table = 'product_stock';

    public function stocks()
    {
        return $this->belongsTo('App\Models\Stock');
    }

    public function products()
    {
        return $this->belongsTo('App\Models\Product');
    }

    public function suppliers()
    {
        return $this->belongsTo('App\Models\Supplier');
    }
   
}
