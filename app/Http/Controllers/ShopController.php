<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

use App\User;
use App\Models\Invoice;
use App\Models\Product;
use App\Models\Package;
use App\Models\Referral;
use App\Models\Wallet;
use App\Models\Store;
use App\Http\Controllers\Inventory\ProductController;
use App\Models\OrderTransection;
use App\Models\Config_tax;
use App\Models\Product_image;
use App\Models\Product_package;
use App\Models\DeliveryType;
use App\Models\Address;
use App\Models\AgentOrderHdr;
use App\Models\AgentOrderItem;
use App\Models\GlobalStatus;
use App\Models\GlobalNr;


use Validator;
use Session;
use Cart;

class ShopController extends Controller
{
    public function skgMall(){
        $product = Array();

        try{

            $data = (new ProductController)->all_data_product();

            foreach ($data['productArr']['Product'] as $key1 => $value) {
                
                $data['productArr']['Product'][$key1]['product_type'] = "product";
                $data['productArr']['Product'][$key1]['promotion_status'] = "hidden";
                $data['productArr']['Product'][$key1]['package_status'] = "hidden";
            }
            foreach ($data['productArr']['Package'] as $key2 => $value) {
                
                $data['productArr']['Package'][$key2]['product_type'] = "package";
                $data['productArr']['Package'][$key2]['promotion_status'] = "hidden";
                $data['productArr']['Package'][$key2]['package_status'] = "";
            }
            foreach ($data['productArr']['Promotion'] as $key3 => $value) {
                
                $data['productArr']['Promotion'][$key3]['product_type'] = "promotion";
                $data['productArr']['Promotion'][$key3]['promotion_status'] = "";
                $data['productArr']['Promotion'][$key3]['package_status'] = "hidden";
            }
            foreach ($data['productArr']['Package_Promotion'] as $key4 => $value) {
                
                $data['productArr']['Package_Promotion'][$key4]['product_type'] = "package_promotion";
                $data['productArr']['Package_Promotion'][$key4]['promotion_status'] = "";
                $data['productArr']['Package_Promotion'][$key4]['package_status'] = "";
            }

            // echo "<pre>";
            // echo print_r($data);
            // echo "</pre>";
            // die();
            // dd($data);

            $product = array_merge($data['productArr']['Product'],$data['productArr']['Package'],$data['productArr']['Promotion'],$data['productArr']['Package_Promotion']);

            // dd($data,$product);

            $count = OrderTransection::where('agent_id',Auth::user()->id)->count();

            $return['message'] = 'succssfuly';
            $return['status'] = '01';
        }
        catch(\Exception $e){
            $return['message'] = $e->getMessage();
            $return['status'] = '02';
            $image = "";
        }
        // dd($return);
        return view('shops.product_list',compact('product','count'));
    }

    public function addCartItems(Request $request){

        $data = (!empty($request->get('item')) ? $request->get('item') : []);

        try{

            $cartItem = OrderTransection::select('id','product_id','agent_id','quantity')
                                        ->where('product_id',$data['product_id'])
                                        ->where('agent_id',$data['agent_id'])
                                        ->first();
            if($cartItem == null){
                
                $addToCart = Array(

                    'agent_id' => $data['agent_id'],
                    'product_id' => $data['product_id'],
                    'quantity' => $data['quantity'], 
                    'created_by' => Auth::user()->id,
                    'created_at' => \Carbon\Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'))
                );

                OrderTransection::insertGetId($addToCart);
            }
            else{
                $updateQuantity = $cartItem['quantity'] + $data['quantity'];
                OrderTransection::where('product_id',$data['product_id'])
                                ->where('agent_id',$data['agent_id'])
                                ->update([

                                    'quantity' => $updateQuantity,
                                    'updated_by' =>  Auth::user()->id,
                                    'updated_at' => \Carbon\Carbon::now()

                                ]);

            }

            $count = OrderTransection::count();
            $return['message'] = "succssfuly inserted";
            $return['status'] = "01";            
            
        } 
        catch (\Exception $e){
            
            $return['message'] = $e->getMessage();
            $return['status'] = "02";
        }

        // dd($data);
        return compact('data','return','product','agent','count');
    }

    public function getCartItems($agent_id = null){

        try{

            $cartItems = OrderTransection::leftJoin('products','products.id','=','orders_transection.product_id')
                                        ->select('orders_transection.id','products.id as product_id','products.name','products.description','products.price_wm','products.price_em','products.quantity_min'
                                            ,'products.quantity as stock_quantity','orders_transection.quantity as total_quantity')
                                        ->where('orders_transection.agent_id','=',$agent_id)
                                        ->get()->toArray();

            $totalPrice_wm = 0.00;
            $totalPrice_em = 0.00;
            $grandTotalPrice_wm = 0.00;
            $grandTotalPrice_em = 0.00;
            $shipping_fee = 0.00;
            foreach ($cartItems as $key => $value){

                $cartItems[$key]['price_wm'] = $this->fn_calc_gst_price($cartItems[$key]['price_wm']);
                $cartItems[$key]['price_em'] = $this->fn_calc_gst_price($cartItems[$key]['price_em']);

                $total_price_wm = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price_wm']);
                $total_price_em = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price_em']);

                $cartItems[$key]['total_price_wm'] = $total_price_wm;
                $cartItems[$key]['total_price_em'] = $total_price_em;

                $image = product_image::select('type','description','file_name','path')
                                        ->where('product_id',$cartItems[$key]['product_id'])
                                        ->orderBy('status','desc')
                                        ->first();

                $cartItems[$key]['image'] = ($image['path'] == null ? '' : $image['path']);

                $totalPrice_wm = $totalPrice_wm + (float)str_replace(",", "", $cartItems[$key]['total_price_wm']);
                $totalPrice_em = $totalPrice_em + (float)str_replace(",", "", $cartItems[$key]['total_price_em']);

            }

            if($totalPrice_wm != 0.00 && $totalPrice_em != 0.00){
                if($totalPrice_wm < 300.00 || $totalPrice_em < 300.00){

                    $shipping_fee = number_format(10.00,2);
                }
                else{

                    $shipping_fee = number_format(0.00,2);
                }
            }
            else{

                 $shipping_fee = number_format(0.00,2);
            }

            $totalPrice_wm = round($totalPrice_wm,2);
            $totalPrice_em = round($totalPrice_em,2);

            $grandTotalPrice_wm = (float)$totalPrice_wm + (float)$shipping_fee;
            $grandTotalPrice_em = (float)$totalPrice_em + (float)$shipping_fee;

            $totalPrice_wm = number_format($totalPrice_wm,2);
            $totalPrice_em = number_format($totalPrice_em,2);

            $grandTotalPrice_wm = number_format(round($grandTotalPrice_wm,2),2);
            $grandTotalPrice_em = number_format(round($grandTotalPrice_em,2),2);



            $returnData = [

                'agent_id'        => $agent_id,
                'grandTotalPrice_wm' => $grandTotalPrice_wm,
                'grandTotalPrice_em' => $grandTotalPrice_em,
                'shippingPrice'  => $shipping_fee,
                'totalPrice_wm' => $totalPrice_wm,
                'totalPrice_em' => $totalPrice_em
            ];

            $deliveryType = DeliveryType::select('id','delivery_code as code','type_description as description')
                                        ->get();

            $return['message'] = "succssfuly retrived";
            $return['status'] = "01";

        }
        catch(\Exception $e){

            $return['message'] = $e->getMessage();
            $return['status'] = "02";

            // dd($return);
        }
        
        // dd($return,$cartItems,$returnData,$totalPrice_wm,$totalPrice_em);
        return view('shops.cart-lists',compact('cartItems','returnData','deliveryType'));
    }

    public function deleteCartItem(Request $request){

        $id = $request->get('item');
        try{

            OrderTransection::where('id',$id)->delete();

            $return['message'] = "succssfully deleted";
            $return['status'] = "01";

        }
        catch(\Exception $e){

            $return['message'] = $e->getMessage();
            $return['status'] = "02";

        }

        return compact('return');
    }

    public function updateCartitems(Request $request){

        $id = $request->get('id');
        $quantity = $request->get('quantity');
        // dd($quantity);

        try {

            foreach($quantity as $key => $value) {

                OrderTransection::where('agent_id',$id)   
                                    ->where('product_id',$value['product_id'])
                                    ->update([
                                        'quantity' => $value['quantity'],
                                        'updated_by' => Auth::user()->id,
                                        'updated_at' => \Carbon\Carbon::now()
                                    ]);
            }

            $return['message'] = "succssfully updated";
            $return['status'] = "01";
            
        } 
        catch (\Exception $e) {

            $return['message'] = $e->getMessage();
            $return['status'] = "02";
            
        }

        return compact('return','quantity');
    }

    public function checkoutItems($agent_id = null,$deliveryType = null){

        // dd($delivery_type);
        try{

            $addressData = Address::select('id','name','address_code','street1','street2','poscode','city','state','country')
                                    ->where('address_code','=',$agent_id."_AGENT")
                                    ->where('reminder_flag','=','x')
                                    ->first();
                                    
            if($addressData == null){
                $addressData = Address::select('id','name','address_code','street1','street2','poscode','city','state','country')
                                    ->where('address_code','=',$agent_id."_AGENT")
                                    ->first();
            }
            // dd($addressData);
            $cartItems = OrderTransection::leftJoin('products','products.id','=','orders_transection.product_id')
                                            ->select('orders_transection.id','products.id as product_id','products.name','products.description','products.price_wm','products.price_em','products.quantity_min'
                                                ,'products.quantity as stock_quantity','orders_transection.quantity as total_quantity')
                                            ->where('orders_transection.agent_id','=',$agent_id)
                                            ->get()->toArray();

            // dd($addressData);
            $totalPrice = 0.00;
            $grandTotalPrice = 0.00;
            $shipping_fee = 0.00;
            foreach ($cartItems as $key => $value){

                if(strtolower($addressData->state) == strtolower("Sabah") || strtolower($addressData->state) ==  strtolower("Sarawak")){

                    $cartItems[$key]['price'] = $this->fn_calc_gst_price($cartItems[$key]['price_em']);
                    $total_price = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price']);
                    $cartItems[$key]['total_price'] = $total_price;
                }
                else{
                    $cartItems[$key]['price'] = $this->fn_calc_gst_price($cartItems[$key]['price_wm']);
                    $total_price = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price']);
                    $cartItems[$key]['total_price'] = $total_price;
                }
                

                $prdimage = Product_image::select('type','description','file_name','path')
                                        ->where('product_id',$cartItems[$key]['product_id'])
                                        ->orderBy('status','desc')
                                        ->first();
                // dd($prdimage['path']);

                $cartItems[$key]['image'] = ($prdimage['path'] == null ? '' : $prdimage['path']);

                $totalPrice = $totalPrice + (float)str_replace(",", "", $cartItems[$key]['total_price']);
                $totalPrice = round($totalPrice,2);

            }

            // dd($cartItems,$prdimage,$totalPrice);
            //shipping fee

            if($totalPrice != 0.00){
                if($totalPrice < 300.00){

                    $shipping_fee = number_format(10.00,2);
                }
                else{

                    $shipping_fee = number_format(0.00,2);
                }
            }
            else{

                 $shipping_fee = number_format(0.00,2);
            }

            //total price
            $totalPrice = round($totalPrice,2);
            //gandtotal price
            $grandTotalPrice = (float)$totalPrice + (float)$shipping_fee;
            
            $grandTotalPrice = round($grandTotalPrice,2);

            $totalPrice = number_format($totalPrice,2);
            $grandTotalPrice = number_format($grandTotalPrice,2);

            if($addressData != null){
                if($deliveryType == "01"){

                    $address = [

                        'name'      => $addressData->name,
                        'address' => $addressData->street1.",".$addressData->street2.",".$addressData->poscode.",".$addressData->city.",".$addressData->state.",".$addressData->country,
                        'btnstatus' => "",
                        'id' => $addressData->id,
                        'code' => $addressData->address_code
                    ];
                }
                elseif($deliveryType == "02"){

                    $addressData = [];
                    $address = [

                        'name'      => "",
                        'address' =>  "Self Pickup",
                        'btnstatus' => "hidden",
                        'id' => "",
                        'code' => ""
                    ];
                }
            }
            else{

                $addressData = [];
                $address = [

                        'name'      => "",
                        'address' => "",
                        'btnstatus' => "",
                        'id' => "",
                        'code' => ""
                    ];
            }

            $returnData = [

                'agent_id'        => $agent_id,
                'grandTotalPrice' => $grandTotalPrice,
                'totalPrice' => $totalPrice,
                'shippingPrice'  => $shipping_fee,
                'address' => $address,
                'deliveryType' =>$deliveryType
            ];


            $return['message'] = "succssfuly retrived";
            $return['status'] = "01";

            // dd($address);    
        }
        catch(\Exception $e){

            $return['message'] = $e->getMessage();
            $return['status'] = "02";
        }

        // dd($cartItems,$returnData);
        // dd($return);
        return view('shops.checkout-items',compact('cartItems','returnData','address','deliveryType'));
    }

    public function getAddress(Request $request){

        $agent_id = $request->get('agent_id');
        // dd($agent_id);

        try{

        $adds = Address::select('id','name','address_code','street1','street2','poscode','city','state','country')
                                    ->where('address_code','=',$agent_id."_AGENT")
                                    ->get();

        $address = [];
        foreach ($adds as $key => $value) {
            
            $addressData = Array(

                'id' => $value['id'],
                'address_code' => $value['address_code'],
                'name' => $value->name,
                'address' => $value['street1'].",".$value['street2'].",".$value['poscode'].",".$value['city'].",".$value['state'].",".$value['country'],
            );

            $address[] = $addressData;
        }

            $return['message'] = "succssfuly retrived";
            $return['status'] = "01";
        }
        catch(\Exception $e){

            $return['message'] = $e->getMessage();
            $return['status'] = "02";
        }

        return compact('return','address');
    }

    public function saveAddress(Request $request){

        // dd($request->get('item'));
        $newAddress = $request->get('item');

        try{

            $address = Address::where('address_code',$newAddress['address_code'])
                                ->get();
            if(empty($address)){

                $newAddress['address_code'] = Auth::user()->id."_AGENT";
                $newAddress['reminder_flag'] = "x";
                $newAddress ['created_by'] =  Auth::user()->id;
                $newAddress['created_at'] = \Carbon\Carbon::now();

                // dd($newAddress);
                address::insert($newAddress);

                $return['message'] = "succssfuly saved";
                $return['status'] = "01";
            }
            else{
                 if($newAddress['id'] != "" && $newAddress['address_code'] != ""){

                    $newAddress['updated_by'] =  Auth::user()->id;
                    $newAddress['updated_at'] = \Carbon\Carbon::now();

                    Address::where('id',$newAddress['id'])
                            ->where('address_code', $newAddress['address_code'])
                            ->update($newAddress);

                    $return['message'] = "succssfuly updated";
                    $return['status'] = "01";

                }
                else{

                    $newAddress['address_code'] = Auth::user()->id."_AGENT";
                    $newAddress['reminder_flag'] = "";
                    $newAddress ['created_by'] =  Auth::user()->id;
                    $newAddress['created_at'] = \Carbon\Carbon::now();

                    // dd($newAddress);
                    Address::insert($newAddress);

                    $return['message'] = "succssfuly saved";
                    $return['status'] = "01";
                }
            }
        }
        catch(\Exception $e){

            $return['message'] = $e->getMessage();
            $return['status'] = "02";

        }

        return compact('return');
    }

    private function fn_calc_gst_price($price){

        try{

            $AfterGst = 0.00;
            $price = (float)$price;
            $gstRate = config_tax::select('percent')
                                ->where('code',"gst")
                                ->first();

            $gst = 1 + ($gstRate->percent/100);
            $gst = (float)$gst;

            $AfterGst = ($price * $gst);
            $AfterGst = round($AfterGst,2);
            $AfterGst = number_format($AfterGst, 2, '.', '');

            $return['message'] = "succssfuly calculate";
            $return['status'] = "01";

        }
        catch(\Exception $e){

            $return['message'] = $e->getMessage();
            $return['status'] = "02";
        }
        // dd($AfterGst,$price,$gst);
        return $AfterGst;
    }

    private function fn_calc_total_price($quantity,$price){

        $total_price = (float)$quantity * (float)$price;
        $total_price = round(floatval($total_price),2);
        $total_price = number_format($total_price,2);

        return $total_price;
    }

    public function getProductPackage(Request $request){

        $product_id = $request->get('product_id');

        try {
            
            $data = (new ProductController)->single_data_product($product_id);
            $package = [];
            if(!empty($data)){

                $package = $data['productArr'];

                foreach ($package as $key => $value) { 
                    
                    $image = Product_image::select('type','description','file_name','path')
                                        ->where('product_id',$value['id'])
                                        ->orderBy('status','desc')
                                        ->first();

                    $package[$key]['image'] = ($image['path'] == null ? '' : $image['path']);
                }
            }

            // dd($data['productArr']);

            $return['message'] = "succssfuly retrived";
            $return['status'] = "01";
        }
        catch(\Exception $e){
            
            $return['message'] = $e->getMessage();
            $return['status'] = "02";
        }

        // dd($return,$data);
        return compact('return','package','data');
    }

    public function placeOrder(Request $request){

            $agent_id = (!empty($request->get('agent_id')) ? $request->get('agent_id') : '');
            $shipping_id = (!empty($request->get('shipping_id')) ? $request->get('shipping_id') : '');
            $billing_id = (!empty($request->get('billing_id')) ? $request->get('billing_id') : '');
            $total_price = (!empty($request->get('total_price')) ? $request->get('total_price') : '');
            $shipping_fee = (!empty($request->get('shipping_fee')) ? $request->get('shipping_fee') : '');
            $delivery_type = (!empty($request->get('delivery_type')) ? $request->get('delivery_type') : '');

            // dd($$request->get('billing_id'),$request->get('shipping_id'));
        try{

            $cartItems = OrderTransection::leftJoin('product','product.id','=','agent_select_product.product_id')
                                            ->select('agent_select_product.id','product.id as product_id','product.name','product.description'
                                                ,'product.price_wm','product.price_em','product.quantity_min'
                                                ,'product.quantity as stock_quantity','agent_select_product.quantity as total_quantity')
                                            ->where('agent_select_product.agent_id','=',$agent_id)
                                            ->get();

            // dd($cartItems);
            if(count($cartItems) > 0){

                $order_no = (new DeliveryOrderController)->generate_orderno("SO");
                // dd($order_no);
                $order_item = [];
                $total_product_quantity = 0;
                $date = new \DateTime();
                foreach($cartItems as $k => $v){

                    $item = Array(

                        'order_no' => $order_no['data'],
                        'do_no' => "",
                        'product_id' => $v['product_id'],
                        'product_qty' => $v['total_quantity'],
                        'product_typ' => "",
                        'product_status' => "01",
                        'created_by' =>  Auth::user()->id,
                        'created_at' => \Carbon\Carbon::now()
                    );

                    $order_item[] = $item;

                    $total_product_quantity = $total_product_quantity + $v->total_quantity;
                }

                $total_price = str_replace(",", "", $total_price);

                $orderHdr = [

                    'order_no' => $order_no['data'],
                    'agent_id' => $agent_id,
                    'invoice_no' => "",
                    'total_items' => $total_product_quantity,
                    'gst' => 0,
                    'shipping_fee' => $shipping_fee,
                    'total_price' => $total_price,
                    'delivery_type' => (int)$delivery_type,
                    'purchase_date' => $date->format('Y-m-d'),
                    'status' => "01",
                    'bill_address' => (int)$billing_id,
                    'ship_address' => (int)$shipping_id,
                    'created_by' =>  Auth::user()->id,
                    'created_at' => \Carbon\Carbon::now()

                ];

                $x = AgentOrderHdr::insert($orderHdr);
                // dd($orderHdr,$order_item);
                if($x){
                    foreach ($order_item as $key => $value){
                        $y = AgentOrderItem::insert($order_item[$key]);
                    }
                }

                if($x && $y){
                    OrderTransection::where('agent_id',$agent_id)
                                    ->delete();

                    Address::where('id',$shipping_id)
                                ->update(['reminder_flag' => 'x']);
                }

                $return['message'] = "Succssfuly placed the order";
                $return['status'] = "01";
            }
            else{

                $order_no = [

                    'data' => ''
                ];

                $return['message'] = "No order placed ";
                $return['status'] = "03";
            }
        }
        catch(\Exception $e){
            
            $return['message'] = $e->getMessage();
            $return['status'] = "02";
        }

        return compact('return','order_no');
    }

    public function getDeliveryStatus($order_no = null){
        // echo $order_no;
        try{

            $orderHdr = AgentOrderHdr::leftJoin('delivery_type','delivery_type.delivery_code','=','agent_order_hdr.delivery_type')
                            ->leftJoin('global_status','global_status.status','=','agent_order_hdr.status')
                            ->select('agent_order_hdr.order_no','agent_order_hdr.agent_id','agent_order_hdr.agent_id','agent_order_hdr.invoice_no','agent_order_hdr.total_items','agent_order_hdr.total_price','agent_order_hdr.delivery_type','agent_order_hdr.purchase_date','agent_order_hdr.status','delivery_type.type_description','global_status.description')
                            ->where('order_no','=',$order_no)
                            ->first();
            // dd($orderHdr);

            $date = new \DateTime($orderHdr->purchase_date);
            $orderHdr->purchase_date = $date->format('d M Y');

            $data = GlobalStatus::select('id','status','description')
                                    ->where('table','order_hdr')
                                    ->get();

            $return['message'] = "succssfuly retrived";
            $return['status'] = "01";

        }
        catch(\Exception $e){

            $return['message'] = $e->getMessage();
            $return['status'] = "02";
        }

        // dd($orderHdr,$return);
        return view('shops.delivery-status',compact('return','data','orderHdr'));
    }

    public function agentsStoreList()
    {
    	$id = Auth::user()->id;

    	$my = Referral::where('user_id', $id)->first();

    	$agents = $my->getAncestors();

    	$qualified_agents = array();
    	$count = 0;
    	
    	foreach ($agents as $agent) 
    	{
    		$wallet  = Wallet::where('user_id', $agent->user_id)->first();
            $rank_id = $agent->user->rank_id;
    		
    		//if(($rank_id > 2 && $count < 5) && ($wallet && $wallet->current_pv >= 0))//original
            if(($rank_id > 2 && $count < 5))//for tresting
    		{
    			$qualified_agents[] = $agent;
    			$count++; 
    		}

    		elseif($count == 5) break;
    	}

        return view('shops.agents-store-list', compact('qualified_agents'));
        // echo '<pre>';
        // var_dump($agents->toArray());
        // echo '</pre>';
    }

    public function agentStore($id)
    {
        $user     = User::find($id);
        $products = Store::where('user_id', $id)->groupBy('product_id')->get();

        return view('shops.agent-store', compact('user', 'products'));
    }

    //Cart
    public function addToCart(Request $request)
    {
        $itemType = $request->itemType;
        $quantity = $request->quantity;

        if($itemType == 'product')
        {
            $product = Product::find($request->id);
            $addtocart = Cart::add($product->id, 'Product: '.$product->name, $quantity, $product->wm_price);

        } else {
            $package = Package::find($request->id);
            $addtocart = Cart::add($package->id, 'Package: '.$package->name, $quantity, $package->wm_price);
        }

        return redirect()->back();
        //return response()->json($addtocart);

    }

    public function updateCart(Request $request, $id)
    {
        $rowId = $id;
        $cart  = Cart::update($rowId, $request->qty);

        //return redirect()->back();
        return response()->json($cart);
    }

    public function checkout()
    {   
        return view('shops.checkout');
    }

    public function cart()
    {
        return view('shops.cart');
    }

    public function firstCart()//for first purchase upon registration
    {
        return view('shops.first-cart');
    }

    public function agentStoreCart($id)
    {
        return view('shops.cart', compact('id'));
    }

    public function emptyCart()
    {
        Cart::destroy();

        return redirect()->back();
    }

    public function removeFromCart($id)
    {
        $cart = Cart::remove($id);
        return redirect()->back();
    }

    //End Cart
}
