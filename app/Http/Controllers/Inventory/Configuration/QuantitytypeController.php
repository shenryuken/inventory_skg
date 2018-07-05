<?php
# Create by: Bhaihaqi		2018-02-18 Monday
# Modify by: Bhaihaqi		2018-02-22 Friday
namespace App\Http\Controllers\Inventory\Configuration;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\QuantityType;

use App\Admin;
use App\User;
use App\Models\Role;
class QuantitytypeController extends Controller
{
	private $statusArr = array( 
		'1' => '<span class="text-success bold"> Active </span>',
		'0' => '<span class="text-danger bold"> Inactive </span>',
	);
	
	public function __construct(){
        $this->middleware('auth:admin');
    }
	
	public function index(){
        return redirect('inventory/setting/quantitytype');
    }
	
	public function listing(){
		$quantitytypedata = New QuantityType;
		$data = array(
			'counttype' => $quantitytypedata->count(),
			'startcount' => 0,
			'typeArr' => $quantitytypedata->orderBy('id', 'desc')->paginate(20),
			'status' => $this->statusArr,
		);
		return view('inventory/configuration/quantitytype_listing',$data);
    }
	
	public function search($x = ''){
		if($x == '' || @unserialize(base64_decode($x)) == false)
			return redirect('inventory/setting/quantitytype');
			
		$datadecode = unserialize(base64_decode($x));
		$search = isset($datadecode['search']) ? $datadecode['search'] : '';
		$search_status = isset($datadecode['search_status']) ? $datadecode['search_status'] : '';
		if($search == '' && $search_status == '')
			return redirect('inventory/setting/quantitytype');
		
		$quantitytypedata = New QuantityType;
		if($search != ''){
			$quantitytypedata = $quantitytypedata->where(function ($q) use($search){
											$q->where('type','LIKE','%'. $search .'%')
												->orWhere('remarks','LIKE','%'. $search .'%');
										});
		}
		if($search_status != '')
			$quantitytypedata = $quantitytypedata->where('status',$search_status);
			
		$counttype = $quantitytypedata->count();
		$typeArr = $quantitytypedata->orderBy('id', 'desc')->paginate(20);
		
		$data = array(
			'counttype' => $counttype,
			'startcount' => 0,
			'typeArr' => $typeArr,
			'status' => $this->statusArr,
			'search' => $search,
			'search_status' => $search_status,
		);
        return view('inventory/configuration/quantitytype_listing',$data);
    }
	
	public function form_search(Request $postdata){
		$search = trim($postdata->input("search"));
		$search_status = trim($postdata->input("search_status"));
		
		if($search == '' && $search_status == '')
			return redirect('inventory/setting/quantitytype');
			
		$rowdata = array(
			'search' => $search,
			'search_status' => $search_status,
		);
		
		$base64data = trim(base64_encode(serialize($rowdata)), "=.");
		
        return redirect('inventory/setting/quantitytype/search/' . $base64data);
    }
	
    public function save(Request $postdata){
		$quantitytypedata = New QuantityType;
		$data = array(
			'type' => strtoupper(trim($postdata->input("type"))),
			'remarks' => $postdata->input("remarks") != null ? $postdata->input("remarks") : '',
			'status' => $postdata->input("status") != null ? $postdata->input("status") : '1',
			'updated_by' => Auth::user()->id,
			'updated_at' => date('Y-m-d H:i:s'),
		);
			
		$base64 = $postdata->input("base64");
		if($base64 == '' || @unserialize(base64_decode($base64)) == false){
			#insert new Quantity Type
			$data['created_by'] = Auth::user()->id;
			$data['created_at'] = date('Y-m-d H:i:s');
			$quantitytypedata->insert($data);
			
			return redirect('inventory/setting/quantitytype')->with("info","Success Submit " . strtoupper(trim($postdata->input("type"))) . "");
		}
		else{
			# update Quantity Type
			$datadecode = unserialize(base64_decode($base64));
			$selectid = isset($datadecode['selectid']) ? $datadecode['selectid'] : 0;
			$search = isset($datadecode['search']) ? $datadecode['search'] : '';
			
			$quantitytypedata->where('id',$selectid)->update($data);
			if($search != '')
				return redirect('inventory/setting/quantitytype/search/' . $search)->with("info","Success Save " . strtoupper(trim($postdata->input("type"))) . "");
			else
				return redirect('inventory/setting/quantitytype')->with("info","Success Save " . $postdata->input("type") . "");
		}
	}

    public function delete($data = ''){
		if(@unserialize(base64_decode($data)) == true){
			$quantitytypedata = New QuantityType;
			$datadecode = unserialize(base64_decode($data));
			$selectid = isset($datadecode['selectid']) ? $datadecode['selectid'] : 0;
			
			$checkquantitytype = $quantitytypedata->where('id', $selectid)->first();
			if($checkquantitytype == false)
				return redirect('inventory/setting/quantitytype')->with("errorid"," Data not found");
			
			$search = isset($datadecode['search']) ? $datadecode['search'] : '';
			
			if($quantitytypedata->where('id', $selectid)->delete()){
				if($search != '')
					return redirect('inventory/setting/quantitytype/search/' . $search)->with("info","Quantity Type " . $checkquantitytype['type'] . " Deleted Successfully!!");
				else
					return redirect('inventory/setting/quantitytype')->with("info","Quantity Type " . $checkquantitytype['type'] . "  Deleted Successfully!!");
				
			}
		}
    }
}
