<?php

namespace App\Classes;

use Illuminate\Http\Request;
// use App\Http\Controllers\Controller;

use DB;
use Auth;
use Carbon\Carbon;
use App\Models\AuditTrail;
use App\users;


class Audit{

	public function auditLog($action,$action_by,$event){

		if(Auth::guard('admin')->check()){
			$auditTrail = new AuditTrail;

			$auditTrail->action 		= $action;
			$auditTrail->action_by 		= $action_by;
			$auditTrail->event 			= $event;
			$auditTrail->event_created 	= Carbon::now();

			$auditTrail->save();
		}
	}
}