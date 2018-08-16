<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\ActiveDo;
use App\Models\ActiveSdo;
use App\Models\Bonus;
use App\Models\BonusType;
use App\Models\Referral;
use App\Models\Voucher;
use App\Models\Rank;
use App\Models\Wallet;
use App\Models\UserPurchase;
use App\Models\Store;
use App\Models\Product;
use App\Models\Sale;
use App\Models\SdoLicense;
use App\Models\SdoMerit;
use App\Models\UserBonus;

use App\User;

use Carbon\Carbon;

use App\Traits\CountAndRecordBonus;

use Validator;
use Session;
use DateTime;
use DB;

class BonusController extends Controller
{
    use CountAndRecordBonus;

    public function index()
    {
        return view('bonus.index');
    }

    public function history()
    {
        $bonuses = Bonus::all();

        return view('bonus.history', compact('bonuses'));
    }

    public function my_bonus_history($user_id)
    {
        $my_bonuses = Bonus::where('user_id', $user_id)->get();

        return view('bonus.my-history', compact('my_bonuses'));
    }

    public function summary($user_id)
    {
        $personal_rebates = Bonus::where('user_id', $user_id)->whereBetween('bonus_type_id',[1,4] )->get();
        $direct_sponsors  = Bonus::where('user_id', $user_id)->whereBetween('bonus_type_id',[5,7] )->get();
        $do_group_bonuses = Bonus::where('user_id', $user_id)->where('bonus_type_id', '=', 8 )->get();

        return view('bonus.summary', compact('personal_rebates', 'direct_sponsors', 'do_group_bonuses'));
    }

    //for admin only
    public function showBonusSummary($user_id)
    {
        $bonus = Wallet::where('user_id', $user_id)->first();

        return view('bonus.show-bonus-summary', compact('bonus'));
    }

    //Bonus Type
    public function bonusType()
    {
    	$bonus_types = BonusType::all();

    	return view('bonus.bonus-types', compact('bonus_types'));
    }

    public function addBonusType()
    {
    	$ranks = Rank::all();

    	return view('bonus.add-bonus-type', compact('ranks'));
    }

    public function editBonusType($id)
    {
        $bonus_type = BonusType::find($id);

        return view('bonus.edit-bonus-type', compact('bonus_type'));
    }

    public function updateBonusType(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name'          => 'required',
            'value'         => 'required',
            'value_type'    => 'required',
            'rank'          => 'required',
            'term'          => 'required',
            'duration'      => 'required',
            'duration_type' => 'required',
            'description'   => 'required',
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator)
                         ->withInput();
        } else {

            $bonus_type = BonusType::find($id);
            $bonus_type->name           = $request->name;
            $bonus_type->value          = $request->value;
            $bonus_type->value_type     = $request->value_type;
            $bonus_type->rank           = $request->rank;
            $bonus_type->term           = $request->term;
            $bonus_type->duration       = $request->duration;
            $bonus_type->duration_type  = $request->duration_type;
            $bonus_type->description    = $request->description;
            $bonus_type->save();

            return redirect('bonus/bonus-types');
        }
    }
    //End Bonus Type

    //Calculate Bonus
    public function calculate_end_month_bonus()
    {
        $year   = (new DateTime)->format("Y");
        $month  = (new DateTime)->format("n");

        if($month == 1){
            $month = 12;
            $year  = $year - 1;
        } else {
            $month = $month - 1;
        }

        //count for DO Rank Members
        $do_members     = ActiveDo::all();
        $sdo_members    = ActiveSdo::all();
        //$userPurchases  = UserPurchase::all();  // originall
        $userPurchases  = UserPurchase::groupBy('user_id', 'product_id')
                            ->selectRaw('user_id, product_id, sum(price) as price, sum(pv) as pv, count(*) as quantity')
                            ->whereMonth('created_at', $month)
                            ->whereYear('created_at', $year)
                            ->get();
        //$userStores     = Store::all(); // originall
        $userStores     = Store::groupBy('user_id', 'product_id')
                            ->selectRaw('user_id, product_id, sum(price) as price, sum(pv) as pv, count(*) as quantity')
                            ->whereMonth('created_at', $month)
                            ->whereYear('created_at', $year)
                            ->get();
        
        $next_do_members= $do_members;
        $i              = 0;
        $n              = count($do_members);

        $total_sales1   = UserPurchase::sum('price');
        $total_sales2   = Store::sum('price');
        $total_sales    = $total_sales1 + $total_sales2;

        $total_pv1      = UserPurchase::sum('pv');
        $total_pv2      = Store::sum('pv');
        $total_pv       = $total_pv1 + $total_pv2;

        $sale   = Sale::where('year', $year)->where('month', $month)->first();
        $sale->re_total_sale = $total_sales;
        $sale->re_total_pv   = $total_pv;
        $sale->save();

        // echo '<br>';
        // echo '<pre>';
        // print_r($userStores);
        // echo '<pre>';
        // echo '<br>';

        foreach ($userPurchases as $userPurchase) 
        {
            $this->retail_price($userPurchase->user_id, $userPurchase->price, $userPurchase->product_id);
            //$this->upline_personal_rebate($userPurchase->user_id, $userPurchase->pv);
            $this->personal_rebate($userPurchase->user_id, $userPurchase->pv, $userPurchase->product_id);
        }

        foreach($userStores as $store)
        {
            $this->retail_price($store->user_id, $store->price, $store->product_id);
            //$this->pay_valid_upline_for_personal_rebate($store->user_id, $store->pv);
            //$this->upline_personal_rebate($store->user_id, $store->pv);
            $this->personal_rebate($store->user_id, $store->pv, $store->product_id);
        }

        foreach($do_members as $member)
        {
            $this->calculate_active_do_personal_gpv($member->user_id);
            // $this->group_bonus($member->user_id);
        }

        foreach($do_members as $member)
        {
            // $this->calculate_active_do_personal_gpv($member->user_id);
             $this->group_bonus($member->user_id);
        }

        $this->calculate_total_group_pv();

        foreach ($sdo_members as $smember) {
            $this->calculate_active_sdo_personal_gpv($smember->user_id);
            // $this->sdo_bonus($smember->user_id);  //need to separate
            // $this->sdo_to_sdo_bonus($smember->user_id); //need to separate
        }

        foreach ($sdo_members as $smember) {
            $this->sdo_bonus($smember->user_id);  
            $this->sdo_to_sdo_bonus($smember->user_id); 
        }

        // foreach($next_do_members as $next_member)
        // {
        //     //$this->calculate_active_do_personal_gpv($member->user_id);
        //     $this->group_bonus($next_member->user_id);
        // }

        $ewallets = Wallet::all();

        foreach ($ewallets as $wallet) {
            //$this->direct_sponsor_bonus($wallet->user_id, $wallet->pv, $wallet->first_purchased);
            $this->direct_sponsor_bonus($wallet->user_id, $wallet->pv);
        }

        $do_cto_bonus  = $this->do_cto_bonus();
        $sdo_cto_bonus = $this->sdo_cto_bonus();

        //$this->countTotalBonus();
        $this->recordUserBonuses();
        //$this->countTotalBonus();
    }
    //End Calculate Bonus

    //Retai Price Bonus
    //Qualified Rank MO/DO/SDO - 20% from market price
    public function retail_price($id, $total_price, $product_id)
    {
       $rank   = $this->getUserRankId($id);
       $wallet = Wallet::where('user_id', $id)->first();
       $data   = [
                    'user_id'     => $id,
                    'rank'        => $rank,
                    'total_price' => $total_price,
                    'product_id'  => $product_id, 
                    'from_user_id'=> $id,
                    'bonus'       => 0.20,
                    'bonus_type'  => 1,
                    'description' => 'Personal Retail Profit'
                 ];

        $this->getRetailProfitBonus($data);
      
    }

    //Personal Rebate for Loyal Customer And Above
    //Count for self and upline
    public function personal_rebate($id, $pv, $product_id)
    {
        $rank   = $this->getUserRankId($id);
        $wallet = Wallet::where('user_id', $id)->first();
        
        // $x = 3;
        // $last_highest_rank = 1;
        $rank   = $this->getUserRankId($id);

        $data   = [
                    'user_id'     => $id,
                    'rank'        => $rank,
                    'total_pv'    => $pv,
                    'product_id'  => $product_id, 
                    'from_user_id'=> $id,
                    'bonus'       => 0.20,
                    'bonus_type'  => 3,
                    'description' => 'Personal Rebate'
                 ];

        $this->getPersonalRebate($data);   
    }

    public function direct_sponsor_bonus($user_id, $pv)
    {
        $rank   = $this->getUserRankId($user_id);

        $data   = [
                    'user_id'     => $user_id,
                    'rank'        => $rank,
                    'total_pv'    => $pv,
                    'from_user_id'=> $user_id,
                    'bonus'       => 0.20,
                    'bonus_type'  => 5,
                    'description' => 'Direct Sponsor'
                 ];
        
        $this->getDirectSponsorBonus($data);
    }

    

    //Calculate Personal GPV without personal PV
    public function calculate_active_sdo_personal_gpv($user_id)
    {
        //return $active_do;
        $root           = Referral::where('user_id', $user_id)->first();
        $root_wallet    = Wallet::where('user_id', $user_id)->first();
 
        $descendants        = $root->getDescendants();
        $first_pv_purchased = 0;
        $personal_gpv       = 0;
        $first_gpv_purchased= $root_wallet ? $root_wallet->first_purchased:0;
        $right              = 0;
        $qualified          = array();

        foreach ($descendants as $descendant)
        {
            $rank = $this->getUserRankId($descendant->user_id);

            if($rank <= 4 && $descendant->rgt > $right)
            {
                $wallet = Wallet::where('user_id', $descendant->user_id)->first();

                $first_gpv_purchased    = $first_gpv_purchased + ($wallet ? $wallet->first_purchased:0) ;
                $personal_gpv           = $personal_gpv + ($wallet ? $wallet->pv:0);//without root personal pv
                $qualified[]            = $descendant->toArray();
            }
            elseif ($rank > 4 )
            {
                if($right < $descendant->rgt)
                {
                    $right = $descendant->rgt;
                }
            }
        }

        $root_wallet = Wallet::where('user_id', $user_id)->first();//root personl pv

        $active_do = ActiveDo::where('user_id', $user_id)->first();
        $active_do->personal_gpv        = $personal_gpv + ($root_wallet ? $root_wallet->pv:0);
        $active_do->first_gpv_purchased = $first_gpv_purchased;
        $active_do->save();
    }

    public function sdo_bonus($user_id)
    {
        //2% bonus
        $wallet = Wallet::where('user_id', $user_id)->first();

        $personal_pv    = !is_null($wallet) ? $wallet->pv: null;
        $sdo            = ActiveSdo::where('user_id', $user_id)->first();

        if(!is_null($wallet) && $wallet->pv > 0)
        {
          $personal_gpv   = $sdo->personal_gpv;
          $sdo_bonus      = (2/100)*($personal_pv + $personal_gpv);

          $sdo->sdo_group_bonus = number_format($sdo_bonus, 2, '.', '');
          $sdo->save();
        }
    }

    public function sdo_to_sdo_bonus($user_id)
    {
        $root              = Referral::where('user_id', $user_id)->first();
        $descendants       = $root->getDescendants();
        $active_sdo_members= array();
        $generation        = 1;
        $rgt_root          = $root->rgt;
        $rgt_generation[0] = $root->rgt ; //value for first time process
        $rgt_generation[1] = 0; //generation 1

        $bonus_generation[0]  =  0; //root
        $bonus_generation[1]  =  0; //generation 1

        foreach($descendants as $descendant)
        {
            $wallet = Wallet::where('user_id', $descendant->user_id)->first();

            if($descendant->rank == 'SDO' && ($wallet && $wallet->pv >= 200))
            {
                if($descendant->rgt < $rgt_generation[0] && $descendant->rgt > $rgt_generation[1]);
                {
                    $rgt_generation[1]   = $descendant->rgt;
                    $active_sdo_members[] = $descendant->toArray();

                    $bonus_generation[1] = $bonus_generation[1] + $wallet->pv;
                }
            }
        }

        $sdo_bonus = 0;//personal group pv

        foreach ($active_sdo_members as $member) {
            //$do_member = DoMember::where('user_id', $member['user_id'])->first();
            $sdo_member = ActiveSdo::where('user_id', $member['user_id'])->first();
            $sdo_bonus  = $sdo_bonus + $sdo_member->personal_gpv;
        }

        $generations_gpv = $bonus_generation[1];

        //$generations_gpv = number_format(((7/100) * $do_bonus), 2, '.', '');
        $group_bonus    = number_format(((2/100) * ($sdo_bonus + $generations_gpv)), 2, '.', '');
        $root_wallet    = Wallet::where('user_id', $user_id)->first();
        $root_pv        = $root->pv;

        if($group_bonus > 0){
            $bonus = new Bonus;
            $bonus->user_id       = $user_id;
            $bonus->bonus_type_id = 12; //8 for SDO To SDO Bonus
            $bonus->amount        = $group_bonus;
            $bonus->description   = "SDO To SDO Bonus #2%";
            $bonus->save();
        }

        if($generations_gpv > 0){
            $active_sdo = ActiveSdo::where('user_id', $user_id)->first();
            $active_sdo->sdo_to_sdo_bonus = $generations_gpv;
            $active_sdo->save();
        }

        /*echo '<pre>';
        print_r($active_do_members);
        echo '</pre>';
        echo '</br>';*/
        echo 'sdo bonus = '. $sdo_bonus;
        echo '</br>';
        echo 'genaration bonus = '.$group_bonus;
        echo '</br>';
        echo 'genaration gpv = '.$generations_gpv;
        echo '</br>';
        //return $active_do;
    }

    

    // public function getPersonalRebate($user_id)
    // {
    //     $user  = User::find($user_id);
    //     $rank = $user->rank->name;

    //     if($rank == 'Loyal Customer')
    //     {
    //         $bonustype  = BonusType::where('name', 'Personal Rebate LC')->first();
    //         $rebate     = $bonustype->value;
    //     }
    //     elseif( $rank == 'Marketing Officer')
    //     {
    //         $bonustype  = BonusType::where('name', 'Personal Rebate MO')->first();
    //         $rebate     = $bonustype->value;
    //     }
    //     elseif( $rank == 'District Officer')
    //     {
    //         $bonustype  = BonusType::where('name', 'Personal Rebate DO')->first();
    //         $rebate     = $bonustype->value;
    //     }
    //     elseif ($rank == 'Senior District Officer')
    //     {
    //         $bonustype  = BonusType::where('name', 'Personal Rebate SDO')->first();
    //         $rebate     = $bonustype->value;
    //     } else {
    //         $rebate = 0;
    //     }

    //     return $rebate;
    // }

    
    public function countTotalBonus($user)
    {
        $totalBonus = $user->wallet->retail_profit + $user->wallet->personal_rebate + $user->wallet->direct_sponsor 
                      + $user->active_do->do_group_bonus + $user->active_sdo->sdo_group_bonus + $user->active_sdo->sdo_to_sdo_bonus
                      + $user->active_do->cto_value_share + $user->active_sdo->cto_value_share;

        return $totalBonus;
    }

    // public function activeUsers($users)
    // {
    //     return array_filter($users, 'isUserActive');
    // }

    // public function isUserActive($user)
    // {
    //     $userRecord = Wallet::where('user_id', $user->id)->first();
    //     return !is_null($userRecord);
    // }

    // public function recordBonus()
    // {
    //     $bonus = new Bonus();
    //     $bonus->retail_profit = 
    // }

    public function bonusStatement($id)
    {
        $user = User::find($id);

        $bonuses = $user->userBonus;    

        return view('bonus.bonus-statement', compact('user','bonuses'));    
    }

    public function bonusDetails($id)
    {

        $userBonus = UserBonus::find($id);

        $retail_profit          = Bonus::where('user_id', $userBonus->user_id)
                                        ->where('bonus_type_id','1')
                                        ->sum('amount');

        $override_retail_profit = Bonus::where('user_id', $userBonus->user_id)
                                        ->where('bonus_type_id','2')
                                        ->sum('amount');

        $personal_rebate        = Bonus::where('user_id', $userBonus->user_id)
                                        ->where('bonus_type_id','3')
                                        ->sum('amount');

        $override_personal_rebate   = Bonus::where('user_id', $userBonus->user_id)
                                            ->where('bonus_type_id','4')
                                            ->sum('amount');

        $direct_sponsor         = Bonus::where('user_id', $userBonus->user_id)
                                        ->where('bonus_type_id','5')
                                        ->sum('amount');

        $indirect_sponsor       = Bonus::where('user_id', $userBonus->user_id)
                                        ->where('bonus_type_id','6')
                                        ->sum('amount');

        $root           = Referral::where('user_id', $userBonus->user_id)->first();
        // echo $root;
        $descendants    = $root->getDescendants();

        $downlines      = array();

        if($descendants)
        {
            foreach ($descendants as $descendant) {
            
            $wallet = Wallet::where('user_id', $descendant->user_id)->first();

                if($wallet && ($wallet->pv > 0 || $wallet->first_purchased > 0))
                {
                    $downlines[] = [
                                'username'          => $wallet->user->username,
                                'rank_id'           => $wallet->user->rank_id,
                                'pv'                => $wallet->pv,
                                'first_purchased'   => $wallet->first_purchased,
                                // 'retail_profit'     => Bonus::where('from_user_id', $root->user_id)
                                //                         ->where('user_id', $root->user_id)
                                //                         ->where('bonus_type_id','1')
                                //                         ->sum('amount'),
                                'override_retail_profit' => Bonus::where('from_user_id', $wallet->user_id)
                                                        ->where('user_id', $root->user_id)
                                                        ->where('bonus_type_id','2')
                                                        ->sum('amount'),
                                'personal_rebate'   => Bonus::where('from_user_id', $wallet->user_id)
                                                        ->where('user_id', $wallet->user_id)
                                                        ->where('bonus_type_id','3')
                                                        ->sum('amount'),
                                'override_personal_rebate'   => Bonus::where('from_user_id', $wallet->user_id)
                                                        ->where('user_id', $root->user_id)
                                                        ->where('bonus_type_id','4')
                                                        ->sum('amount'),
                                'direct_sponsor'    => Bonus::where('from_user_id', $wallet->user_id)
                                                        ->where('user_id', $root->user_id)
                                                        ->where('bonus_type_id','5')
                                                        ->sum('amount'),
                                'indirect_sponsor'  => Bonus::where('from_user_id', $wallet->user_id)
                                                        ->where('user_id', $root->user_id)
                                                        ->where('bonus_type_id','6')
                                                        ->sum('amount'),
                                'group_bonus'       => Bonus::where('from_user_id', $wallet->user_id)
                                                        ->where('user_id', $root->user_id)
                                                        ->where('bonus_type_id','7')
                                                        ->sum('amount'),
                                // 'do_cto'            => $wallet->do_cto,
                                // 'sdo_cto'           => $wallet->sdo_cto,
                                // 'sdo_group'         => $wallet->sdo_group,
                                // 'sdo_to_sdo'        => $wallet->sdo_to_sdo, 
                                ]; 
                }
            }
        }
        

        // dd($downlines);

        return view('bonus.bonus-details', compact('userBonus',
                                                   'retail_profit',
                                                   'override_retail_profit',
                                                   'personal_rebate',
                                                   'override_personal_rebate',
                                                   'direct_sponsor',
                                                   'indirect_sponsor',
                                                   'downlines'
                                                  ));
    }


    

    // public function getDoDownlines($id)
    // {

    // }
}

