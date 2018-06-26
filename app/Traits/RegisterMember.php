<?php namespace App\Traits;


use App\Models\Rank;
use App\Models\Referral;
use App\Models\ActiveDo;
use App\Models\ActiveSdo;
use App\Models\Profile;
use App\Models\NewUser;
use App\Models\NewProfile;

use App\Admin;
use App\User;

trait RegisterMember
{
    public function saveMemberToDb($newUser)
    {
    	$user = new User;
        $user->username = $newUser->username;
        $user->password = $newUser->password;
        $user->email    = $newUser->email;
        $user->mobile_no= $newUser->mobile_no;
        $user->introducer= $newUser->introducer;
        $user->rank_id  = $newUser->rank_id;
        $user->security_code = $newUser->security_code;
        
        $profile = new Profile;     
        $profile->full_name = $newUser->newProfile->name;
        $profile->dob       = $newUser->newProfile->dob;
        $profile->gender    = $newUser->newProfile->gender;
        $profile->marital_status = $newUser->newProfile->marital_status;
        $profile->id_type   = $newUser->newProfile->id_type;
        $profile->id_no     = $newUser->newProfile->id_no;
        $profile->id_pic    = $newUser->newProfile->id_pic;
        $profile->street    = $newUser->newProfile->street;
        $profile->city      = $newUser->newProfile->city;
        $profile->postcode  = $newUser->newProfile->postcode;
        $profile->state     = $newUser->newProfile->state;
        $profile->country   = $newUser->newProfile->country;
        $profile->contact_no    = $newUser->newProfile->mobile_no;

        $user->save();
        $user->profile()->save($profile);

        $rank_id = $user->rank_id;

        if($rank_id < 4)
        {
        	$this->removeDo($user->id);
        	$this->removeSdo($user->id);
        }
        elseif($rank_id == 4)
        {
        	$active_do = $this->registerDo($user->id);
                   
        	$this->removeSdo($user->id);
        }	
        elseif ($rank_id == 5) 
        {
        	$this->registerDo($id);
        	$this->registerSdo($id);
        }	

        $admin = Admin::where('username', $newUser->introducer)->first();

        if($admin)
        {
            $introducer = Admin::where('username', $user->introducer)->first();
            $introducer->total_referral = $introducer->total_referral + 1;
            $introducer->save();
        } else {
            $introducer = User::where('username', $user->introducer)->first();
            $introducer->total_referral = $introducer->total_referral + 1;
            $introducer->save();
        }	

        $referral = Referral::where('username',$introducer->username)->first();
        $code_rank = Rank::find($rank_id )->code_name;
            
        if(!is_null($referral))
        {
            $node = Referral::create(['user_id' => $user->id, 'username' => $user->username, 'rank' => $code_rank]);
            $node->makeChildOf($referral);
        } 
        else 
        {
            $root = Referral::create(['user_id' => $user->id, 'username' => $user->username, 'rank' => $code_rank]);
        }
    }

    public function registerDo($id)
    {
    	$active_do = new ActiveDo;
        $active_do->user_id = $id;
        $active_do->rank    = 4;
        $active_do->save();

        return $active_do;
    }

    public function registerSdo($id)
    {
    	$active_sdo = new ActiveSdo;
        $active_sdo->user_id = $id;
        $active_sdo->rank    = 5;
        $active_sdo->save();
    }

    public function removeDo($id)
    {
    	$active_do = ActiveDo::where('user_id', $id)->first();

    	if($active_do)
        {
           $active_do->delete();  
        }
    }

    public function removeSdo($id)
    {
    	$active_sdo = ActiveSdo::where('user_id', $id)->first();

    	if($active_sdo)
        {
            $active_sdo->delete();
        }
    }

}