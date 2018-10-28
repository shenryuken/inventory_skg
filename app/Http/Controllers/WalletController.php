<?php
namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests;
use App\Models\Wallet;
use App\Models\ActiveDo;
use App\Models\UserBonus;
use App\Models\PointTransaction;

use App\User;
use Validator;
use Session;
use Carbon\Carbon;

class WalletController extends Controller
{
    public function mywallet()
    {
		$user     = Auth::user();
		$wallet   = $user->wallet;
		$user_bonus	= UserBonus::where('user_id',$user->id)->latest();
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
			$qualified_bonus['retail_profit'] 	= 'yes';
			$qualified_bonus['personal_rebate'] = 'yes';
			$qualified_bonus['direct_sponsor']  = 'yes';
		}
		elseif($user->rank_id == 4 && ($wallet && $wallet->pv >= 100))
		{
			$qualified_bonus['retail_profit'] 	= 'yes';
			$qualified_bonus['personal_rebate'] = 'yes';
			$qualified_bonus['direct_sponsor']  = 'yes';
			$qualified_bonus['do_group_bonus']  = 'yes';
			if($active_do && $active_do->personal_gpv >= 4000) $qualified_bonus['do_cto'] = 'yes';
			
		}
		elseif($user->rank_id == 5 && ($wallet && $wallet->pv >= 100))
		{
			$qualified_bonus['retail_profit'] 	= 'yes';
			$qualified_bonus['personal_rebate'] = 'yes';
			$qualified_bonus['direct_sponsor']  = 'yes';
			$qualified_bonus['do_group_bonus']  = 'yes';
			if($active_do && $active_do->personal_gpv >= 5000) $qualified_bonus['do_cto'] = 'yes';
			$qualified_bonus['sdo_cto'] 		= 'yes'; //need to clarify again - group branch 5k or ???
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
    	
    	if(Auth::guard('admin')->check())
    	{
    		$sender   	= Auth::guard('admin')->user();
    		$hashedCode = Auth::guard('admin')->user()->security_code;
    	}
    	elseif(Auth::guard('web')->check())
    	{
    		$sender   	= Auth::guard('web')->user();
    		$hashedCode = Auth::guard('web')->user()->security_code;
    	}

    	$receiver 	= User::where('username', $request->username)->first();
    	

    	if(Auth::guard('web')->check() && Hash::check($request->security_code, $hashedCode))
    	{
    		$sender_wallet 		= Wallet::where('user_id', Auth::guard('web')->user()->id)->first();
		    $receiver_wallet 	= Wallet::where('user_id', $receiver->id)->first(); 

    		if($request->point_to_transfer <= $sender_wallet->vault && $request->point_to_transfer > 0)
    		{
    			$sender_wallet 		= Wallet::where('user_id', $receiver->id)->first();
		    	$receiver_wallet 	= Wallet::where('user_id', $receiver->id)->first();

		    	$sender_wallet->vault 	= $sender_wallet->vault - $request->point_to_transfer;
		    	$sender_wallet->save();

		    	$receiver_wallet->vault 	= $receiver_wallet->vault + $request->point_to_transfer;
		    	$receiver_wallet->save();

		    	$point_transactions = new PointTransaction;
		    	$point_transactions->date_time_sent= Carbon::now();
		    	$point_transactions->point_transactionable_type = 'App\User';
		    	$point_transactions->point_transactionable_id   = $sender->id;
		    	$point_transactions->to_user_id   = $receiver->id;
		    	$point_transactions->status       = "Success";
		    	$point_transactions->save();

		    	Session::flash('success', 'Successfully transfer '.$request->point_to_transfer.' points to '.$receiver->username); 
    		}
    		elseif ($request->point_to_transfer > $sender_wallet->vault) 
    		{
    			Session::flash('fail', 'Failed to transfer '.$request->point_to_transfer.' points to '.$receiver->username.'. Insufficient point!');
    		}
    		elseif($request->point_to_transfer > 0)
    		{
    			Session::flash('fail', 'This transaction not valid. Point to transfer must be greater than 0 and less than '. $sender_wallet->vault);
    		}
    	}
    	elseif(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode))
    	{
		    $receiver_wallet 	= Wallet::where('user_id', $receiver->id)->first(); 

	    	$receiver_wallet->vault 	= $receiver_wallet->vault + $request->point_to_transfer;
	    	$receiver_wallet->save();

	    	if($receiver_wallet){
	    		$point_transactions = new PointTransaction;
	    		$point_transactions->date_time_sent= Carbon::now();
	    		$point_transactions->point_transactionable_type = 'App\Admin';
		    	$point_transactions->point_transactionable_id   = $sender->id;
		    	$point_transactions->to_user_id    = $receiver->id;
		    	$point_transactions->point 		   = $request->point_to_transfer;
		    	$point_transactions->status        = "Success";
		    	$point_transactions->save();

		    	Session::flash('success', 'Successfully transfer '.$request->point_to_transfer.' points to '.$receiver->username); 
	    	}
	    	else 
	    	{
	    		$point_transactions = new PointTransaction;
	    		$point_transactions->date_time_sent= Carbon::now();
		    	$point_transactions->point_transactionable_type = 'App\Admin';
		    	$point_transactions->point_transactionable_id   = $sender->id;
		    	$point_transactions->to_user_id    = $receiver->id;
		    	$point_transactions->point 		   = $request->point_to_transfer;
		    	$point_transactions->status        = "Failed";
		    	$point_transactions->save();

		    	Session::flash('fail', 'Failed to transfer '.$request->point_to_transfer.' points to '.$receiver->username.'. Please try again!');
	    	}
	    	
    	}

    	return view('vault.transfer');
    }

    public function transferPointHistory()
    {
    	if(Auth::guard('admin')->check())
    	{
    		$pointTransactions = PointTransaction::all();
    	}elseif (Auth::guard('web')->check()) {
    		$pointTransactions = PointTransaction::where('to_user_id', Auth::user()->id)
    												->orWhere('point_transactionable_id', Auth::user()->id)
    												->get();
    	}
    	
    	return view('vault.transfer-point-history', compact('pointTransactions'));
    }
}