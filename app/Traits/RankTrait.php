<?php 
namespace App\Traits;

use App\Models\Rank;

use App\User;
use App\Models\Referral;

trait RankTrait
{
   public function getUserRankId($id) //get rank id
    {
        //return ( $id = 0 || $id = 'null') ? 'null' : $rank_id = User::find($id)->rank_id;
        $user = User::find($id);
        $rank = $user != null ? $user->rank_id: 0;

        return $rank;
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
}