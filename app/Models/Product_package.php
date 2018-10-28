<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product_package extends Model
{
    public function products()
    {
    	return $this->hasOne('App\Models\Product','id');
    }
}
