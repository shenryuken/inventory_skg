<?php 
namespace App\Traits;

use App\Models\Wallet;


trait WalletTrait
{

	public function updateWallet($user_id, $total_pv)
	{
		$wallet = Wallet::firstOrNew(['user_id'  => $input['user_id']] );
	    //$wallet->available_pv   = $wallet->available_pv + $pv;
	    if(!$wallet->exists || $wallet->purchased == 0)
	    {
	        $wallet->pv              = $wallet->pv + $total_pv;
	        $wallet->first_purchased = $total_pv; 
	        $wallet->purchased       = 1;
	    }
	    else
	    {
	        $wallet->pv              = $wallet->pv + $total_pv;
	        $wallet->purchased       = $wallet->purchased + 1;
	    }
	    
	    $wallet->save();
	}
   
}