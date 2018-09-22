<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockAdjustment extends Model
{
    public function stockAdjustmentType()
    {
        return $this->belongsTo('App\Models\StockadjustmentType','stockadjustment_type_id','id');
    }

    public function stockItem()
    {
        // return $this->belongsTo('App\Models\StockItem','id','stock_adjustment_id');
        return $this->hasOne('App\Models\StockItem','stock_adjustment_id','id');
    }

    
}
