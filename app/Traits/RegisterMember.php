<?php namespace App\Traits;


use App\Models\Rank;
use App\Models\Referral;
use App\Models\ActiveDo;
use App\Models\ActiveSdo;
use App\Models\Profile;
use App\Models\NewUser;
use App\Models\NewProfile;
use App\Models\Wallet;
use App\Models\Address;

use App\Admin;
use App\User;

use Validator;
use Session;
use Cart;
use DateTime;
use Auth;

trait RegisterMember
{
    public function saveMemberToDb($newUser)
    {
        try

        {
            $user = new User;
            $user->username     = $newUser->username;
            $user->password     = $newUser->password;
            $user->email        = $newUser->email;
            $user->mobile_no    = $newUser->mobile_no;
            $user->introducer   = $newUser->introducer;
            $user->rank_id      = $newUser->rank_id;
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
          
            $address = new Address;
            $address->name = $newUser->newProfile->name;
            $address->street1 = $newUser->newProfile->street;
            $address->street2 = "";
            $address->poscode = $newUser->newProfile->postcode;
            $address->city = $newUser->newProfile->city;
            $address->state = $newUser->newProfile->state;
            $address->country = $newUser->newProfile->country;
            $address->reminder_flag = "x";
            $address->created_by = Auth::guard('admin')->user()->id;
            $address->created_at = \Carbon\Carbon::now();

            $user->save();
            $user->profile()->save($profile);
            $user->address()->save($address);

            if($user && $profile && $address)
            {
                $nUser = NewUser::find($newUser->id);
                $nUser->delete();

                $nProfile = NewProfile::find($newUser->newProfile->id);
                $nProfile->delete();
            }

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

            $wallet = $this->updateOrCreateWallet($user->id);

            return $user;
        }
        catch(Exception $e){

            $return['message'] = $e->getMessage();
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

    public function updateOrCreateWallet($user_id)
    {
        $total_pv         = $this->getTotalPv();
        $total_rmvp       = $this->getTotalRmvp();

        $wallet = Wallet::firstOrNew(['user_id'  => $user_id]);
       
        if(!$wallet->exists || $wallet->purchased == 0)
        {
            $wallet->rmvp            = $wallet->rmvp + $total_rmvp;
            $wallet->pv              = $wallet->pv + $total_pv;
            $wallet->first_purchased = $total_pv; 
            $wallet->purchased       = 1;
        }
        else
        {
            $wallet->rmvp            = $wallet->rmvp + $total_rmvp;
            $wallet->pv              = $wallet->pv + $total_pv;
            $wallet->purchased       = $wallet->purchased + 1;
        }
        
        $wallet->save();

        $updateUserRank = $this->updateUserRank($user_id);
    }

    public function getTotalPv()
    {
        $pv = 0;

        foreach (Cart::content() as $item) {
            $product = Product::find($item->id);
            $pv      = $pv + ($item->qty * $product->pv);
        }

        return $pv;
    }

    public function getTotalRmvp()
    {
        $rmvp = 0;

        foreach (Cart::content() as $item) {
            $product = Product::find($item->id);
            $rmvp     = $rmvp + ($item->qty * $product->wm_price);
        }

        return $rmvp;
    }

    public function updateUserRank($user_id)
    {
        $total_pv      = $this->getTotalPv();
        $qualifiedRank = $this->getQualifiedRank($user_id);
        
        $user = User::find($user_id);

        if($qualifiedRank > $user->rank_id)
        {
            $user->rank()->associate($qualifiedRank);
            $user->save(); 

            $referral = Referral::where('user_id', $user->id)->first();
            $referral->rank = $user->rank->code_name;
            $referral->save();
            
            if($qualifiedRank == 4)
            {
                $active_do = new ActiveDo;
                $active_do->user_id = $user->id;
                $active_do->rank    = $request->rank;
                $active_do->save();
            }
        }
    }

    public function getQualifiedRank($user_id)
    {
        $total_pv = $this->getTotalPv();

        switch ($total_pv) {
            case ($total_pv >= 200 && $total_pv < 1000):
                $rank_id = 2;
                break;
            case ($total_pv >= 1000 && $total_pv < 5000):
                $rank_id = 3;
                break;
            case ($total_pv >= 5000):
                $rank_id = 4;
                break;
            default:
                $rank_id = 1;
                break;
        }

        return $rank_id;
    }

}