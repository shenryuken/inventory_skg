<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Http\Requests;


use App\Models\Profile;
use App\Models\ShareHolder;
use App\Admin;
use App\User;

use Validator;
use Session;
use Carbon\Carbon;
use DB;
use Image;


class ProfileController extends Controller
{
    public function create()
    {
    	return view('profiles.create');
    }

    public function edit($id)
    {
    	$profile = Profile::find($id);
    	return view('profiles.edit', compact('profile'));
    }

    public function store(Request $request)
    {
    	$request->validate([
    		'_token'            => 'required',
    		'full_name' 		=> 'required',
            'id_type'           => 'required',
    		'id_no'  	 		=> 'required',
    		'street'    		=> 'required',
    		'postcode'   		=> 'required',
    		'city' 		 		=> 'required',
    		'state'      		=> 'required',
    		'country'    		=> 'required',
    		'contact_no' 		=> 'required',
    		'contact_no2'		=> '',
    		'profileable_id'    => 'required',
    		'profileable_type' 	=> 'required'
    	]);

        if(Auth::check()){
            $hashedCode = Auth::user()->security_code;
        }
        elseif(Auth::guard('admin')->check()){
            $hashedCode = Auth::guard('admin')->user()->security_code;
        }
        
        if(Hash::check($request->security_code, $hashedCode)){
            $profile = Profile::create($request->except('_token', 'security_code'));
            return back()->with('success', 'Successfully Created Profile!');
        }
        
        return back()->with('fail', 'Failed to create profile! Please Check Your Security Code Is Correct Or Try Again. ');	
    }

    public function update(Request $request, $id)
    {
    	$profile = Profile::find($id);
        

    	$request->validate([
    		    'country'   => 'required',
                //personal
                'name'      => 'required_if:type,==,personal',
                'dob'       => 'required_if:type,==,personal',
                'gender'    => 'required_if:type,==,personal',
                'marital_status'    => 'required_if:type,==,personal',
                'race'              => 'required_if:type,==,personal',
                'id_type'           => 'required_if:type,==,personal',
                'id_no'             => 'required_if:type,==,personal|unique:profiles,id_no,'.$id,
                'id_pic'            => 'sometimes|image|mimes:jpeg,jpg,bmp,png|max:5120',
                //end personal
                //business
                'company_name'      => 'required_if:type,==,business',
                'company_registration_no' => 'required_if:type,==,business|unique:profiles,company_registration_no,'.$id,
                'comp_reg_cert'     => 'required_if:type,==,business|image|mimes:jpeg,jpg,bmp,png|max:5120',
                'company_logo'      => 'sometimes|image|mimes:jpeg,jpg,bmp,png|max:5120',
                'office_tel'        => 'required_if:type,==,business',
                'fax_no'            => 'required_if:type,==,business',
                'comp_email'        => 'required_if:type,==,business',
                'share_holder_name'             => 'required_if:type,==,business',
                'share_holder_dob'              => 'required_if:type,==,business',
                'share_holder_gender'           =>'required_if:type,==,business',
                'share_holder_marital_status'   => 'required_if:type,==,business',
                'share_holder_race'             => 'required_if:type,==,business',
                'share_holder_id_type'          => 'required_if:type,==,business',
                'share_holder_id_no'            => 'required_if:type,==,business',
                'share_holder_id_pic'           => 'required_if:type,==,business',
                //end business
                'mobile_no'         => 'required_if:type,==,personal',
                'email'             => 'required_if:type,==,personal',
                'street'            => 'required',
                'street2'           => '',
                'city'              => 'required',
                'postcode'          => 'required',
                'state'             => 'required',
                'check1'            => '',
                'beneficiary_name'  => '',
                'relationship'      => 'required_with:beneficiary_name',
                'beneficiary_address'   => 'required_with:beneficiary_name',
                'beneficiary_mobile_no' => 'required_with:beneficiary_name, beneficiary_address',
                'rank_id'               => '',
                'security_code'         => 'required',
    	]);

        if(Auth::check()){
            $hashedCode = Auth::user()->security_code;
        }
        elseif(Auth::guard('admin')->check()){
            $hashedCode = Auth::guard('admin')->user()->security_code;
        }

        if(Hash::check($request->security_code, $hashedCode))
        {
            if($profile->profileable->type == 'personal')
            {
                $profile->full_name   = $request->full_name;
                $profile->id_no       = $request->id_no;
                $profile->street      = $request->street;
                $profile->street2     = $request->street2;
                $profile->postcode    = $request->postcode;
                $profile->city        = $request->city;
                $profile->state       = $request->state;
                $profile->country     = $request->country;
                $profile->contact_no  = $request->contact_no;
                $profile->contact_no2 = $request->contact_no2;

                $profile->beneficiary_name      = $request->beneficiary_name;
                $profile->relationship          = $request->relationship;
                $profile->beneficiary_address   = $request->beneficiary_address;
                $profile->beneficiary_mobile_no = $request->beneficiary_mobile_no;
                $profile->save();
            } 
            elseif($profile->profileable->type == 'business')
            {
                $profile->company_name                  = $request->company_name;
                $profile->company_registration_no       = $request->company_registration_no;
                $profile->street                        = $request->street;
                $profile->street2                       = $request->street2;
                $profile->postcode                      = $request->postcode;
                $profile->city                          = $request->city;
                $profile->state                         = $request->state;
                $profile->country                       = $request->country;
                $profile->contact_no                    = $request->contact_no;
                $profile->contact_no2                   = $request->contact_no2;
                $profile->fax_no                        = $request->fax_no;
                $profile->save();

                $share_holder = ShareHolder::where('user_id', $profile->profileable_id )->first();
                $share_holder->name         = $request->share_holder_name;
                $share_holder->dob          = $request->share_holder_dob;
                $share_holder->gender       = $request->share_holder_gender;
                $share_holder->marital_status = $request->share_holder_marital_status;
                $share_holder->race         = $request->share_holder_race;
                $share_holder->id_type      = $request->share_holder_id_type;
                $share_holder->id_no        = $request->share_holder_id_no;
                $share_holder->mobile_no    = $request->share_holder_mobile_no;
                $share_holder->save();
                
            }
            return back()->with('success', $profile->profileable->username .' you are successfully updated your profile!');
        }

    	return back()->with('fail', 'Failed to update profile! Please Check Your Security Code Is Correct Or Try Again. ');   
    }

    public function show($id)
    {
    	$user    = User::find($id);
    	$profile = $user->profile;
    	$guard   = 'web';
        //dd($profile);

    	return view('profiles.show', compact('profile', 'guard'));
    }

    public function showAdmin($id)
    {
    	$admin   = Admin::find($id);
    	$profile = $admin->profile;
    	$guard   = 'admin';

    	return view('profiles.show', compact('profile', 'guard'));
    }

    public function uploadAvatar()
    {
        $user = Auth::user();
        return view('profiles.upload-avatar', compact('user'));    }

    public function postUploadAvatar()
    {
        $request->validate([

            'avatar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',

        ]);

        $avatar   = $request->file('avatar');
        $filename = time() . '.' . $avatar->getClientOriginalExtension();
        
        Image::make($avatar)->resize(200, 200)->save( public_path('/app/avatars/' . $filename ) );

        $user         = Auth::user();
        $user->avatar = $filename;
        $user->save();
        
        return back()
                ->with('success','You have successfully upload image.')
                ->with('image',$filename);
    
    }

    public function uploadIc()
    {
        $user   = Auth::user();
        $image  = '';

        if(!is_null($user->profile->id_pic) )
        {
            $image = $user->profile->id_pic;
        }
        
        return view('profiles.upload-ic', compact('user','image'));
    }

    public function postUploadIc(Request $request)
    {
        $request->validate([

            'ic_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',

        ]);

        if(Auth::check()){
            $hashedCode = Auth::user()->security_code;
        }

        if(Hash::check($request->security_code, $hashedCode))
        {
            $ic_image  = $request->file('ic_image');
            $filename  = time() . '.' . $ic_image->getClientOriginalExtension();
            $saveImage = Image::make($ic_image)->resize(400, 300)->save( public_path('/app/mykad/' . $filename ) );

            $user = Auth::user();
            // $user->ic_image = $filename;
            // $user->save();
            if($saveImage){

                $profile = $user->profile;
                $profile->id_pic     = $filename;
                $profile->status_ic  = 'Waiting Approval';
                $profile->save();

                return back()
                    ->with('success','You have successfully upload image.')
                    ->with('image',$filename);
            }
        }
  
        return back()
                ->with('fail','You Mykad failed to upload. Please check your image not exceed 2MB size');
        
    }

    public function icStatusIndex()
    {
        $users = User::all();

        $count_profile = Profile::where('profileable_type', 'App\User')->count();
        $count_user    = $users->count();

        $pending = Profile::where('status_ic', 'Pending')->where('profileable_type', 'App\User')->count();
        $waiting_approval = Profile::where('status_ic', 'Waiting Approval')->count();
        $not_valid        = Profile::where('status_ic', 'Not Valid')->count();
        $approved         = Profile::where('status_ic', 'Approved')->count();

        $mykad_status = [
            'pending'           => $pending,
            'not_update'        => $count_user - $count_profile,
            'waiting_approval'  => $waiting_approval,
            'not_valid'         => $not_valid,
            'approved'          => $approved
        ];

        return view('profiles.ic-status-index', compact('users', 'mykad_status', 'count_user'));
    }

    public function showIcStatus($id)
    {
        $profile = Profile::find($id);
        
        if(!is_null($profile))
        {
            return view('profiles.show-ic', compact('profile'));
        }

        return back()->with('fail', 'There is no profile found for '.$user->username);
    }

    public function updateIcStatus(Request $request)
    {
        $status = $request->status;

        switch ($status) {
            case 'Approve':
                $status = 'Approved';
                break;
            case 'Reject':
                $status = 'Not Valid';
                break;
            default:
                $status = 'Pending';
                break;
        }

        $hashedCode = Auth::guard('admin')->user()->security_code;

        if(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode))
        {
            $profile = Profile::find($request->id);
            $profile->status_ic = $status;
            $profile->save();

            return redirect()->back()->with('success', 'MyKad\Passport successfully validate: '.$request->status);
        }
            

        return back()->with('fail', 'Action Failed! Please make sure your security code is correct.');
        
    }

    public function showCompCertStatus($id)
    {
        $profile = Profile::find($id);
        
        if(!is_null($profile))
        {
            return view('profiles.show-comp_cert', compact('profile'));
        }

        return back()->with('fail', 'There is no profile found for '.$user->username);
    }

    public function updateCompCertStatus(Request $request)
    {
        $status = $request->status;

        switch ($status) {
            case 'Approve':
                $status = 'Approved';
                break;
            case 'Reject':
                $status = 'Not Valid';
                break;
            default:
                $status = 'Pending';
                break;
        }

        $hashedCode = Auth::guard('admin')->user()->security_code;

        if(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode))
        {
            $profile = Profile::find($request->id);
            $profile->cert_status = $status;
            $profile->save();

            return redirect()->back()->with('success', 'Company registration certificate successfully validate: '.$request->cert_status);
        }
            

        return back()->with('fail', 'Action Failed! Please make sure your security code is correct.');
        
    }

    public function showChangePasswordForm()
    {
        return view('profiles.change-password-form');
    }

    public function updateChangePassword(Request $request)
    {
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|min:6',
            'confirm_new_password' => 'required|same:new_password'

        ]);

        if(Auth::check())
        {
            if(Hash::check($request->old_password, Auth::guard('web')->user()->password))
            {
                $user = User::find(Auth::guard('web')->user()->id);
                $user->password = Hash::make($request->new_password);
                $user->save();

                Session::flash('success', 'Successfully change password'); 
            }
            else
            {
                Session::flash('fail', 'Failed to change the password! Please try again later!'); 
            }
        }

        return redirect()->back();
    }

    public function showChangeSecurityCodeForm()
    {
        return view('profiles.change-securitycode-form');
    }

    public function updateChangeSecurityCode(Request $request)
    {
        $request->validate([
            'old_security_code' => 'required',
            'new_security_code' => 'required|min:6',
            'confirm_new_security_code' => 'required|same:new_security_code'

        ]);

        if(Auth::check())
        {
            if(Hash::check($request->old_security_code, Auth::guard('web')->user()->security_code))
            {
                $user = User::find(Auth::guard('web')->user()->id);
                $user->security_code = Hash::make($request->new_security_code);
                $user->save();

                Session::flash('success', 'Successfully change security code'); 
            }
            else
            {
                Session::flash('fail', 'Failed to change the security code! Please try again later!'); 
            }
        }

        return redirect()->back();
    }

}
