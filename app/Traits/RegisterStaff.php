<?php namespace App\Traits;

use App\Models\Role;
use App\Admin;

trait RegisterStaff
{
    public function registerStaffForm()
    {
    	$roles = Role::all();
        return view('registers.staff', compact('roles'));
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