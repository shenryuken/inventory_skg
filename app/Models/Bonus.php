<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bonus extends Model
{
    public function bonus_type()
    {
    	return $this->belongsTo('App\Models\BonusType');
    }

    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}

