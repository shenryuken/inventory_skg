<?php

namespace App\Classes;

use Illuminate\Http\Request;
// use App\Http\Controllers\Controller;

use DB;
use Auth;
use Carbon\Carbon;
use App\Models\GlobalNr;
use App\users;


class GlobalNumberRange{

	public function generate_orderno($order_typ){

        if(Auth::guard('admin')->check()){

            $id = Auth::guard('admin')->user()->id;
        }
        else{
            $id = Auth::user()->id;
        }

        try{

            // Generate new order no
            $global_nr = GlobalNr::where('nrcode',$order_typ)->first();
            $current_date = Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'));

            if($current_date->format('m') > substr($global_nr->current_date, 4, 2)){
                $next_no = str_pad($global_nr->nrfrom + $global_nr->nritem, 5, '0', STR_PAD_LEFT);
            }
            else{
                $next_no = str_pad($global_nr->nrcurrent + $global_nr->nritem, 5, '0', STR_PAD_LEFT);
            }

            $dataToReturn = $global_nr->nrcode.$current_date->format('Ymd').$next_no;

            // Update global_nr table with new order no
            GlobalNr::where('id',$global_nr->id)
                    ->update([
                        'current_date'  => $current_date->format('Ymd'),
                        'nrcurrent'     => $next_no,
                        'updated_by'    => $id,
                        'updated_at'    => Carbon::now()
                    ]);

            $return = [
                'status'    => "01",
                'error'     => false,
                'message'   => "Successfully generate new order no for ".$order_typ,
                'data'      => $dataToReturn
            ];
        }catch(\Exception $e){
            $return = [
                'status'    => "02",
                'error'     => true,
                'message'   => "Failed to generate new order no for ".$order_typ.". Error: ".$e->getMessage(),
                'data'      => ""
            ];
        }

        return $return;
    }
}