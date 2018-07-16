<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockItem extends Model
{
    protected $guarded = [];
    protected $table = 'stock_items';

    public function stocks()
    {
        return $this->belongsTo('App\Models\Stock','stock_id','id');
    }

    public function products()
    {
        return $this->belongsTo('App\Models\Product','product_id','id');
    }

    public function suppliers()
    {
        return $this->belongsTo('App\Models\Supplier','supplier_id','id');
    }
   
}
