<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests;
use App\Models\Wallet;
use App\Models\ActiveDo;
use App\Models\UserBonus;

use App\User;
use Validator;
use Session;

class WalletController extends Controller
{
    public function mywallet()
    {
		$user     = Auth::user();
		$wallet   = $user->wallet;
		$user_bonus	= UserBonus::where('user_id',$user->id)->first();
		$active_do 	= ActiveDo::where('user_id', $user->id)->first();
		$qualified_bonus = [
			'retail_profit' => 'no',
			'personal_rebate' => 'no',
			'direct_sponsor'  => 'no',
			'do_group_bonus'  => 'no',
			'do_cto' 		  => 'no',
			'sdo_cto'         => 'no',
			'sdo'             => 'no',
			'sdo_to_sdo'      => 'no'
		];
		if($user->rank_id == 2 && ($wallet && $wallet->pv >= 100))
		{
			$qualified_bonus['personal_rebate'] = 'yes';
		}
		elseif ($user->rank_id == 3 && ($wallet && $wallet->pv >= 100))
		{
			$qualified_bonus['retail_profit'] = 'yes';
			$qualified_bonus['personal_rebate'] = 'yes';
			$qualified_bonus['direct_sponsor']  = 'yes';
		}
		elseif($user->rank_id == 4 && ($wallet && $wallet->pv >= 100))
		{
			$qualified_bonus['retail_profit'] = 'yes';
			$qualified_bonus['personal_rebate'] = 'yes';
			$qualified_bonus['direct_sponsor']  = 'yes';
			$qualified_bonus['do_group_bonus']  = 'yes';
			if($active_do && $active_do->personal_gpv >= 4000) $qualified_bonus['do_cto'] = 'yes';
			
		}
		elseif($user->rank_id == 5 && ($wallet && $wallet->pv >= 100))
		{
			$qualified_bonus['retail_profit'] = 'yes';
			$qualified_bonus['personal_rebate'] = 'yes';
			$qualified_bonus['direct_sponsor']  = 'yes';
			$qualified_bonus['do_group_bonus']  = 'yes';
			if($active_do && $active_do->personal_gpv >= 5000) $qualified_bonus['do_cto'] = 'yes';
			$qualified_bonus['sdo_cto'] 		  = 'yes'; //need to clarify again - group branch 5k or ???
			$qualified_bonus['sdo']             = 'yes';
			$qualified_bonus['sdo_to_sdo']      = 'yes';
		}
		
		//print_r($id);
    	return view('vault.mywallet', compact('wallet', 'qualified_bonus', 'user_bonus'));
    }

    public function transferPoint()
    {
    	return view('vault.transfer');
    }

    public function postTransferPoint(Request $request)
    {
    	$request->validate([
               'point_to_transfer' => 'required',
               'username'          => 'required|exists:users,username',
               'security_code'     => 'required'
            ]);
    	
    	$sender   = Auth::user()->username;
    	$receiver = User::where('username', $request->username)->first();

    	$hashedCode = Auth::guard('web')->user()->security_code;

    	if(Auth::guard('web')->check() && Hash::check($request->security_code, $hashedCode))
    	{
    		$sender_wallet 		= Wallet::where('user_id', $receiver->id)->first();
		    $receiver_wallet 	= Wallet::where('user_id', $receiver->id)->first(); 

    		if($request->point_to_transfer <= $sender_wallet->p_wallet)
    		{
    			$sender_wallet 		= Wallet::where('user_id', $receiver->id)->first();
		    	$receiver_wallet 	= Wallet::where('user_id', $receiver->id)->first();

		    	$sender_wallet->p_wallet 	= $sender_wallet->p_wallet - $request->point_to_transfer;
		    	$sender_wallet->save();

		    	$receiver_wallet->p_wallet 	= $receiver_wallet->p_wallet + $request->point_to_transfer;
		    	$receiver_wallet->save();

		    	$point_transactions = new PointTransactions;
		    	$point_transactions->from_user_id = $sender->id;
		    	$point_transactions->to_user_id   = $receiver->id;
		    	$point_transactions->save();

		    	Session::flash('success', 'Successfully transfer '.$request->point_to_transfer.' points to '.$receiver->username); 
    		}
    		elseif ($request->point_to_transfer > $sender_wallet->p_wallet ) 
    		{
    			Session::flash('fail', 'Failed to transfer '.$request->point_to_transfer.' points to '.$receiver->username.'. Insufficient point!');
    		}
    	}

    	return view('vault.transfer');
    }
}