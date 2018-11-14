<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\ActiveDo;
use App\Models\ActiveSdo;
use App\Models\Bonus;
use App\Models\TestBonus;
use App\Models\BonusType;
use App\Models\Referral;
use App\Models\Voucher;
use App\Models\Rank;
use App\Models\Wallet;
use App\Models\TestWallet;
use App\Models\UserPurchase;
use App\Models\Store;
use App\Models\Product;
use App\Models\Sale;
use App\Models\SdoLicense;
use App\Models\SdoMerit;
use App\Models\UserBonus;

use App\User;

use Carbon\Carbon;

use App\Traits\TestCountAndRecordBonus;
use App\Traits\RankTrait;


use Validator;
use Session;
use DateTime;
use DB;

class TestBonusController extends Controller
{
	use TestCountAndRecordBonus;
	use RankTrait;

	public function userList()
	{
		$members = User::all();

		return view('testbonus.user-list', compact('members'));
	}

    public function getRetailProfitByUserId($user_id)
    {
    	$userPurchases = $this->getUserPurchasesByUserIdGroupProductId($user_id);

        if($userPurchases)
        {
        	foreach ($userPurchases as $userPurchase) 
        	{
        		$total_price = $userPurchase->price;
        		$product_id  = $userPurchase->product_id;

        		$rank   = $this->getUserRankId($user_id);

		       	$wallet = Wallet::where('user_id', $user_id)->first();
		       	$data   = [
		                    'user_id'     => $user_id,
		                    'rank'        => $rank,
		                    'total_price' => $total_price,
		                    'product_id'  => $product_id, 
		                    'from_user_id'=> $user_id,
		                    'bonus'       => 0.20,
		                    'bonus_type'  => 1,
		                    'description' => 'Personal Retail Profit'
		                 ];

		        $this->getRetailProfitBonus($data);
        	}
        }                  

        $bonuses = TestBonus::where('user_id', $user_id)
        					->where('bonus_type_id','<=', 2)
        					->get();

        $this->getOverrideRetailProfitByUserId($user_id);

    	echo '<pre>';
    	dump($bonuses);
    	echo '</pre>';
    }

    public function getOverrideRetailProfitByUserId($user_id)
    {
    	$root           = Referral::where('user_id', $user_id)->first();
        $descendants    = $root->getDescendants();
        $right          = 0;
        $qualified      = array();

        //dd($descendants);

        foreach ($descendants as $descendant)
        {
            $rank = $this->getUserRankId($descendant->user_id);

            if($rank <= 2 && $descendant->rgt > $right)
            {
                $qualified[] = $descendant->toArray();
            }
            elseif ($rank > 4 )
            {
                if($right < $descendant->rgt)
                {
                    $right = $descendant->rgt;
                }
            }
        }

        foreach($qualified as $member)
        {
            $wallet = Wallet::where('user_id', $member['user_id'])->first();
        	$userPurchases = $this->getUserPurchasesByUserIdGroupProductId($member['user_id']);

        	if($userPurchases && ($wallet->user->rank_id == 2 && $wallet->purchased >= 2))
        	{
            	foreach ($userPurchases as $userPurchase) 
	        	{
	        		$total_price = $userPurchase->price;
	        		$product_id  = $userPurchase->product_id;

			       	$bonus_retail_profit   = (number_format(0.15, 2) * $data['total_price']);
			       	$testWallet = TestWallet::firstOrNew(['user_id' => $user_id]);

	                $testWallet->retail_profit = $testWallet->retail_profit + $bonus_retail_profit;
	                $testWallet->save();

	                $root_rank  = $this->getUserRankId($user_id);
	                	$data   = [
		                    'user_id'     => $user_id,
		                    'rank'        => $root_rank,
		                    'total_price' => $total_price,
		                    'product_id'  => $product_id, 
		                    'from_user_id'=> $member['user_id'],
		                    'bonus'       => 0.15,
		                    'bonus_type'  => 2,
		                    'description' => 'Override Retail Profit'
		                 ];

	                $this->recordBonusToDb($data, $bonus_retail_profit);
	        	}
            }
            elseif($userPurchases && ($wallet->user->rank_id <= 2 && $wallet->purchased < 2))
            {
            	foreach ($userPurchases as $userPurchase) 
	        	{
	        		$total_price = $userPurchase->price;
	        		$product_id  = $userPurchase->product_id;

			       	$bonus_retail_profit   = (number_format(0.20, 2) * $total_price);
			       	$testWallet = TestWallet::firstOrNew(['user_id' => $user_id]);

	                $testWallet->retail_profit = $testWallet->retail_profit + $bonus_retail_profit;
	                $testWallet->save();

	                $root_rank  = $this->getUserRankId($user_id);
	                	$data   = [
		                    'user_id'     => $user_id,
		                    'rank'        => $root_rank,
		                    'total_price' => $total_price,
		                    'product_id'  => $product_id, 
		                    'from_user_id'=> $member['user_id'],
		                    'bonus'       => 0.20,
		                    'bonus_type'  => 2,
		                    'description' => 'Override Retail Profit'
		                 ];

	                $this->recordBonusToDb($data, $bonus_retail_profit);
	        	}
            }
        }

        $testbonus = TestBonus::where('user_id', $user_id)->get();
        dump($testbonus);
    }

}
