<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
     /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'address';


    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}