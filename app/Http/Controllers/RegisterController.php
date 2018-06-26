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
use App\Models\NewUser;
use App\Models\NewProfile;

use App\Admin;
use App\User;

use Validator;
use Session;
use Carbon\Carbon;
use DB;
use Mail;
use Cart;

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
            $admin->username   = $request->username;
            $admin->password   = bcrypt($request->password);
            $admin->email      = $request->email;
            $admin->mobile_no  = $request->mobile_no;
            $admin->security_code   = bcrypt($request->password);
            $admin->save();
            // $input = $request->all();

            // $input['password'] = bcrypt($request->password);

            // $admin = Admin::create($input);

            $admin->assignRole($request->role);

            return back()->with('success', 'Successfully register staff: '. $admin->username);
        }

        return back()->with('fail', 'Failed to register staff: '.$request->username . '.Please make sure your security code is correct or try again');
    }

    public function registrationMemberForm()
    {
        $ranks  = Rank::all();
        $banks  = Bank::all();
        $products = Product::all();
        $packages = Package::all();

        return view('registers.member', compact('ranks', 'banks', 'products', 'packages'));
    }

    public function registerMember(Request $request)
    {
        try{
            $introducer = $request->introducer;
            $admin = Admin::where('username', $introducer)->first();
            $member= User::where('username', $introducer)->first();
            $rank  = Rank::where('name', $request->rank)->first();

            if (count($admin) == 1){
                $table = 'admins';
            } else {
                $table = 'users';
            } 
            
            $request->validate([
                'country'   => 'required',
                'username'  => 'required|unique:users,username',
                'password'  => 'required|min:6|confirmed',
                'type'      => 'required',
                'name'      => 'required',
                'dob'       => 'required',
                'gender'    => 'required',
                'marital_status'    => 'required',
                'race'              => 'required',
                'id_type'           => 'required',
                'id_no'             => 'required',
                'id_pic'            => 'image|mimes:jpeg,bmp,png|max:2040',
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
                'rank_id'           => '',
                'security_code'     => 'required',
            ]);

            $hashedCode = Auth::guard('admin')->user()->security_code;

            if(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode))
            {
                $user = new NewUser;
                $user->username   = $request->username;
                $user->password   = bcrypt($request->password);
                $user->security_code = bcrypt($request->password); 
                $user->email      = $request->email;
                $user->email_token   = Password::getRepository()->createNewToken();
                $user->mobile_no  = $request->mobile_no;
                $user->introducer = $request->introducer;
                $user->rank_id    = $rank->id;
                $user->save();
                Session::put('uid',$user->id);

                $profile = new NewProfile;     
                $profile->full_name = $request->name;
                $profile->dob       = $request->dob;
                $profile->gender    = $request->gender;
                $profile->marital_status = $request->marital_status;
                $profile->id_type   = $request->id_type;
                $profile->id_no     = $request->id_no;
                $profile->id_pic    = $request->id_pic;
                $profile->street    = $request->street;
                $profile->city      = $request->city;
                $profile->postcode  = $request->postcode;
                $profile->state     = $request->state;
                $profile->country   = $request->country;
                $profile->contact_no    = $request->mobile_no;
                $user->newprofile()->save($profile);

                // Session::put('profile',$profile);

                // $pids = $request->pid;
                // $chck = 0;

                // foreach($pids as $pid)
                // {
                //  $product = Product::find($pid);
                //  Cart::add($product->id, 'Product: '.$product->name, $quantity, $product->wm_price);
                // }

                //return view('admin.firstTimePurchaseRegistration', compact('user'));
                return redirect()->route('firstTimePurchaseRegistration', compact('user'));
            }
            // session()->forget('user');
            // session()->forget('profile');

            return back()->withInput()
                         ->with('fail', 'Failed to register! Please Check Your Security Code Is Correct Or Try Again. ');
        }
        catch(\Exception $e)
        {
            return $e->getMessage();
        }
    }

    public function firstTimePurchaseRegistration()
    {
        $products = Product::all();
        $packages = Package::all();

        return view('firstTimePurchaseRegistration', compact('products', 'packages'));
    }

}
