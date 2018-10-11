<?php namespace App\Traits;

use Illuminate\Support\Facades\Hash;
use App\Mail\VerifyEmail;

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
use App\VerifyUser;

use Validator;
use Session;
use Cart;
use DateTime;
use Auth;

trait RegisterMember
{
    public function saveMemberToDb($newUser, $hashed_random_password, $rank_id)
    {
        if(Auth::guard('web')->check())
        {
            $guard = 'web';
        }elseif(Auth::guard('admin')->check()){
            $guard = 'admin';
        }

        $user = new User;
        $user->username     = $newUser['username'];
        //$user->password     = $newUser->password;
        $user->password     = $hashed_random_password;
        $user->email        = $newUser['email'];
        $user->mobile_no    = $newUser['mobile_no'];
        $user->introducer   = $newUser['introducer'];
        $user->rank_id      = $rank_id;
        $user->security_code = Hash::make($newUser['security_code']);
        
        $profile = new Profile;     
        $profile->full_name = $newUser['name'];
        $profile->dob       = $newUser['dob'];
        $profile->gender    = $newUser['gender'];
        $profile->marital_status = $newUser['marital_status'];
        $profile->id_type   = $newUser['id_type'];
        $profile->id_no     = $newUser['id_no'];
        $profile->id_pic    = isset($newUser['id_pic']) ? $newUser['id_pic']:'';
        $profile->street    = $newUser['street'];
        $profile->city      = $newUser['city'];
        $profile->postcode  = $newUser['postcode'];
        $profile->state     = $newUser['state'];
        $profile->country   = $newUser['country'];
        $profile->contact_no= $newUser['mobile_no'];
      
        $address = new Address;
        $address->name      = $newUser['name'];
        $address->street1   = $newUser['street'];
        $address->street2   = "";
        $address->poscode   = $newUser['postcode'];
        $address->city      = $newUser['city'];
        $address->state     = $newUser['state'];
        $address->country   = $newUser['country'];
        $address->reminder_flag = "x";
        $address->created_by = Auth::guard($guard)->user()->id;
        $address->created_at = \Carbon\Carbon::now();

        $user->save();
        $user->profile()->save($profile);
        $user->address()->save($address);

        $verifyUser = VerifyUser::create([
            'user_id' => $user->id,
            'token' => sha1(time()),
        ]);

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

        $admin = Admin::where('username', $newUser['introducer'])->first();

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

    public function verifyUser($token)
    {
        $verifyUser = VerifyUser::where('token', $token)->first();

        if(isset($verifyUser) ){
            $user = $verifyUser->user;
            if(!$user->verified) {
                $verifyUser->user->verified = 1;
                $verifyUser->user->save();
                $status = "Your e-mail is verified. You can now login.";
            }else{
                $status = "Your e-mail is already verified. You can now login.";
            }
        }else{
            return redirect('/login')->with('warning', "Sorry your email cannot be identified.");
        }

        return redirect('/login')->with('status', $status);
    }

    protected function registered(Request $request, $user)
    {
        $this->guard()->logout();
        return redirect('/login')->with('status', 'We sent you an activation code. Check your email and click on the link to verify.');
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
            $product  = Product::find($item->id);
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