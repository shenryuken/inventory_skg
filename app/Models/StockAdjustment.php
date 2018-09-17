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
        return $this->hasOne('App\Models\StockItem');
    }

    
}
