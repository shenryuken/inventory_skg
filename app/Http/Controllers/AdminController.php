<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests;
use App\Mail\VerifyEmail;

use App\Admin;
use App\User;
use App\Models\Role;
use App\Models\UserBonus;

use Carbon\Carbon;

use App\Traits\DataStatistic;


class AdminController extends Controller
{
    use DataStatistic;

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $admins = Admin::all();
        $roles  = Role::all();

        return view('admin.index', compact('admins', 'roles'));
    }

    public function lists()
    {
        $admins = Admin::with('roles')->get();

        return view('admin.index', compact('admins'));
    }

    public function dashboard()
    {
        $user       = Auth::guard('admin')->user();
        $user_stats = $this->getUserStats();
        //$sales  = $this->getTotalSales();
        // $total_purchases = $this->totalPurchases();
        // $total_product_purchases = $this->totalProductPurchased();

        $sale_stats           = $this->getSaleStats();
        $sales_stock_activity = $this->getSaleStockActivity();
        $last_month_bonus     = UserBonus::whereMonth('created_at', Carbon::now()->subMonth()->month)->sum('total_bonus');
 
        $bonus = [
            'total_bonus'     => UserBonus::sum('total_bonus'),
            'last_month_bonus'=> $last_month_bonus,
            'retail_profit'   => UserBonus::sum('retail_profit'),
            'direct_sponsor'  => UserBonus::sum('direct_sponsor'),
            'personal_rebate' => UserBonus::sum('personal_rebate'),
            'do_group_bonus'  => UserBonus::sum('do_group_bonus'),
            'sdo_group_bonus' => UserBonus::sum('sdo_group_bonus'),
            'do_cto_pool'     => UserBonus::sum('do_cto_pool'),
            'sdo_cto_pool'    => UserBonus::sum('sdo_cto_pool'),
            'sdo_sdo'         => UserBonus::sum('sdo_sdo'),
        ];

        list($sales_stock_activity1, $sales_stock_activity2) = array_chunk($sales_stock_activity, ceil(count($sales_stock_activity) / 2));

        return view('admin.dashboard', 
                    compact('user', 'user_stats', 'sale_stats', 'bonus', 'sales_stock_activity1', 'sales_stock_activity2'));
    }

    public function edit($id)
    {
        $admin = Admin::find($id);
        return view('admin.edit', compact('admin', 'id'));
    }

    public function update(Request $request, $id)
    {
        $admin = Admin::find($id);

        $request->validate([
            'username'  => 'required|unique:admins,username,'.$id,
            'email'     => 'required|unique:admins,email,'.$id,
            'mobile_no' => 'unique:admins,mobile_no,'.$id,
            'security_code' => 'required',
        ]);

        $hashedCode = Auth::guard('admin')->user()->security_code;

        if(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode)){

            $admin->username = $request->username;
            $admin->email    = $request->email;
            $admin->mobile_no= $request->mobile_no;
            $admin->save();

            return back()->with('success', 'Successfully update!');
        }

        return back()->with('fail', 'Failed to update! Please make sure your security code is correct');
    }

    //Role
    public function assignRole()
    {
        $roles = Role::all();

        return view('admin.assign-role', compact('roles'));
    }

    public function postAssignRole(Request $request)
    {
        $request->validate([
            'role' => 'required',
            'security_code' => 'required',
        ]);

        $admin = Admin::find($request->id);
        
        $admin->assignRole($request->role);

        return redirect()->back()
                            ->with('success','Role Assign successfully');
    }

    public function revokeRole($id)
    {
        $admin = Admin::find($id);
        $roles = $admin->roles;
        return view('admin.revoke-role', compact('admin', 'roles'))->with('success','Role Revoke successfully');
    }

    public function postRevokeRole(Request $request)
    {
        $request->validate([
            'role' => 'required',
        ]);

        $admin = Admin::find($request->user_id);
        $role  = $request->role;

        $admin->revokeRole($role);

        return back();
    }

    //End Role
}