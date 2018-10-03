<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Mail\VerifyEmail;

use App\Traits\RegisterStaff;
use App\Traits\RegisterMember;

use App\Models\Role;
use App\Models\Rank;
use App\Models\Bank;
use App\Models\Product;
use App\Models\Package;
use App\Models\Profile;
use App\Models\Address;

use App\Admin;
use App\User;

use Validator;
use Session;
use Carbon\Carbon;
use DB;
use Mail;
use Cart;

use App\Http\Controllers\ShopController;

class RegisterController extends Controller
{
	use RegisterStaff, RegisterMember;

	public function registrationStaffForm()
    {
        $roles = Role::all();
        return view('registers.staff', compact('roles'));
    }

    public function registerStaff(Request $request)
    {
        $request->validate([
                'username'  => 'required|unique:admins,username',
                'password'  => 'required|min:6|confirmed',
                'email'     => 'required|unique:admins,email',
                'mobile_no' => 'required',
                'role'      => 'required',
                'security_code'     => 'required',
            ]);

        $hashedCode = Auth::guard('admin')->user()->security_code;

        if(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode)){
            
            $admin = new Admin;
            $admin->username        = $request->username;
            $admin->password        = bcrypt($request->password);
            $admin->email           = $request->email;
            $admin->mobile_no       = $request->mobile_no;
            $admin->security_code   = bcrypt($request->password);
            $admin->save();
            
            $admin->assignRole($request->role);

            return back()->with('success', 'Successfully register staff: '. $admin->username);
        }

        return back()->with('fail', 'Failed to register staff: '.$request->username . '.Please make sure your security code is correct or try again');
    }

    public function registrationMemberForm()
    {
        $ranks      = Rank::all();
        $banks      = Bank::all();
        $products   = Product::all();
        $packages   = Package::all();

        return view('registers.member', compact('ranks', 'banks', 'products', 'packages'));
    }

    public function registerMember(Request $request)
    {
        // try{
            $introducer = $request->introducer;
            $admin      = Admin::where('username', $introducer)->first();
            $member     = User::where('username', $introducer)->first();
            $rank       = Rank::where('name', $request->rank)->first();

            if ($admin){
                $table = 'admins';
            } else {
                $table = 'users';
            } 

            //$table = count($admin) == 1 ? 'admins':'users';
            
            $request->validate([
                'country'   => 'required',
                'username'  => 'required|unique:users,username',
                //'password'  => 'required|min:6|confirmed',
                'type'      => 'required',
                'name'      => 'required',
                'dob'       => 'required',
                'gender'    => 'required',
                'marital_status'    => 'required',
                'race'              => 'required',
                'id_type'           => 'required',
                'id_no'             => 'required',
                'id_pic'            => 'image|mimes:jpeg,bmp,png|max:5120',
                'introducer'        => 'required|exists:'.$table.',username',
                'mobile_no'         => 'required',
                'email'             => 'required',
                'street'            => 'required',
                'city'              => 'required',
                'postcode'          => 'required',
                'state'             => 'required',
                'bank'              => 'required',
                'account_no'        => 'required',
                'acc_holder_name'   => 'required',
                'check1'            => '',
                'account_type'      => 'required',
                'beneficiary_name'  => '',
                'relationship'      => 'required_with:beneficiary_name',
                'beneficiary_address'   => 'required_with:beneficiary_name',
                'beneficiary_mobile_no' => 'required_with:beneficiary_name, beneficiary_address',
                'rank_id'               => '',
                'security_code'         => 'required',
            ]);

            if($table == "admins")
            {
                $hashedCode = Auth::guard('admin')->user()->security_code;
            } else {
                $hashedCode = Auth::guard('web')->user()->security_code;
            }

            $random_password        = str_random(8);
            $hashed_random_password = Hash::make($random_password);
            
            if(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode))
            {
                
                //$this->saveToPreregisterTable($request->all(), $rank->id);
                $user = $this->saveMemberToDb($request->all(), $hashed_random_password,  $rank->id);
                $id = Auth::guard('admin')->user()->id;

                Mail::to($user->email)->send(new VerifyEmail($user, $random_password));
                //return view('admin.firstTimePurchaseRegistration', compact('user'));
                //return redirect()->route('firstTimePurchaseRegistration', compact('user', 'id'));
                return redirect('registers/member')->with('status', 'Activation code have been sent to this user - '.$user->username );
            }
            elseif (Auth::guard('web')->check() && Hash::check($request->security_code, $hashedCode)) 
            {    
                $user = $this->saveMemberToDb($request->all(), $hashed_random_password, $rank->id);
                // $id = Auth::guard('web')->user()->id;

                Mail::to($user->email)->send(new VerifyEmail($user, $random_password));

                // return redirect()->route('firstTimePurchaseRegistration', compact('user', 'id'));
                return redirect('registers/member')->with('status', 'Activation code have been sent to this user - '.$user->username );
            }

            // session()->forget('user');
            // session()->forget('profile');
            // $newUser = NewUser::truncate();
            // $newProfile = NewProfile::truncate();

            return back()->withInput()
                         ->with('fail', 'Failed to register! Please Check Your Security Code Is Correct Or Try Again. ');
        // }
        // catch(\Exception $e)
        // {
        //     return $e->getMessage();
        // }
    }

    public function firstTimePurchaseRegistration()
    {
        // $products = Product::all();
        // $packages = Package::all();

        $data = (new ShopController)->skgMall();
        // dd($data);
        $product = $data['product'];
        $count = $data['count'];
        $id = $data['id'];

        return view('firstTimePurchaseRegistration', compact('product', 'id','count'));
    }

    public function saveToPreregisterTable($request, $rank_id)
    {
        if(Auth::guard('admin')->check() == true)
        {
            $guard = "admin";
        }
        else{
           $guard = "web";
        }

        //$user = new NewUser;
        $user = new User;
        $user->username      = $request['username'];
        $user->password      = bcrypt($request['password']);
        $user->security_code = bcrypt($request['password']); 
        $user->email         = $request['email'];
        $user->email_token   = Password::getRepository()->createNewToken();
        $user->mobile_no     = $request['mobile_no'];
        $user->introducer    = $request['introducer'];
        $user->rank_id       = $rank_id;
        $user->status        = "pre";
        $user->save();

        Session::put('uid',$user->id);

        $profile = new Profile;     
        $profile->full_name      = $request['name'];
        $profile->dob            = $request['dob'];
        $profile->gender         = $request['gender'];
        $profile->marital_status = $request['marital_status'];
        $profile->id_type        = $request['id_type'];
        $profile->id_no          = $request['id_no'];
        $profile->id_pic         = $request['id_pic'];
        $profile->street         = $request['street'];
        $profile->city           = $request['city'];
        $profile->postcode       = $request['postcode'];
        $profile->state          = $request['state'];
        $profile->country        = $request['country'];
        $profile->contact_no     = $request['mobile_no'];

        $address = new Address;
        $address->name      = $profile->name;
        $address->street1   = $profile->street;
        $address->street2   = "";
        $address->poscode   = $profile->postcode;
        $address->city      = $profile->city;
        $address->state     = $profile->state;
        $address->country   = $profile->country;
        $address->reminder_flag = "x";
        $address->created_by = Auth::guard($guard)->user()->id;
        $address->created_at = \Carbon\Carbon::now();
        
        $user->profile()->save($profile);
        $user->address()->save($address);
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
}
