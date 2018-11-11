<?php namespace App\Traits;

use App\Models\ActiveDo;
use App\Models\ActiveSdo;
use App\Models\Bonus;
use App\Models\Referral;
use App\Models\Wallet;
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
    //Retail Profit Bonus
    public function getRetailProfitBonus($data)
    {
        if($data['rank'] == 1)
        {
            $this->getOverrideRetailProfitBonus($data);
        }
        elseif($data['rank'] == 2)
        {
            $wallet = Wallet::where('user_id', $data['user_id'])->first();
            if($wallet && $wallet->purchased >= 2)
            {
                //count retails profit and update data
                $bonus_retail_profit   = (number_format(0.05, 2) * $data['total_price']);
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
            $bonus_retail_profit   = (number_format(0.20, 2) * $data['total_price']);
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
            
            
            $data['user_id']     = $upline->user_id;
            $data['rank']        = $upline_rank;
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
                    $bonus_override_retail_profit = (number_format(0.05, 2)) * $data['total_price'];

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
                    $bonus_override_retail_profit = (number_format(0.15, 2)) * $data['total_price'];
                    
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
            $bonus_personal_rebate = number_format(0.2, 2) * $data['total_pv'];
            $product               = Product::find($data['product_id']);

            $wallet = Wallet::firstOrNew(['user_id'  => $data['user_id']]);

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

                    $override_bonus_personal_rebate   = (0.20) * $data['total_pv'];

                    $wallet = Wallet::firstOrNew(['user_id'  => $parent->user_id] );

                    if( $wallet->pv >= 100){
                        //$wallet->evoucher = $wallet->evoucher + $evoucher;
                        $wallet->personal_rebate = $wallet->personal_rebate + $evoucher;
                        $wallet->save();

                        $data['user_id'] = $parent->user_id;

                        $this->recordBonusToDb($data, $override_bonus_personal_rebate);
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

    //calculate 3 generations active do group bonus
    public function group_bonus($user_id)
    {
        $root               = Referral::where('user_id', $user_id)->first();
        $root_wallet        = Wallet::where('user_id', $user_id)->first();

        $descendants        = $root->getDescendants();
        $active_do_members  = array();

        $generation         = 2;
        $root_rgt           = $root->rgt;//gen1
        $rgt_gen2           = 0;
        $rgt_gen3           = 0;

        $bonus_gen2         = 0;
        $bonus_gen3         = 0;

        foreach ($descendants as $descendant ) 
        {
            $wallet = Wallet::where('user_id', $descendant->user_id)->first();
            $rank = $this->getUserRankId($descendant->user_id);
            $rgt  = $descendant->rgt;

            if($rank >= 4)
            {
                if($generation == 2 && ($rgt < $root_rgt && $rgt > $rgt_gen2))
                {
                    $rgt_gen2           = $descendant->rgt;
                    $active_do_members[]= $descendant->toArray();

                    $bonus_gen2         = $bonus_gen2 + $wallet->pv; 

                    $bonus                = new Bonus;
                    $bonus->user_id       = $root->user_id;
                    $bonus->bonus_type_id = 7;
                    $bonus->amount        = (number_format(0.05, 2) *($wallet->pv - $wallet->first_purchased)) + (number_format(0.05, 2)*$wallet->first_purchased);
                    $bonus->description   = "Do Group Bonus Gen 2";
                    $bonus->from_user_id  = $descendant->user_id;
                    $bonus->save();
                
                    if(!$descendant->isLeaf())
                    {
                        $generation = 3;
                        $rgt_gen2   = $descendant->rgt;
                    }
                }
                elseif($generation == 3 && ($rgt < $rgt_gen2 && $rgt > $rgt_gen3))
                {
                    $rgt_gen3           = $descendant->rgt;
                    $active_do_members[]= $descendant->toArray();

                    $bonus_gen3         = $bonus_gen3 + $wallet->pv; 

                    $bonus->user_id       = $root->user_id;
                    $bonus->bonus_type_id = 7;
                    $bonus->amount        = (number_format(0.05, 2) *($wallet->pv - $wallet->first_purchased)) + (number_format(0.05, 2)*$wallet->first_purchased);
                    $bonus->description   = "Do Group Bonus Gen 3";
                    $bonus->from_user_id  = $descendant->user_id;
                    $bonus->save();
                }
                elseif($generation == 3 && ($rgt > $rgt_gen2 && $rgt < $root_rgt ))
                {
                    $rgt_gen2           = $descendant->rgt;
                    $active_do_members[]= $descendant->toArray();

                    $bonus_gen2         = $bonus_gen2 + $wallet->pv; 

                    $bonus->user_id       = $root->user_id;
                    $bonus->bonus_type_id = 7;
                    $bonus->amount        = (number_format(0.05, 2) *($wallet->pv - $wallet->first_purchased)) + (number_format(0.05, 2)*$wallet->first_purchased);
                    $bonus->description   = "Do Group Bonus Gen 2";
                    $bonus->from_user_id  = $descendant->user_id;
                    $bonus->save();
                
                    if(!$descendant->isLeaf())
                    {
                        $generation = 3;
                        $rgt_gen2   = $descendant->rgt;
                    }
                }  
            }

        }

        $do_bonus = 0;//descendants personal group pv
        $root_gpv = ActiveDo::where('user_id', $user_id)->first()->personal_gpv;
        $root_first_purchased  = ActiveDo::where('user_id', $user_id)->first()->first_gpv_purchased;
        $total_gpv = $root_gpv;
        $total_first_gpv = $root_first_purchased; 

        foreach ($active_do_members as $member) 
        {  
            $do_member = ActiveDo::where('user_id', $member['user_id'])->first(); 

            $total_gpv          = $total_gpv + $do_member->personal_gpv;
            $total_first_gpv    = $total_first_gpv + $do_member->first_gpv_purchased;
        }

        $first_group_bonus  = $total_first_gpv * number_format(5/100, 2, '.', '');
        $second_group_bonus = ($total_gpv - $total_first_gpv) * number_format(12/100, 2, '.', '');
        $total_group_bonus  = $first_group_bonus + $second_group_bonus;


        // if($total_group_bonus > 0){
        //     $bonus = new Bonus;
        //     $bonus->user_id       = $user_id;
        //     $bonus->bonus_type_id = 8; //8 for DO Bonus Group 3 Generations
        //     $bonus->amount        = $total_group_bonus;
        //     $bonus->description   = "Do Group Bonus 3 Generations #15-36%";
        //     $bonus->save();
        // }

        if(($total_gpv > 0 || $total_group_bonus > 0) && ($root_wallet && $root_wallet->pv >= 100)){
            $active_do = ActiveDo::where('user_id', $user_id)->first();
            $active_do->generations_gpv = $total_gpv;
            $active_do->do_group_bonus  = $total_group_bonus;
            $active_do->gen_first_purchased = $total_first_gpv;
            $active_do->save();
        }
    }
    //END calculate 3 generations active do group bonus

    public function do_cto_bonus()
    {
        $do_members = ActiveDo::all();
        $cnt = 0;
        $dp  = 0;
        $total_dp   = 0;
        $overall_dp = 0;
        $right      = 0;

        $qualified_members = array();

        $year  = (new DateTime)->format("Y");
        $month = (new DateTime)->format("n");

        if($month == 1){
            $month = 12;
            $year  = $year - 1;
        } else {
            $month = $month - 1;
        }


        $sale = Sale::where('month', $month)->where('year', $year)->first();//100000; //set default to 100k for testing
        $total_sale = $sale->total_sale; //MYR
        $total_pv   = $sale->total_pv; //Point 

        $cto_pool = number_format((8/100*$total_pv), 2, '.', ''); //8% do cto bonus

        $total_shares = 0;
        $total_group_pv = 0;

        foreach ($do_members as $member) 
        {
           $node        = Referral::where('user_id', $member->user_id)->first();
           //$descendants = $node->getImmediateDescendants();
           $descendants = $node->getDescendants();

           foreach ($descendants as $descendant) 
           {
               //$do = ActiveDo::where('user_id', $descendant->user_id)->first();

               // if(!is_null($do) && $do->personal_gpv >= 5000)
               // {
               //      $cnt = $cnt + 1;
               //      $qualified_members[] = $do->personal_gpv;
               // }
                $rank = $this->getUserRankId($descendant->user_id);
                
                if($rank >= 4 && $descendant->rgt > $right)
                {
                    $do = ActiveDo::where('user_id', $descendant->user_id)->first();
                    //if(!is_null($do) && $do->personal_gpv >= 5000)//original
                    if(!is_null($do) && $do->total_group_pv >= 5000)
                    {
                        $cnt = $cnt + 1;
                        $qualified_members[] = $do->total_group_pv;

                        $right = $descendant->rgt;
                    }  
                }
           }

           $right = 0;

           if(count($qualified_members) > 2)
           {
                if(count($qualified_members) >= 5)
                {
                    $active_do = ActiveDo::where('user_id', $member->user_id)->first();
                    
                    if($active_do->rank == 'District Officer')
                    {
                        $merit = new SdoMerit;
                        $merit->user_id = $member->user_id;
                        $merit->branch5 = $merit->branch5 + 1;
                        $merit->save();
                        // $active_do->branch5 = $active_do->branch5 + 1;
                        // $active_do->save();

                        //check if qulified to upgrade to sdo or not
                    }
                    // else
                    // {
                    //     $sdo_license = SdoLicense::firstOrNew(['user_id' => $member->user_id]);
                    //     $sdo_license->branch5 = $sdo_license->branch5 + 1;
                    //     $sdo_license->save();
                    // } 
                }
                else 
                {
                    $active_do = ActiveDo::where('user_id', $member->user_id)->first();

                    if($active_do->rank == 'District Officer')
                    {
                        
                        $merit = new SdoMerit;
                        $merit->user_id = $member->user_id;
                        $merit->branch3 = $merit->branch3 + 1;
                        $merit->save();

                        //check if qulified to upgrade to sdo or not
                    }
                    // else
                    // {
                    //     $sdo_license = SdoLicense::firstOrNew(['user_id' => $member->user_id]);
                    //     $sdo_license->branch5 = $sdo_license->branch5 + 1;
                    //     $sdo_license->save();
                    // } 
                }

                $partitions = array_chunk($qualified_members, 3);

                $n_array = count($partitions);

                for($i = 0; $i < $n_array; $i++)
                {
                    if(count($partitions[$i]) == 3)
                    {
                        $min = min($partitions[$i]);
                        echo "<br/>";
                        echo "<pre>";
                        print_r($partitions[$i]);    
                        echo "<pre/>";
                        print_r($min);
                        echo "<br/>";
                        echo $n_array;
                        echo "<br/>";

                        if($min < 40000)
                        {
                            $dp = floor($min/5000);

                            if($dp > 3) $dp = 3;   
                        }
                        elseif($min >= 40000 && $min < 60000)
                        {
                            $dp = 4;
                        }elseif($min >= 60000) $dp = 5;
                    } 

                    $total_dp = $total_dp + $dp;
                    $dp = 0;
                }
           }

            $active_member = ActiveDo::where('user_id', $member->user_id)->first();
            $active_member->cto_unit_share = $total_dp;
            $active_member->save();

            $overall_dp = $overall_dp + $total_dp;
            $total_dp   = 0;
            $dp         = 0;
            $qualified_members = null;
            echo 'overall dp = '.$overall_dp;
            echo '<br/>';
            echo 'user_id ='. $member->user_id;
            echo '<br/>';
        }

        $cto_value_share = number_format($cto_pool/$overall_dp, 2, '.', ''); //value share perunit
        echo $total_pv;
        echo '<br/>';
        echo 'CTO Value Share Perunit = '.$cto_value_share;
        echo '<br/>';

        $sale->do_cto_val_unit = $cto_value_share;
        $sale->save();

        $updateDos = ActiveDo::where('cto_unit_share', '>', 0)->get();

        foreach($updateDos as $updateDo){
            $updateDo->cto_value_share = $updateDo->cto_unit_share * $cto_value_share;
            $updateDo->save();
        }
    }

    public function sdo_cto_bonus()
    {
        //5% bonus - requirement 5k from 5 direct sponsor
        $sdo_members    = ActiveSdo::all();

        $qualified_members = array();

        $sales          = 100000; //set default to 100k for testing

        $cto_pool       = (5/100)*$sales; //5% sdo cto bonus

        $total_shares   = 0;
        $shares = 0;

        foreach($sdo_members as $member)
        {
            $members_5k     = 0;
            $root = Referral::where('user_id', $member->user_id)->first();

            $children = $root->getDescendants();

            if(count($children) >= 4)
            {
                foreach ($children as $child)
                {
                    $wallet = Wallet::where('user_id', $child->user_id)->first();
                    if($wallet && $wallet->pv >= 5000)
                    {
                        $members_5k++;
                        $qualified_members[] = $child;
                    } 
                }

                if($members_5k/5 > 0)
                {
                    $shares = floor($members_5k/5);

                    $qualified_members[] = $root;
                    //     'user_id' => $member->user_id,
                    //     'shares'  => $shares
                    // ];

                    // $active_sdo = ActiveSdo::where('user_id', $member->user_id)->first();
                    // $active_sdo->cto_unit_share = $shares;
                    // $active_sdo->save();
                }
            }

            $total_shares   = $total_shares + $shares;
        }

        if($total_shares > 0) $cto_value_per_unit = number_format(($cto_pool/$total_shares), 2, '.', '');
        else $cto_value_per_unit = 0;

        if(count($qualified_members) > 0)
        {
            $i = 0;
            foreach ($qualified_members as $qmember)
            {
                // $qualified_sdo = ActiveSdo::where('user_id', $qmember[$i++]['user_id'])->first();
                // $qualified_sdo->cto_unit_share = $qmember[$i++]['shares'];
                // $qualified_sdo->cto_value_share= $qmember[$i++]['shares'] * $cto_value_per_unit;
                // $qualified_sdo->save();
                // echo '<br>';
                // echo '<pre>';
                // print_r($qmember);
                // echo '</pre>';
                echo $qmember[$i++]['user_id'];
            }
        }
        
    }

    public function countTotalBonus($user)
    {
        $totalBonus = $user->wallet->retail_profit + $user->wallet->personal_rebate + $user->wallet->direct_sponsor 
                      + $user->active_do->do_group_bonus + $user->active_sdo->sdo_group_bonus + $user->active_sdo->sdo_to_sdo_bonus
                      + $user->active_do->cto_value_share + $user->active_sdo->cto_value_share;

        return $totalBonus;
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

    public function getMembersOfThreeGenDo($id)
    {
        $root = Referral::where('user_id', $id)->first();
        $second_rgt = 0;

        $first_gen_members = array();
        $second_gen_members= array();
        $third_gen_members = array();

        $referrals = $root->getDescendants();
        
        foreach ($referrals as $referral) {
            $rank = $this->getUserRankId($referral->user_id);

            if ($rank < 4 && ($referral->rgt < $root->rgt && $referral->rgt > $second_rgt)) {
                $wallet = Wallet::where('user_id', $referral->user_id)->first();
                if($wallet->pv > 0 || $wallet->first_purchased)
                {
                    $first_gen_members[] = $referral->toArray();
                } 
            } 
            else
            {
                $second_rgt = $referral->rgt;
            } 
        }

        $second_gen_do_members = $this->getSecondGenDoMembers($id);
        $third_gen_do_members  = $this->getThirdGenDoMembers($second_gen_do_members);

        dump($second_gen_do_members);
        echo '<br>';
        dump($third_gen_do_members);


    }

    public function getSecondGenDoMembers($id)
    {
        $root = Referral::where('user_id', $id)->first();
        $rgt  = $root->rgt;

        $secondGenRgt = 0;

        $second_gen_do_members = array();

        $descendants = $root->getDescendants();

        foreach ($descendants as $descendant) 
        {
            $rank = $this->getUserRankId($descendant->user_id);

            if($rank >= 4 && ($descendant->rgt > $secondGenRgt && $descendant->rgt < $rgt)){

                $second_gen_do_members[] = $descendant->toArray();
                $secondGenRgt    = $descendant->rgt;

            }
        }

        return $second_gen_do_members;
    }

    public function getThirdGenDoMembers($secondGenDoMembers)
    {
        $third_gen_do_members = array();

        if(!is_null($secondGenDoMembers))
        {
            foreach ($secondGenDoMembers as $member) 
            {
                
                $root = Referral::where('user_id', $member['user_id'])->first();
                $rgt  = $root->rgt;

                $secondGenRgt = 0;

                $descendants = $root->getDescendants();

                foreach ($descendants as $descendant) {
                    $rank = $this->getUserRankId($descendant->user_id);

                    if($rank >= 4 && ($descendant->rgt > $secondGenRgt && $descendant->rgt < $rgt)){

                        $third_gen_do_members[] = $descendant->toArray();
                        $secondGenRgt    = $descendant->rgt;

                    }
                }         
            }
        }

        return $third_gen_do_members;
    }
}