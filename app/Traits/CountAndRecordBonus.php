<?php namespace App\Traits;

use App\Models\Bonus;
use App\Models\Referral;
use App\Models\Wallet;

trait CountAndRecordBonus
{
    //Retail Profit Bonus
    public function getRetailProfitBonus($data)
    {
        if($data['rank'] == 1)
        {
            $this->getOverrideRetailProfitBonus($data);
        }
        elseif($data['rank_id'] == 2)
        {
            $wallet = Wallet::where('user_id', $data['user_id'])->first();
            if($wallet && $wallet->purchased >= 2)
            {
                //count retails profit and update data
                $bonus_retail_profit   = (number_format(0.05, 2) * $total_price);
                $wallet->retail_profit = $wallet->retail_profit + $bonus_retail_profit;
                $wallet->save();
                //save bonus record to db
                $this->recordBonusToDb($data, $bonus_retail_profit);
                //update bonus balance value
                $data['bonus'] = 0.15;
                //get upline retail profit bonus
                $this->getOverrideRetailProfitBonus($data);
            }
            else
            {
                //getOverride retail profit bonus
                $this->getOverrideRetailProfitBonus($data);
            }
        }
        elseif($data['rank'] >= 3)
        {
            $bonus_retail_profit   = (number_format(0.20, 2) * $total_price);
            //count retail profit 
            $wallet = Wallet::where('user_id', $data['user_id'])->first();
            $wallet->retail_profit = $wallet->retail_profit + $bonus_retail_profit;
            $wallet->save();
            //save bonus record to db
            $this->recordBonusToDb($data, $bonus_retail_profit);
        }
    }

    public function getOverrideRetailProfitBonus($data)
    {
        $upline = $this->getUpline($data['user_id']);

        if(!is_null($upline))
        {
            $upline_rank = $this->getUserRankId($upline->user_id);
            
            $data   = [
                'user_id'     => $upline->user_id,
                'rank'        => $upline_rank,
            ];

            $data['bonus_type']  = 2;
            $data['description'] = 'Override Retail Profit';

            if($data['bonus'] == 0.20)
            {   
                $wallet = Wallet::where('user_id', $data['user_id'])->first();

                if($data['rank'] >= 3)
                {
                    $bonus_override_retail_profit = (number_format($data['bonus'], 2) * $data['total_price']);
                    
                    $wallet->retail_profit = $wallet->retail_profit + $bonus_override_retail_profit;
                    $wallet->save();

                    $this->recordBonusToDb($data, $bonus_override_retail_profit);
                }
                elseif($data['rank'] == 2)
                {
                    $bonus_override_retail_profit = (number_format(0.05, 2)) * $data['total_price']);

                    $wallet->retail_profit = $wallet->retail_profit + $bonus_override_retail_profit;
                    $wallet->save();

                    $this->recordBonusToDb($data, $bonus_override_retail_profit);

                    $data['bonus'] = 0.15;
                    
                    //getOverride retail profit bonus
                    $this->getOverrideRetailProfitBonus($data);

                }
            }
            elseif($data['bonus'] == 0.15)
            {
                if($data['rank'] >= 3)
                {
                    $bonus_override_retail_profit = (number_format(0.15, 2)) * $data['total_price']);
                    
                    $wallet->retail_profit = $wallet->retail_profit + $bonus_override_retail_profit;
                    $wallet->save();

                    $this->recordBonusToDb($data, $bonus_override_retail_profit);
                }
                else
                {
                    //getOverride retail profit bonus
                    $this->getOverrideRetailProfitBonus($data);
                }
            }
        } 
    }
    //END Retail Profit Bonus

    //Bonus Personal Rebate
    public function getPersonalRebate($data)
    {
        if($data['rank'] >= 3)
        {
            // $prsnl_rebate  = $this->getPersonalRebate($id);
            $bonus_personal_rebate = number_format(0.2, 2) * $pv;
            $product               = Product::find($product_id);

            $wallet = Wallet::firstOrNew(['user_id'  => $id] );

            if( $wallet && $wallet->pv >= 100)
            {
                //$wallet->evoucher = $wallet->evoucher + $evoucher;
                $wallet->personal_rebate = $wallet->personal_rebate + $bonus_personal_rebate;
                $wallet->save();

                $data['description']     = "Personal Rebate Purchase For Product: ".$product->name." Bonus: ". $bonus_personal_rebate ."%";
               
                $this->recordBonusToDb($data, $bonus_personal_rebate);
            }

        }
        else
        {
            $this->getOverridePersonalRebate($data);
        }      
    }

    public function getOverridePersonalRebate($data)
    {
        $x = 1;
        //$last_highest_rank =  1;
        
        while($x > 0)
        {
            $evoucher       = 0;
            $parent         = $this->getUpline($data['user_id']);
            $user_rank      = $this->getUserRankId($data['user_id']);
            $parent_rank    = $this->getUserRankId(is_null($parent) ? 0 : $parent->user_id );
            //$last_rebate    = $this->getPersonalRebate($id);

            // echo 'id = '. $id;
            // echo 'parent_rank ='.$parent_rank.'<br/>';
            // echo 'user_rank ='.$user_rank.'<br/>';

            if(is_null($parent)){
                break;
            } else {
                if($parent_rank < 3)
                {
                    $id     = $parent->id;
                }
                elseif($parent_rank >= 3)
                {
                    // $parent_rebate      = $this->getPersonalRebate($parent->user_id);
                    // $balance_rebate     = $parent_rebate - $last_rebate;

                    $evoucher   = (0.20) * $data['total_pv'];

                    $wallet = Wallet::firstOrNew(['user_id'  => $parent->user_id] );

                    if( $wallet->pv >= 100){
                        //$wallet->evoucher = $wallet->evoucher + $evoucher;
                        $wallet->personal_rebate = $wallet->personal_rebate + $evoucher;
                        $wallet->save();

                        $data['user_id'] = $parent->user_id

                        $this->recordBonusToDb($data, $bonus_personal_rebate);
                    }

                    $x = 0;

                    // echo 'Parent = ' .$parent .'<br/>';
                    // echo '= Evoucher = ' .$evoucher .' <br/>';
                    // echo 'last_highest_rank = '. $last_highest_rank .'<br/>';
                }
            } 
        }
    }
    //END Bonus Personal Rebate

    //START Direct Sponsor
    public function getDirectSponsorBonus($data)
    {
        // $data   = [
        //             'user_id'     => $id,
        //             'rank'        => $rank,
        //             'total_pv'    => $pv;
        //             'product_id'  => $product_id, 
        //             'from_user_id'=> $id,
        //             'bonus'       => 0.20,
        //             'bonus_type'  => 5,
        //             'description' => 'Direct Sponsor'
        //          ];
        //for reference only

        $node           = Referral::where('user_id', $data['user_id'])->first();
        $node_rank      = $this->getUserRankId($data['user_id']);
        $node_wallet    = Wallet::where('user_id', $data['user_id'])->first();
        $first_pv       = $node_wallet->first_purchased;
        $second_pv      = $node_wallet->pv - $first_pv ; 

        $parent         = $this->getUpline($data['user_id']);

         //if($node_rank > 2 && ($node_rank <= $parent_rank) )
        if(!is_null($parent) )
        {
            $parent_rank    = $this->getUserRankId(is_null($parent) ? 0 : $parent->user_id );
            $parent_wallet  = Wallet::where('user_id', $parent->user_id)->first();
           
            if($parent_rank > 2 && ($node_rank <= $parent_rank) )
            {
                
                // $bonus         
                $first_bonus    = $first_pv * number_format(0.5, 2);
                $second_bonus   = $second_pv * number_format(0.2, 2);
                $total_bonus    = $first_bonus + $second_bonus;

                if($parent_wallet->pv >= 100)
                {
                    $parent_wallet->direct_sponsor = $parent_wallet->direct_sponsor + $total_bonus; 
                    $parent_wallet->save();

                    $data['user_id']    = $parent->user_id;

                    $this->recordBonusToDb($data, $total_bonus);
                } 
                else
                {
                    $data['user_id']    = $parent->user_id;

                    $first_bonus    = $first_pv * number_format(0.5, 2);
                    $second_bonus   = $second_pv * number_format(0.2, 2);
                    $total_bonus    = $first_bonus + $second_bonus;

                    $this->getIndirectSponsorBonus($data, $total_bonus);

                }
            }
            elseif($parent_rank > 2 && ($node_rank > $parent_rank) )
            {
                // $bonus       = number_format(0.5, 2);
                $first_bonus    = $first_pv * number_format(0.3, 2);
                $second_bonus   = $second_pv * number_format(0.1, 2);
                $total_bonus    = $first_bonus + $second_bonus;

                if($parent_wallet->pv >= 100)
                {
                    $parent_wallet->direct_sponsor = $parent_wallet->direct_sponsor + ($first_bonus + $second_bonus);
                    $parent_wallet->save();

                    $data['user_id']         = $parent->user_id;
                    $this->recordBonusToDb($data, $total_bonus);
                }

                // $balance_first_bonus  = number_format(0.2, 2);
                // $balance_second_bonus = number_format(0.1, 2);

                $data['user_id']= $parent->user_id;
                $first_bonus    = $first_pv * number_format(0.2, 2);
                $second_bonus   = $second_pv * number_format(0.1, 2);
                $total_bonus    = $first_bonus + $second_bonus;

                $this->getIndirectSponsorBonus($data, $total_bonus);

            }
            elseif($parent_rank <= 2)
            {
                $first_bonus    = $first_pv * number_format(0.5, 2);
                $second_bonus   = $second_pv * number_format(0.2, 2);
                $total_bonus    = $first_bonus + $second_bonus;

                $this->getIndirectSponsorBonus($data, $total_bonus);
            }
        }
    } 

    public function getIndirectSponsorBonus($data, $total_bonus)
    {
        $upline = $this->getUpline($data['user_id']);

        if(!is_null($upline))
        {
            $upline_rank    = $this->getUserRankId($upline->user_id);
            $upline_wallet  = Wallet::where('user_id', $upline->user_id )->first();

            if($upline_rank >= 3 && $upline_wallet->pv >= 100)
            {
                $upline_wallet  = Wallet::where('user_id', $upline->user_id )->first();
                $upline_wallet->direct_sponsor = $upline_wallet->direct_sponsor + $total_bonus;
                $upline_wallet->save();

                $data['user_id']         = $upline->user_id;
                $data['bonus_type_id']   = 6;
                $data['description']     = "Indirect Sponsor";

                $this->recordBonusToDb($data, $total_bonus);
            }
            else
            {
                $data['user_id'] = $upline->user_id;
                $this->getIndirectSponsorBonus($data, $total_bonus);
            }
        }  
    }

    //END Direct Sponsor


    //Calculate Personal GPV with personal PV
    public function calculate_active_do_personal_gpv($user_id)
    {
        $root = Referral::where('user_id', $user_id)->first();
        $root_wallet = Wallet::where('user_id', $user_id)->first();
 
        $descendants = $root->getDescendants();
        $first_pv_purchased = 0;
        $personal_gpv = 0;
        $first_gpv_purchased = $root_wallet ? $root_wallet->first_purchased:0;
        $right        = 0;
        $qualified    = array();

        foreach ($descendants as $descendant)
        {
            $rank = $this->getUserRankId($descendant->user_id);

            if($rank < 4 && $descendant->rgt > $right)
            {
                $wallet = Wallet::where('user_id', $descendant->user_id)->first();

                $first_gpv_purchased = $first_gpv_purchased + ($wallet ? $wallet->first_purchased:0) ;
                $personal_gpv = $personal_gpv + ($wallet ? $wallet->pv:0);//without root personal pv
                $qualified[]  = $descendant->toArray();
            }
            elseif ($rank >= 4 )
            {
                if($right < $descendant->rgt)
                {
                    $right = $descendant->rgt;
                }
            }
        }

        $root_wallet = Wallet::where('user_id', $user_id)->first();//root personl pv

        $active_do = ActiveDo::where('user_id', $user_id)->first();
        $active_do->personal_gpv = $personal_gpv + ($root_wallet ? $root_wallet->pv:0);
        $active_do->first_gpv_purchased = $first_gpv_purchased;
        $active_do->save();

        // echo '<pre>';
        // print_r($qualified);
        // echo '</pre>';
        // echo '</br>';
        // echo $personal_gpv;
        // echo '</br>';
        // echo $right;

        //return $active_do;
    }
    //Calculate Personal GPV without personal PV
    //END

    public function calculate_total_group_pv()
    {
        $users = User::all();

        foreach($users as $user)
        {
            $total_pv = 0;

            if($user->rank_id >= 4)
            {
                $node        = Referral::where('user_id', $user->id)->first();
                $descendants = $node->getDescendantsAndSelf(); 
                
                foreach($descendants as $descendant)
                {
                    $wallet = Wallet::where('user_id', $descendant->user_id)->first();
                    $total_pv = $total_pv + (is_null($wallet) ? 0:$wallet->pv);
                }

                $active_do = ActiveDo::where('user_id', $user->id)->first();
                $active_do->total_group_pv = $total_pv;
                $active_do->save();
            }
        }
    }

    public function recordBonusToDb($data, $total_bonus)
    {
        $bonus = new Bonus;
        $bonus->user_id = $data['user_id']; 
        $bonus->amount  = $total_bonus;
        $bonus->bonus_type_id = $data['bonus_type'];
        $bonus->description   = $data['description'];
        $bonus->from_user_id  = $data['from_user_id'];
        $bonus->save();
    }

     public function recordUserBonuses()
    {
        // $retail_profit;
        // $personal_rabate;
        // $direct_sponsor;
        // $group; //DO & SDO up to @ 2 GEN DO/SDO below
        // $do_cto; //DO
        // $sdo_group; //SDO
        // $sdo_cto; //SDO

        $users = User::with(['wallet', 'active_do', 'active_sdo'])->get();
        foreach ($users as $user) {
            $bonus = new UserBonus;
            $bonus->user_id         = $user->id;
            $bonus->retail_profit   = $user->wallet->retail_profit;
            $bonus->personal_rebate = $user->wallet->personal_rebate;
            $bonus->direct_sponsor  = $user->wallet->direct_sponsor;
            $bonus->do_group_bonus  = $user->active_do->do_group_bonus;
            $bonus->sdo_group_bonus = $user->active_sdo->sdo_group_bonus;
            $bonus->sdo_sdo         = $user->active_sdo->sdo_to_sdo_bonus;
            $bonus->do_cto_pool     = $user->active_do->cto_value_share;
            $bonus->sdo_cto_pool    = $user->active_sdo->cto_value_share;
            $bonus->total_bonus     = $this->countTotalBonus($user);
            $bonus->month           = Carbon::now()->month;
            $bonus->year            = Carbon::now()->year;
            $bonus->save();
        }

        // $activeUsers = activeUsers($users);
        // array_walk($activeUsers, 'recordBonus');

    }

    public function getUpline($id)
    {
        $referral   = Referral::where('user_id', $id)->first();
        
        if($referral)
        {
            $parent_id  = $referral->parent_id;
            $upline     = Referral::where('user_id',$parent_id)->first();
        }
        else
        {
            $upline = null;
        }
        
        return $upline;
    }

    public function getUserRank($id) //get rank name
    {
        $user = User::find($id);
        $rank = $user->rank->name;

        return $rank;
    }

    public function getUserRankId($id) //get rank id
    {
        //return ( $id = 0 || $id = 'null') ? 'null' : $rank_id = User::find($id)->rank_id;
        $user = User::find($id);
        $rank = $user != null ? $user->rank_id: 0;

        return $rank;
    }
}