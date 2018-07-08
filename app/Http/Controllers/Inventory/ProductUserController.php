<?php
# Create by: Bhaihaqi		2018-06-30 Saturday
# Modify by: Bhaihaqi		2018-07-01 Sunday
namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Product;
use App\Models\Product_promotion;
use App\Models\Product_serial_number;
use App\Models\Product_image;
use App\Models\Product_package;
use App\Models\Product_promotion_gift;

use App\Models\ProductCategory;
use App\Models\QuantityType;
use App\Models\Tax;
use App\Admin;
use App\User;
use App\Models\Role;

class ProductUserController extends Controller{
				
	public function __construct(){
		$this->middleware('auth');
		
		$this->generate_autooffpromotion();
    }
	
	#pass to Amin
	public function all_data_product(){
	//date_default_timezone_set("Asia/Kuala_Lumpur");
		$nowdatetime =  date('Y-m-d H:i:s');
		// echo 'date.timezone: ' . ini_get('date.timezone');
		// echo "<br /> Y-m-d H:i:s" . date('Y-m-d H:i:s');
		$productdata = New Product;
		$promotiondata = New Product_promotion;
		$imagedata = New Product_image;
		$productQuery = $productdata->orderBy('id', 'desc')->where('status',1)->where('notforsale', 0)->get();
		# get Tax GST percentage		
		$taxgst = Tax::where('code', 'gst')->first();
		if($taxgst == false)
			$gstpercentage = 6;
		else
			$gstpercentage = $taxgst['percent'];
		$productArr = array(
			'Product' => array(),
			'Package' => array(),
			'Promotion' => array(),
		);
		if(count($productQuery) > 0){
			foreach($productQuery->all() as $key => $row){
				$type = "Product";
				if($row->type == 2)
					$type = "Package";
					
				$productid = $row->id;
				
				#price after gst
				$price_wm = $row->price_wm;
				$price_em = $row->price_em;
				$price_staff = $row->price_staff;
				$wm_gst = $wm_aftergst = $em_gst = $em_aftergst = $staff_gst = $staff_aftergst = 0;
				if($price_wm > 0){
					$wm_gst = ($price_wm / 100) * $gstpercentage;
					$wm_aftergst = $price_wm + $wm_gst;
				}
				if($price_em > 0){
					$em_gst = ($price_em / 100) * $gstpercentage;
					$em_aftergst = $price_em + $em_gst;
				}
				if($price_staff > 0){
					$staff_gst = ($price_staff / 100) * $gstpercentage;
					$staff_aftergst = $price_staff + $staff_gst;
				}
				
				$data = array(
					'id' => $productid,
					'code' => $row->code,
					'type' => $row->type,
					'name' => $row->name,
					'year' => $row->year,
					'category' => $row->category,
					'weight' => $row->weight,
					'point' => $row->point,
					'price_wm' => number_format($price_wm, 2, '.', ''),
					'wm_gst' => number_format($wm_gst, 2, '.', ''),
					'wm_aftergst' => number_format($wm_aftergst, 2, '.', ''),
					'price_em' => number_format($price_em, 2, '.', ''),
					'em_gst' => number_format($em_gst, 2, '.', ''),
					'em_aftergst' => number_format($em_aftergst, 2, '.', ''),
					'price_staff' => number_format($price_staff, 2, '.', ''),
					'staff_gst' => number_format($staff_gst, 2, '.', ''),
					'staff_aftergst' => number_format($staff_aftergst, 2, '.', ''),
					
				);
				#image
				$image = $imagedata->where('product_id',$productid)->orderBy('status', 'desc')->orderBy('id', 'desc')->first();
				if($image){
					$data['image_id'] = $image['id'];
					$data['image_name'] = $image['file_name'];
					$data['image_description'] = $image['description'];
					$data['image_path'] = $image['path'];
				}
				
				#in promotion range
 				$promotion = $promotiondata->where('product_id',$productid)
											->where('start','<=',$nowdatetime)
											->where('end','>=',$nowdatetime)
											->where('status',1)
											->orderBy('id', 'desc')->first();
				if($promotion){
					// $type = "Promotion";
					
					$type = "Product Promotion";
					if($row->type == 2)
						$type = "Package Promotion";
					
					#price after gst
					$price_wm = $promotion['price_wm'];
					$price_em = $promotion['price_em'];
					$price_staff = $promotion['price_staff'];
					$wm_gst = $wm_aftergst = $em_gst = $em_aftergst = $staff_gst = $staff_aftergst = 0;
					if($price_wm > 0){
						$wm_gst = ($price_wm / 100) * $gstpercentage;
						$wm_aftergst = $price_wm + $wm_gst;
					}
					if($price_em > 0){
						$em_gst = ($price_em / 100) * $gstpercentage;
						$em_aftergst = $price_em + $em_gst;
					}
					if($price_staff > 0){
						$staff_gst = ($price_staff / 100) * $gstpercentage;
						$staff_aftergst = $price_staff + $staff_gst;
					}
					$data['price_wm'] = number_format($price_wm, 2, '.', '');
					$data['wm_gst'] = number_format($wm_gst, 2, '.', '');
					$data['wm_aftergst'] = number_format($wm_aftergst, 2, '.', '');
					$data['price_em'] = number_format($price_em, 2, '.', '');
					$data['em_gst'] = number_format($em_gst, 2, '.', '');
					$data['em_aftergst'] = number_format($em_aftergst, 2, '.', '');
					$data['price_staff'] = number_format($price_staff, 2, '.', '');
					$data['staff_gst'] = number_format($staff_gst, 2, '.', '');
					$data['staff_aftergst'] = number_format($staff_aftergst, 2, '.', '');
					$data['promotion_id'] = $promotion['id'];
					$data['promotion_description'] = $promotion['description'];
					
				}
				
				$productArr[$type][] = $data;
			}
		}
		$datalisting = array(
			'nowdatetime' => $nowdatetime,
			'countproduct' => $productdata->count(),
			'productArr' => $productArr,
			// 'typeArr' => array( '0' => '', '1' => 'Product','2' => 'Package ','3' => 'Promotion' ),
			'typeArr' => array( '0' => '', '1' => 'Product','2' => 'Package ','3' => 'Product Promotion','3' => 'Package Promotion' ),
		);
		return $datalisting;
    }
	
	public function single_data_product($id = 0){
		# Bhaihaqi modify 2018-04-09 10:27 PM
		$nowdatetime =  date('Y-m-d H:i:s');
		$data = array();
		$productArr = array();
		if($id > 0){
			$productdata = New Product;
			$promotiondata = New Product_promotion;
			$datap = $productdata->where('id', $id)->where('notforsale', 0)->first();
			if($datap){
				# get Tax GST percentage		
				$taxgst = Tax::where('code', 'gst')->first();
				if($taxgst == false)
					$gstpercentage = 6;
				else
					$gstpercentage = $taxgst['percent'];
					
				# Price of Product (Calc GST)	
				$price_wm = $datap['price_wm'];
				$price_em = $datap['price_em'];
				$price_staff = $datap['price_staff'];
				$wm_gst = $wm_aftergst = $em_gst = $em_aftergst = $staff_gst = $staff_aftergst = 0;
				if($price_wm > 0){
					$wm_gst = ($price_wm / 100) * $gstpercentage;
					$wm_aftergst = $price_wm + $wm_gst;
				}
				if($price_em > 0){
					$em_gst = ($price_em / 100) * $gstpercentage;
					$em_aftergst = $price_em + $em_gst;
				}
				if($price_staff > 0){
					$staff_gst = ($price_staff / 100) * $gstpercentage;
					$staff_aftergst = $price_staff + $staff_gst;
				}
				$packagedata = New Product_package;
				if($datap['type'] == 2){
					#Type Product Package
					$product_list = $packagedata->where('package_id', $id)->get();
					if(count($product_list) > 0){
						foreach($product_list->all() as $key => $row){
							$package_item = $productdata->where('id', $row->product_id)->where('type','<>', 2)->first();
							$productArr[$package_item['id']] = $package_item;
							$price_wm2 = $package_item['price_wm'];
							$price_em2 = $package_item['price_em'];
							$price_staff2 = $package_item['price_staff'];
							$wm_gst2 = $wm_aftergst2 = $em_gst2 = $em_aftergst2 = $staff_gst2 = $staff_aftergst2 = 0;
							if($price_wm2 > 0){
								$wm_gst2 = ($price_wm2 / 100) * $gstpercentage;
								$wm_aftergst2 = $price_wm2 + $wm_gst2;
							}
							if($price_em2 > 0){
								$em_gst2 = ($price_em2 / 100) * $gstpercentage;
								$em_aftergst2 = $price_em2 + $em_gst2;
							}
							if($price_staff2 > 0){
								$staff_gst2 = ($price_staff2 / 100) * $gstpercentage;
								$staff_aftergst2 = $price_staff2 + $staff_gst2;
							}
							
							$productArr[$package_item['id']]['price_wm'] = number_format($price_wm2, 2, '.', '');
							$productArr[$package_item['id']]['wm_gst'] = number_format($wm_gst2, 2, '.', '');
							$productArr[$package_item['id']]['wm_aftergst'] = number_format($wm_aftergst2, 2, '.', '');
							$productArr[$package_item['id']]['price_em'] = number_format($price_em2, 2, '.', '');
							$productArr[$package_item['id']]['em_gst'] = number_format($em_gst2, 2, '.', '');
							$productArr[$package_item['id']]['em_aftergst'] = number_format($em_aftergst2, 2, '.', '');
							$productArr[$package_item['id']]['price_staff'] = number_format($price_staff2, 2, '.', '');
							$productArr[$package_item['id']]['staff_gst'] = number_format($staff_gst2, 2, '.', '');
							$productArr[$package_item['id']]['staff_aftergst'] = number_format($staff_aftergst2, 2, '.', '');
							$productArr[$package_item['id']]['package_quantity'] = $row->quantity;
						}
					}
					$data['productArr'] = $productArr;
					// $data['product_list'] = $product_list; x guna
					$data['typename'] = 'Package';
				}
				else{
					#Type Product
					$package_list = $packagedata->where('product_id',$id)->orderBy('id', 'desc')->get();
					if(count($package_list) > 0){
						foreach($package_list->all() as $key => $row){
							$package_id = $row->package_id;
							$package = $productdata->where('id', $package_id)->first();
							$productArr[$package['id']] = $package;
							
							$price_wm2 = $package['price_wm'];
							$price_em2 = $package['price_em'];
							$price_staff2 = $package['price_staff'];
							$wm_gst2 = $wm_aftergst2 = $em_gst2 = $em_aftergst2 = $staff_gst2 = $staff_aftergst2 = 0;
							if($price_wm2 > 0){
								$wm_gst2 = ($price_wm2 / 100) * $gstpercentage;
								$wm_aftergst2 = $price_wm2 + $wm_gst2;
							}
							if($price_em2 > 0){
								$em_gst2 = ($price_em2 / 100) * $gstpercentage;
								$em_aftergst2 = $price_em2 + $em_gst2;
							}
							if($price_staff2 > 0){
								$staff_gst2 = ($price_staff2 / 100) * $gstpercentage;
								$staff_aftergst2 = $price_staff2 + $staff_gst2;
							}
							
							$productArr[$package['id']]['price_wm'] = number_format($price_wm2, 2, '.', '');
							$productArr[$package['id']]['wm_gst'] = number_format($wm_gst2, 2, '.', '');
							$productArr[$package['id']]['wm_aftergst'] = number_format($wm_aftergst2, 2, '.', '');
							$productArr[$package['id']]['price_em'] = number_format($price_em2, 2, '.', '');
							$productArr[$package['id']]['em_gst'] = number_format($em_gst2, 2, '.', '');
							$productArr[$package['id']]['em_aftergst'] = number_format($em_aftergst2, 2, '.', '');
							$productArr[$package['id']]['price_staff'] = number_format($price_staff2, 2, '.', '');
							$productArr[$package['id']]['staff_gst'] = number_format($staff_gst2, 2, '.', '');
							$productArr[$package['id']]['staff_aftergst'] = number_format($staff_aftergst2, 2, '.', '');
							$productArr[$package_item['id']]['package_quantity'] = $row->quantity;
						}
					}
							
					$data['productArr'] = $productArr;
					// $data['package_list'] = $package_list; x guna
					$data['typename'] = 'Product';
				}
				# get Quantity Type
				$configquantitytypedata = New QuantityType;
				$quantitytype = $configquantitytypedata->where('id', $datap['qtytype_id'])->first();
				
				$data['data'] = $datap;
				$data['quantitytype'] = $quantitytype['type'];
				$data['price_wm'] = number_format($price_wm, 2, '.', '');
				$data['wm_gst'] = number_format($wm_gst, 2, '.', '');
				$data['wm_aftergst'] = number_format($wm_aftergst, 2, '.', '');
				$data['price_em'] = number_format($price_em, 2, '.', '');
				$data['em_gst'] = number_format($em_gst, 2, '.', '');
				$data['em_aftergst'] = number_format($em_aftergst, 2, '.', '');
				$data['price_staff'] = number_format($price_staff, 2, '.', '');
				$data['staff_gst'] = number_format($staff_gst, 2, '.', '');
				$data['staff_aftergst'] = number_format($staff_aftergst, 2, '.', '');
				$data['nowdatetime'] = $nowdatetime;
				#in promotion range
 				$promotion = $promotiondata->where('product_id',$id)
											->where('start','<=',$nowdatetime)
											->where('end','>=',$nowdatetime)
											->where('status',1)
											->orderBy('id', 'desc')->first();
				if($promotion){
					$data['typename'] = $data['typename'] . " Promotion";
					#price after gst
					$price_wm = $promotion['price_wm'];
					$price_em = $promotion['price_em'];
					$price_staff = $promotion['price_staff'];
					$wm_gst = $wm_aftergst = $em_gst = $em_aftergst = $staff_gst = $staff_aftergst = 0;
					if($price_wm > 0){
						$wm_gst = ($price_wm / 100) * $gstpercentage;
						$wm_aftergst = $price_wm + $wm_gst;
					}
					if($price_em > 0){
						$em_gst = ($price_em / 100) * $gstpercentage;
						$em_aftergst = $price_em + $em_gst;
					}
					if($price_staff > 0){
						$staff_gst = ($price_staff / 100) * $gstpercentage;
						$staff_aftergst = $price_staff + $staff_gst;
					}
					$data['price_wm'] = number_format($price_wm, 2, '.', '');
					$data['wm_gst'] = number_format($wm_gst, 2, '.', '');
					$data['wm_aftergst'] = number_format($wm_aftergst, 2, '.', '');
					$data['price_em'] = number_format($price_em, 2, '.', '');
					$data['em_gst'] = number_format($em_gst, 2, '.', '');
					$data['em_aftergst'] = number_format($em_aftergst, 2, '.', '');
					$data['price_staff'] = number_format($price_staff, 2, '.', '');
					$data['staff_gst'] = number_format($staff_gst, 2, '.', '');
					$data['staff_aftergst'] = number_format($staff_aftergst, 2, '.', '');
					$data['promotion_id'] = $promotion['id'];
					$data['promotion_description'] = $promotion['description'];
					$data['promotion_start'] = $promotion['start'];
					$data['promotion_end'] = $promotion['end'];
				}
				
				$imagedata = New Product_image;
				$promotiondata = New Product_promotion;
				$data['imageArr'] = $imagedata->where('product_id',$id)->orderBy('status', 'desc')->orderBy('id', 'desc')->get();
				$data['statusArr'] = array('1' => 'Active', '0' => 'Inactive');
				$data['gstpercentage'] = $gstpercentage;
			}
		}
		return $data;
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
	
	function datepicker2mysql($date_dmY){
		# $date = d/m/Y format
		$tmp_date = explode("/", $date_dmY);
		if(sizeof($tmp_date) != 3)
			return null;
		
		$sql_date = $tmp_date[2] . "-" . $tmp_date[1] . "-" . $tmp_date[0];
		return $sql_date;
	}
}
