<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PointTransaction extends Model
{
    public function pointTransactionable()
    {
    	return $this->morphTo();
    }
}
