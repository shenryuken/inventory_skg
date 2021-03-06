<?php
# Create by: Bhaihaqi		2018-02-12 Monday
# Modify by: Bhaihaqi		2018-02-19 Sunday
namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Product;
use App\Models\Product_promotion;
use App\Models\Product_promotion_gift;
use App\Models\Tax;
use App\Admin;
use App\User;
use App\Models\Role;

class ProductPromotionController extends Controller
{
	private $statusOnOff = array( '1' => '<span class="text-success bold"> On </span>','0' => '<span class="text-danger bold"> Off </span>');
	
	public function __construct(){
        $this->middleware('auth:admin');
		
		$this->generate_autooffpromotion();
    }
	
    public function index(){
        return redirect('inventory/product/promotion/listing');
    }

    public function listing(){

		$productdata 	= New Product;
		$datap 			= $productdata->orderBy('code', 'asc')->get();
		$productArr 	= array();
		
		if(count($datap) > 0){
			foreach($datap->all() as $key => $row)
				$productArr[$row->id] = $row->code . ' (' . $row->name . ')';
		}
		
		$promotiondata = New Product_promotion;

		$data = array(
			'countpromotion' 	=> $promotiondata->count(),
			'promotionArr' 		=> $promotiondata->orderBy('id', 'desc')->paginate(20),
			'productArr' 		=> $productArr,
			'statusArr' 		=> $this->statusOnOff,
		);

        return view('inventory/promotion_listing',$data);
    }
	
	public function search($x = ''){
		if($x == '' || @unserialize(base64_decode($x)) == false)
			return redirect('inventory/product/promotion/listing');
			
		$datadecode 	= unserialize(base64_decode($x));
		$search_product = isset($datadecode['search_product']) ? $datadecode['search_product'] : '';
		$search_status 	= isset($datadecode['search_status']) ? $datadecode['search_status'] : '';

		if($search_product == '' && $search_status == '')
			return redirect('inventory/product/promotion/listing');
			
		$promotiondata = New Product_promotion;

		if($search_product != '')
			$promotiondata = $promotiondata->where('product_id',$search_product);
		
		if($search_status != '')
			$promotiondata = $promotiondata->where('status',$search_status);
			
		$countpromotion = $promotiondata->count();
		$promotionArr 	= $promotiondata->orderBy('id', 'desc')->paginate(20);
		
		$productdata 	= New Product;
		$data 			= $productdata->orderBy('code', 'asc')->get();
		$productArr 	= array();

		if(count($data) > 0){
			foreach($data->all() as $key => $row)
				$productArr[$row->id] = $row->code . ' (' . $row->name . ')';
		}

		$data = array(
			'countpromotion' 	=> $countpromotion,
			'promotionArr' 		=> $promotionArr,
			'productArr' 		=> $productArr,
			'statusArr' 		=> $this->statusOnOff,
			'search_product' 	=> $search_product,
			'search_status' 	=> $search_status,
		);

        return view('inventory/promotion_listing',$data);
    }
	

    public function form_search(Request $postdata){

		$search_product = trim($postdata->input("search_product"));
		$search_status 	= trim($postdata->input("search_status"));
		
		if($search_product == '' && $search_status == '')
			return redirect('inventory/product/promotion/listing');
			
		$rowdata = array(
			'search_product' 	=> $search_product,
			'search_status' 	=> $search_status,
		);
		
		$base64data = trim(base64_encode(serialize($rowdata)), "=.");
		
        return redirect('inventory/product/promotion/search/' . $base64data);
    }

    public function form(){
		# get Tax GST percentage
		$taxgst = Tax::where('code', 'gst')->first();

		if($taxgst == false)
			$gstpercentage = 6;
		else
			$gstpercentage = $taxgst['percent'];
		
		$productdata 	= New Product;
		$datap 			= $productdata->orderBy('code', 'asc')->get();
		$productArr 	= array();

		if(count($datap) > 0){
			foreach($datap->all() as $key => $row){
				$productArr[$row->id] = array(
					'code' => ($row->type == 1 ? '(Product) - ' : '(Package) - ') . $row->code . ' (' . $row->name . ')',
					'desc' => $row->name,
				);
			}
		}
		
		$productGift = $productdata->where('type','<>',2)->orderBy('code', 'asc')->get();
		$productGiftArr = array();

		if(count($productGift) > 0){
			foreach($productGift->all() as $keygift => $rowgift)
				$productGiftArr[$rowgift->id] = $rowgift->code . ' (' . $rowgift->name . ')';
		}

		$data = array();
		$data['gstpercentage'] 	= $gstpercentage;
		$data['productArr'] 	= $productArr;
		$data['productGiftArr'] = $productGiftArr;

		return view('inventory/product_promotion_form',$data);
    }
	
	public function edit($id = 0){
		if($id > 0){
			$promotiondata 	= New Product_promotion;
			$promotion 		= $promotiondata->where('id', $id)->first();
			
			if($promotion == false)
				return redirect("inventory/product/promotion/listing")->with("errorid"," Not Found ");
				
			# get Tax GST percentage
			$taxgst = Tax::where('code', 'gst')->first();
			
			if($taxgst == false)
				$gstpercentage = 6;
			else
				$gstpercentage = $taxgst['percent'];
			
			$product_id 	= $promotion['product_id'];
			$productdata 	= New Product;
			$productArr 	= $productdata->where('id', $product_id)->first();
			
			$productGift 	= $productdata->where('type','<>',2)->orderBy('code', 'asc')->get();
			$productGiftArr = array();

			if(count($productGift) > 0){
				foreach($productGift->all() as $keygift => $rowgift)
					$productGiftArr[$rowgift->id] = $rowgift->code . ' (' . $rowgift->name . ')';
			}

			$giftdata = New Product_promotion_gift;
			$data = array();
			$data = $promotion;

			$data['gstpercentage'] 	= $gstpercentage;
			$data['productArr'] 	= $productArr;
			$data['gift_list'] 		= $giftdata->where('promotion_id', $id)->get();
			$data['productGiftArr'] = $productGiftArr;
			
			return view('inventory/product_promotion_form',$data);
		}
		return redirect("inventory/product/promotion/listing");
    }
	
	public function view($id = 0){
		if($id > 0){
			$promotiondata = New Product_promotion;
			$promotion = $promotiondata->where('id', $id)->first();
			
			if($promotion == false)
				return redirect("inventory/product/promotion/listing")->with("errorid"," Not Found ");
				
			# get Tax GST percentage
			$taxgst = Tax::where('code', 'gst')->first();
			
			if($taxgst == false)
				$gstpercentage = 6;
			else
				$gstpercentage = $taxgst['percent'];
			
			$product_id 	= $promotion['product_id'];
			$productdata 	= New Product;
			$productArr 	= $productdata->where('id', $product_id)->first();
			
			$giftdata 	= New Product_promotion_gift;
			$gift_list 	= $giftdata->where('promotion_id', $id)->get();

			#get gift product name
			$productGiftArr = array();

			if(count($gift_list) > 0){
				foreach($gift_list->all() as $key => $row){
					$datap = $productdata->where('id', $row->product_id)->where('type','<>', 2)->first();
					$productGiftArr[$datap['id']] = $datap['code'] . ' (' . $datap['name'] . ')';
				}
			}
			
			$data 		= array();
			$userdata 	= New Admin;
			
			$created_by_name = $updated_by_name = "";
			$user = $userdata->where('id', $promotion['created_by'])->first();
			
			if($user)
				$created_by_name = $user['username'];
			
			$user2 = $userdata->where('id', $promotion['updated_by'])->first();
			
			if($user2)
				$updated_by_name = $user2['username'];
			
			$data = $promotion;	
			$data['created_by_name'] 	= $created_by_name;
			$data['updated_by_name'] 	= $updated_by_name;
			$data['gstpercentage'] 		= $gstpercentage;
			$data['productArr'] 		= $productArr;
			$data['gift_list'] 			= $gift_list;
			$data['productGiftArr'] 	= $productGiftArr;
			$data['statusArr'] 			= $this->statusOnOff;
			
			return view('inventory/product_promotion_view',$data);
		}

		return redirect("inventory/product/promotion/listing");
    }

    public function insert(Request $postdata){
		$this->validate($postdata,[
			'product_id' 	=> 'required',
			'daterange' 	=> 'required',
			'price_wm' 		=> 'required',
			'price_em' 		=> 'required',
		]);
		
		$daterange 	= $postdata->input("daterange");
		$dateArr 	= explode(" - ",$daterange);
		$start 		= $end = '';

		if(count($dateArr) > 1){
			$startdate 	= trim($dateArr[0]);
			$enddate 	= trim($dateArr[1]);
			$start  	= $this->daterangepickermysql($startdate);
			$end 		= $this->daterangepickermysql($enddate);
		}
		
		if($start == '' || $end == ''){
			$messages = "Datetime Promotion Not Valid";
			return redirect('inventory/product/promotion/form')->withErrors($messages);
		}
		
		$data = array(
			'product_id' 	=> $postdata->input("product_id"),
			'description' 	=> $postdata->input("description") != null ? $postdata->input("description") : '',
			'price_checked' => 1,
			'gift_checked' 	=> 1,
			'start' 		=> $start,
			'end' 			=> $end,
			'price_wm' 		=> $postdata->input("price_wm"),
			'price_em' 		=> $postdata->input("price_em"),
			'price_staff' 	=> $postdata->input("price_staff") != null ? $postdata->input("price_staff") : '0',
			'status' 		=> $postdata->input("status") != null ? $postdata->input("status") : '1',
			'created_by' 	=> Auth::user()->id,
			'created_at' 	=> date('Y-m-d H:i:s'),
			'updated_by' 	=> Auth::user()->id,
			'updated_at' 	=> date('Y-m-d H:i:s'),
		);

		$promotiondata = New Product_promotion;
		$id = $promotiondata->insertGetId($data);

		if($id > 0){
			#product list insert 
			$giftid 		= $postdata->input("giftid");
			$promotiongift 	= $postdata->input("promotiongift");
			$promotionquantity 		= $postdata->input("promotionquantity");
			$promotiondescription 	= $postdata->input("promotiondescription");
			
			$giftdata = New Product_promotion_gift;
			
			foreach($giftid as $k => $v){
				if($promotiongift[$k] > 0){
					$datagift = array(
						'promotion_id' 	=> $id,
						'product_id' 	=> $promotiongift[$k],
						'quantity' 		=> $promotionquantity[$k] > 0 ? $promotionquantity[$k] : 1,
						'description' 	=> $promotiondescription[$k] != null ? $promotiondescription[$k] : '',
						'created_by' 	=> Auth::user()->id,
						'created_at' 	=> date('Y-m-d H:i:s'),
						'updated_by' 	=> Auth::user()->id,
						'updated_at' 	=> date('Y-m-d H:i:s'),
					);

					$giftdata->insert($datagift);
				}
			}
		}
		
		return redirect("inventory/product/promotion/view/" . $id)->with("info","Success Submit Product Promotion " . $data['description'] . " ");
    }
	
	public function update(Request $postdata, $id = 0){
		
		$promotiondata = New Product_promotion;
		$promotion = $promotiondata->where('id', $id)->first();
		
		if($promotion == false)
			return redirect("inventory/product/promotion/listing")->with("errorid"," Not Found ");
			
		$this->validate($postdata,[
			'daterange' => 'required',
			'price_wm' 	=> 'required',
			'price_em' 	=> 'required',
		]);
		
		$daterange 	= $postdata->input("daterange");
		$dateArr 	= explode(" - ",$daterange);
		$start 		= $end = '';
		
		if(count($dateArr) > 1){

			$startdate 	= trim($dateArr[0]);
			$enddate 	= trim($dateArr[1]);
			$start 		= $this->daterangepickermysql($startdate);
			$end 		= $this->daterangepickermysql($enddate);
		}
		if($start == '' || $end == ''){
			$messages = "Datetime Promotion Not Valid";
			return redirect('inventory/product/promotion/form')->withErrors($messages);
		}
		
		$data = array(
			'description' 	=> $postdata->input("description") != null ? $postdata->input("description") : '',
			'start' 		=> $start,
			'end' 			=> $end,
			'price_wm' 		=> $postdata->input("price_wm"),
			'price_em' 		=> $postdata->input("price_em"),
			'price_staff' 	=> $postdata->input("price_staff") != null ? $postdata->input("price_staff") : '0',
			'status' 		=> $postdata->input("status") != null ? $postdata->input("status") : '1',
			'updated_by' 	=> 1,
			'updated_at' 	=> date('Y-m-d H:i:s'),
		);
		
		$promotiondata->where('id',$id)->update($data);
		
		#product list insert  / update / delete
		$giftid 		= $postdata->input("giftid");
		$promotiongift 	= $postdata->input("promotiongift");
		$promotionquantity 		= $postdata->input("promotionquantity");
		$promotiondescription 	= $postdata->input("promotiondescription");
			
		$giftdata = New Product_promotion_gift;
		$valid_id = array();

		foreach($giftid as $k => $v){
			if($v > 0){
				#update
				if($promotiongift[$k] > 0){
					$datagift = array(
						'promotion_id' 	=> $id,
						'product_id' 	=> $promotiongift[$k],
						'quantity' 		=> $promotionquantity[$k] > 0 ? $promotionquantity[$k] : 1,
						'description' 	=> $promotiondescription[$k] != null ? trim($promotiondescription[$k]) : '',
						'updated_by' 	=> 1,
						'updated_at' 	=> date('Y-m-d H:i:s'),
					);

					$giftdata->where('id',$v)->update($datagift);
					$valid_id[] = $v;
				}
			}
			else{
				#insert
				if($promotiongift[$k] > 0){
					$datagift = array(
						'promotion_id' 	=> $id,
						'product_id' 	=> $promotiongift[$k],
						'quantity' 		=> $promotionquantity[$k] > 0 ? $promotionquantity[$k] : 1,
						'description' 	=> $promotiondescription[$k] != null ? trim($promotiondescription[$k]) : '',
						'created_by' 	=> Auth::user()->id,
						'created_at' 	=> date('Y-m-d H:i:s'),
						'updated_by' 	=> Auth::user()->id,
						'updated_at' 	=> date('Y-m-d H:i:s'),
					);

					$v = $giftdata->insertGetId($datagift);
					$valid_id[] = $v;
				}
			}
		}
		#delete
		if(count($valid_id) > 0){
			#Delete WHERE NOT IN array
			$giftdata->where('promotion_id', $id)->whereNotIn('id', $valid_id)->delete();
		}
		else{
			#Delete All
			$giftdata->where('promotion_id', $id)->delete();
		}
		
		return redirect("inventory/product/promotion/view/" . $id)->with("info","Success Save Product Promotion " . $postdata->input("description") . "");
    }
	
    public function delete($data = ''){

		if(@unserialize(base64_decode($data)) == true){

			$datadecode = unserialize(base64_decode($data));
			$delete 	= isset($datadecode['delete']) ? $datadecode['delete'] : 0;
			$deleteid 	= isset($datadecode['deleteid']) ? $datadecode['deleteid'] : 0;
			
			if($delete == 'promotion' && $deleteid > 0){

				$checkpromotion = Product_promotion::where('id', $deleteid)->first();
				
				if($checkpromotion == false)
					return redirect("inventory/product/promotion/listing")->with("errorid"," Data not found");
				
				$search = isset($datadecode['search']) ? $datadecode['search'] : '';
				
				if(Product_promotion::where('id', $deleteid)->delete()){
					#delete all gift
					$giftdata = New Product_promotion_gift;
					$giftdata->where('promotion_id', $deleteid)->delete();
					
					if($search != '')
						return redirect("inventory/product/promotion/search/" . $search)->with("info","Product Promotion " . $checkpromotion['description'] . "  Deleted Successfully!!");
					else
						return redirect("inventory/product/promotion/listing")->with("info","Product Promotion " . $checkpromotion['description'] . " Deleted Successfully!!");
					
				}
			}
		}
		return redirect("inventory/product/promotion/listing");
    }
	
	public function generate_autooffpromotion(){
		# Ambil waktu sekarang 
		$nowdatetime =  date('Y-m-d H:i:s');
		# This Function guna untuk tukar status dri On ke Off bila Promotion hbis..
		$promotiondata = New Product_promotion;
		
		$updatestatus = array(
			'status' => 0,
		);
		$promotiondata->where('status','1')->where('end','<=',$nowdatetime)->update($updatestatus); // Update All Status On dan end promotion sudah habis
    }
	
	function daterangepickermysql($datetime){
		# $datedatetime = d/m/Y h:mm A format
		$dateArr = explode(" ",$datetime);
		$sqldate = $sqltime = '';
		
		if(count($dateArr) > 2){
			$date 		= trim($dateArr[0]);
			$sqltime 	= trim($dateArr[1]) . ' ' . trim($dateArr[2]);
			$tmp_date 	= explode("/", $date);
			if(sizeof($tmp_date) != 3)
				return '';
			
			$sqldate = $tmp_date[2] . "-" . $tmp_date[1] . "-" . $tmp_date[0];
		}
		
		$datetime = $sqldate . ' ' . $sqltime;
		return date('Y-m-d H:i:s',strtotime($datetime));
	}
}
