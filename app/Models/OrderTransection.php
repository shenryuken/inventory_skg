<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderTransection extends Model
{
     /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'orders_transection';


    public function user()
    {
    	return $this->belongsTo('App\User');
    }
    public function products()
    {
    	return $this->belongsTo('App\Models\Product','id');
    }
}