<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StockAdjustment extends Model
{
    public function stockAdjustmentType()
    {
        return $this->hasOne('App\Models\stockadjustmentType');
    }

    
}
