<?php
# Create by: Bhaihaqi		2018-02-18 Monday
# Modify by: Bhaihaqi		2018-02-22 Friday
namespace App\Http\Controllers\Inventory\Configuration;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Courier;

use App\Admin;
use App\User;
use App\Models\Role;

class CourierController extends Controller
{
	public function __construct(){
        $this->middleware('auth:admin');
    }
	
	public function index(){
        return redirect('inventory/setting/courier');
    }
	
	public function listing(){
		$courierdata = New Courier;
		$data = array(
			'counttype' => $courierdata->count(),
			'startcount' => 0,
			'courierArr' => $courierdata->orderBy('id', 'desc')->paginate(20),
		);
		return view('inventory/configuration/courier_listing',$data);
    }
	
	public function search($x = ''){
		if($x == '' || @unserialize(base64_decode($x)) == false)
			return redirect('inventory/setting/courier');
			
		$datadecode = unserialize(base64_decode($x));
		$search = isset($datadecode['search']) ? $datadecode['search'] : '';
		if($search == '')
			return redirect('inventory/setting/courier');
		
		$courierdata = New Courier;
		if($search != ''){
			$courierdata = $courierdata->where(function ($q) use($search){
											$q->where('courier_code','LIKE','%'. $search .'%')
												->orWhere('courier_name','LIKE','%'. $search .'%')
												->orWhere('tel','LIKE','%'. $search .'%')
												->orWhere('email','LIKE','%'. $search .'%');
										});
		}
			
		$counttype = $courierdata->count();
		$courierArr = $courierdata->orderBy('id', 'desc')->paginate(20);
		
		$data = array(
			'counttype' => $counttype,
			'startcount' => 0,
			'courierArr' => $courierArr,
			'search' => $search,
		);
        return view('inventory/configuration/courier_listing',$data);
    }
	
	public function form_search(Request $postdata){
		$search = trim($postdata->input("search"));
		
		if($search == '')
			return redirect('inventory/setting/courier');
			
		$rowdata = array(
			'search' => $search,
		);
		
		$base64data = trim(base64_encode(serialize($rowdata)), "=.");
		
        return redirect('inventory/setting/courier/search/' . $base64data);
    }
	
    public function save(Request $postdata){
		$courierdata = New Courier;
		$data = array(
			'courier_code' => strtoupper(trim($postdata->input("courier_code"))),
			'courier_name' => strtoupper(trim($postdata->input("courier_name"))),
			'address' => $postdata->input("address") != null ? $postdata->input("address") : '',
			'tel' => $postdata->input("tel") != null ? $postdata->input("tel") : '',
			'fax' => $postdata->input("fax") != null ? $postdata->input("fax") : '',
			'email' => $postdata->input("email") != null ? $postdata->input("email") : '',
			'updated_by' => Auth::user()->id,
			'updated_at' => date('Y-m-d H:i:s'),
		);
			
		$base64 = $postdata->input("base64");
		if($base64 == '' || @unserialize(base64_decode($base64)) == false){
			#insert new Courier
			$data['created_by'] = Auth::user()->id;
			$data['created_at'] = date('Y-m-d H:i:s');
			$courierdata->insert($data);
			
			return redirect('inventory/setting/courier')->with("info","Success Submit " . $data["courier_name"] . " (" . $data["courier_code"] . ")");
		}
		else{
			# update Courier
			$datadecode = unserialize(base64_decode($base64));
			$selectid = isset($datadecode['selectid']) ? $datadecode['selectid'] : 0;
			$search = isset($datadecode['search']) ? $datadecode['search'] : '';
			
			$courierdata->where('id',$selectid)->update($data);
			if($search != '')
				return redirect('inventory/setting/courier/search/' . $search)->with("info","Success Save " . strtoupper(trim($postdata->input("type"))) . "");
			else
				return redirect('inventory/setting/courier')->with("info","Success Save " . $postdata->input("type") . "");
		}
	}
	
	public function check_existcode(Request $postdata){
		$base64 = $postdata->input("base64");
		if($base64 == '' || @unserialize(base64_decode($base64)) == false)
			$id = 0;
		else{
			$datadecode = unserialize(base64_decode($base64));
			$id = isset($datadecode['selectid']) ? $datadecode['selectid'] : 0;	
		}
		
		#uppercase & Replacing multiple spaces with a single space
		$code = trim(preg_replace('!\s+!', ' ', strtoupper($postdata->input("code"))));
		$courierdata = New Courier;
		$countcode = $courierdata->where('courier_code','=',$code)->where('id','<>', $id)->count();
		if($countcode > 0)
			return 1;
		else
			return 0;
    }

    public function delete($data = ''){
		if(@unserialize(base64_decode($data)) == true){
			$courierdata = New Courier;
			$datadecode = unserialize(base64_decode($data));
			$selectid = isset($datadecode['selectid']) ? $datadecode['selectid'] : 0;
			
			$checkcourier = $courierdata->where('id', $selectid)->first();
			if($checkcourier == false)
				return redirect('inventory/setting/courier')->with("errorid"," Data not found");
			
			$search = isset($datadecode['search']) ? $datadecode['search'] : '';
			
			if($courierdata->where('id', $selectid)->delete()){
				if($search != '')
					return redirect('inventory/setting/courier/search/' . $search)->with("info","Courier " . $checkcourier['courier_name'] . " (" . $checkcourier['courier_code'] . ") Deleted Successfully!!");
				else
					return redirect('inventory/setting/courier')->with("info","Courier " . $checkcourier['courier_name'] . " (" . $checkcourier['courier_code'] . ")  Deleted Successfully!!");
				
			}
		}
    }
}
