<?php namespace App\Traits;

use App\Models\ActiveDo;
use App\Models\ActiveSdo;
use App\Models\Bonus;
use App\Models\TestBonus;
use App\Models\Referral;
use App\Models\Wallet;
use App\Models\TestWallet;
use App\Models\Product;
use App\Models\Rank;
use App\Models\UserPurchase;
use App\Models\Store;
use App\Models\Sale;
use App\Models\SdoLicense;
use App\Models\SdoMerit;
use App\Models\UserBonus;

use App\User;

use Carbon\Carbon;
use DateTime;

trait TestCountAndRecordBonus
{
    //Retail Profit Bonus for single user
    public function getRetailProfitBonus($data)
    {  
        if($data['rank'] == 2)
        {
            $wallet = Wallet::where('user_id', $data['user_id'])->first();
            
            if($wallet && $wallet->purchased >= 2)
            {
                //count retails profit and update data
                $bonus_retail_profit        = (number_format(0.05, 2) * $data['total_price']);
                
                $testWallet = TestWallet::firstOrNew(['user_id' => $data['user_id']]);
                $testWallet->retail_profit  = $wallet->retail_profit + $bonus_retail_profit;
                $testWallet->save();
                //save bonus record to db
                $this->recordBonusToDb($data, $bonus_retail_profit);
                
            }
        }
        elseif($data['rank'] >= 3)
        {
            $bonus_retail_profit   = (number_format(0.20, 2) * $data['total_price']);
            //count retail profit 
            $wallet = Wallet::where('user_id', $data['user_id'])->first();

            $testWallet = TestWallet::firstOrNew(['user_id' => $data['user_id']]);
            $testWallet->retail_profit = $wallet->retail_profit + $bonus_retail_profit;
            $testWallet->save();
            //save bonus record to db
            $this->recordBonusToDb($data, $bonus_retail_profit);
        }
    }

    // public function getOverrideRetailProfitBonusBySingleUserId($data)
    // {
    //     $root           = Referral::where('user_id', $data['user_id'])->first();
    //     $descendants    = $root->getDescendants();
    //     $right          = 0;
    //     $qualified      = array();

    //     foreach ($descendants as $descendant)
    //     {
    //         $rank = $this->getUserRankId($descendant->user_id);

    //         if($rank <= 2 && $descendant->rgt > $right)
    //         {
    //             $qualified[] = $descendant->toArray();
    //         }
    //         elseif ($rank > 4 )
    //         {
    //             if($right < $descendant->rgt)
    //             {
    //                 $right = $descendant->rgt;
    //             }
    //         }
    //     }

    //     foreach($qualified as $member)
    //     {
    //         $wallet = Wallet::where('user_id', $member['user_id'])->first();

    //         if($wallet->user->rank_id == 2 && $wallet->purchased >= 2)
    //         {
    //             $bonus_retail_profit   = (number_format(0.15, 2) * $data['total_price']);
    //             $wallet->retail_profit = $wallet->retail_profit + $bonus_retail_profit;
    //             $wallet->save();
    //             //save bonus record to db
    //             $this->recordBonusToDb($data, $bonus_retail_profit);
    //         }
    //     }
    // }
    //END Retail Profit Bonus

    public function recordBonusToDb($data, $total_bonus)
    {
        $bonus = new TestBonus;
        $bonus->user_id = $data['user_id']; 
        $bonus->amount  = $total_bonus;
        $bonus->bonus_type_id = $data['bonus_type'];
        $bonus->description   = $data['description'];
        $bonus->from_user_id  = $data['from_user_id'];
        $bonus->save();
    }

    public function getUserPurchasesByUserIdGroupProductId($user_id)
    {
        $year  = (new DateTime)->format("Y");
        $month = (new DateTime)->format("n");

        if($month == 1){
            $month = 12;
            $year  = $year - 1;
        } else {
            $month = $month - 1;
        }

        $userPurchases  = UserPurchase::groupBy('product_id')
                            ->selectRaw('user_id, product_id, sum(price) as price, sum(pv) as pv, count(*) as quantity')
                            ->whereMonth('created_at', $month)
                            ->whereYear('created_at', $year)
                            ->where('user_id', $user_id)
                            ->get();

        return $userPurchases;
    }
}