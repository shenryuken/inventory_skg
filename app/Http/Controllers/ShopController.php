<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

use App\User;
use App\Admin;
use App\Models\Invoice;
use App\Models\Product;
use App\Models\Package;
use App\Models\Referral;
use App\Models\Wallet;
use App\Models\Store;
use App\Models\OrderTransection;
use App\Models\Tax;
use App\Models\Product_image;
use App\Models\Product_package;
use App\Models\Product_promotion_gift;
use App\Models\Product_promotion;
use App\Models\DeliveryType;
use App\Models\Address;
use App\Models\AgentAddress;
use App\Models\OrderHdr;
use App\Models\OrderItem;
use App\Models\AgentOrderHdr;
use App\Models\AgentOrderItem;
use App\Models\GlobalStatus;
use App\Models\Rank;
use App\Classes\GlobalNumberRange;
use App\Models\UserPurchase;
// use App\Models\Store;
use App\Models\PaymentType;

use App\Http\Controllers\Inventory\ProductUserController;

use App\Traits\WalletTrait;
use App\Traits\SalesTrait;

use Validator;
use Session;
use Cart;

class ShopController extends Controller
{   
    use WalletTrait, SalesTrait;
    //amin
    public function skgMall(){
        $product = Array();
        $count = 0;

        $session = session(["STORE"=>"SKG_STORE"]);

        try{

            $data = (new ProductUserController)->all_data_product();

            foreach ($data['productArr']['Product'] as $key1 => $value) {
                
                $data['productArr']['Product'][$key1]['product_type']       = "product";
                $data['productArr']['Product'][$key1]['promotion_status']   = "hidden";
                $data['productArr']['Product'][$key1]['package_status']     = "hidden";
            }
            foreach ($data['productArr']['Package'] as $key2 => $value) {
                
                $data['productArr']['Package'][$key2]['product_type']       = "package";
                $data['productArr']['Package'][$key2]['promotion_status']   = "hidden";
                $data['productArr']['Package'][$key2]['package_status']     = "";
            }
            foreach ($data['productArr']['Promotion'] as $key3 => $value) {
                
                $data['productArr']['Promotion'][$key3]['product_type']     = "promotion";
                $data['productArr']['Promotion'][$key3]['promotion_status'] = "";
                $data['productArr']['Promotion'][$key3]['package_status']   = "hidden";
            }
            foreach ($data['productArr']['Package_Promotion'] as $key4 => $value) {
                
                $data['productArr']['Package_Promotion'][$key4]['product_type']     = "package_promotion";
                $data['productArr']['Package_Promotion'][$key4]['promotion_status'] = "";
                $data['productArr']['Package_Promotion'][$key4]['package_status']   = "";
            }

            // dd($data);
            // dd(Auth::guard('admin')->check());
            
            if(Auth::guard('admin')->check() == true){
                $id         = Auth::guard('admin')->user()->id;
                $order_type = "staff";
            }
            else{
                $id         = Auth::user()->id;
                $order_type = "agent";
            }

            $product = array_merge($data['productArr']['Product'],$data['productArr']['Package'],$data['productArr']['Promotion'],$data['productArr']['Package_Promotion']);

            // dd($product);
            foreach ($product as $k => $v) {

                if(isset($v['promotion_id'])){

                    $gift = Product_promotion_gift::where('promotion_id',$v['promotion_id'])->first();

                    if($gift != null){

                        $product[$k]['gift_status'] = '';
                    }
                    else{
                        $product[$k]['gift_status'] = 'hidden';
                    }
                }
                else{
                    $product[$k]['gift_status'] = 'hidden';
                }
            }

            // dd($data,$product);
            $count = OrderTransection::where('agent_id',$id)->where('order_type',$order_type)->where('mall_type','SKG_STORE')->count();

            $return['message']  = 'succssfuly';
            $return['status']   = '01';
        }
        catch(\Exception $e){
            $return['message']  = $e->getMessage();
            $return['status']   = '02';
            $image = "";
        }
        // dd($return);
        return view('shops.product_list',compact('product','count','id'));

    }

    //amin
    public function addCartItems(Request $request){

        $data = (!empty($request->get('item')) ? $request->get('item') : []);

        try{

            $sessionData = session('STORE','default');

            if(Auth::guard('admin')->check() == true){
                $id = Auth::guard('admin')->user()->id;
                $order_type = "staff";
            }
            else{
                $id = Auth::user()->id;
                $order_type = "agent";
            }

            $cartItem = OrderTransection::select('id','order_type','product_id','agent_id','quantity')
                                        ->where('order_type',$order_type)
                                        ->where('mall_type',$sessionData)
                                        ->where('product_id',$data['product_id'])
                                        ->where('agent_id',$data['agent_id'])
                                        ->first();
            if($cartItem == null){
                
                $addToCart = Array(

                    'order_type'    => $order_type,
                    'mall_type'     => $sessionData,
                    'agent_id'      => $data['agent_id'],
                    'product_id'    => $data['product_id'],
                    'quantity'      => $data['quantity'], 
                    'created_by'    => $id,
                    'created_at'    => \Carbon\Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'))
                );

                OrderTransection::insertGetId($addToCart);
            }
            else{
                $updateQuantity = $cartItem['quantity'] + $data['quantity'];
                OrderTransection::where('order_type',$order_type)
                                ->where('mall_type',$sessionData)
                                ->where('product_id',$data['product_id'])
                                ->where('agent_id',$data['agent_id'])
                                ->update([

                                    'quantity'      => $updateQuantity,
                                    'updated_by'    =>  $id,
                                    'updated_at'    => \Carbon\Carbon::now()

                                ]);

            }

            $count = OrderTransection::where('agent_id',$data['agent_id'])->where('order_type',$order_type)->where('mall_type',$sessionData)->count();
            $return['message']  = "succssfuly inserted";
            $return['status']   = "01";            
            
        } 
        catch (\Exception $e){
            
            $return['message']  = $e->getMessage();
            $return['status']   = "02";
        }

        // dd($data);
        return compact('data','return','product','agent','count');
    }

    //amin
    public function getCartItems($agent_id = null){

        $sessionData = session('STORE','default');

        if(Auth::guard('admin')->check() == true){
            $id         = Auth::guard('admin')->user()->id;
            $order_type = "staff";
        }
        else{
            $id         = Auth::user()->id;
            $order_type = "agent";
        }

        try{

            $cartItems = OrderTransection::leftJoin('products','products.id','=','orders_transection.product_id')
                                        ->select('orders_transection.id','products.id as product_id','products.name','products.description','products.price_wm','products.price_em','products.price_staff','products.quantity_min'
                                            ,'products.quantity as stock_quantity','orders_transection.quantity as total_quantity')
                                        ->where('order_type',$order_type)
                                        ->where('mall_type',$sessionData)
                                        ->where('orders_transection.agent_id','=',$agent_id)
                                        ->get()->toArray();

            $totalPrice_wm          = 0.00;
            $totalPrice_em          = 0.00;
            $totalPrice_staff       = 0.00;
            $grandTotalPrice_wm     = 0.00;
            $grandTotalPrice_em     = 0.00;
            $grandTotalPrice_staff  = 0.00;
            $shipping_fee           = 0.00;

            foreach ($cartItems as $key => $value){

                $promotion = $this->checkPromotion($cartItems[$key]['product_id']);

                if($promotion){

                    $price_wm       = $promotion->price_wm;
                    $price_em       = $promotion->price_em;
                    $price_staff    = $promotion->price_staff;
                }
                else{

                    $price_wm       = $cartItems[$key]['price_wm'];
                    $price_em       = $cartItems[$key]['price_em'];
                    $price_staff    = $cartItems[$key]['price_staff'];
                }

                $cartItems[$key]['price_wm']    = $this->fn_calc_gst_price($price_wm);
                $cartItems[$key]['price_em']    = $this->fn_calc_gst_price($price_em);
                $cartItems[$key]['price_staff'] = $this->fn_calc_gst_price($price_staff);

                $total_price_wm     = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price_wm']);
                $total_price_em     = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price_em']);
                $total_price_staff  = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price_staff']);

                $cartItems[$key]['total_price_wm']      = $total_price_wm;
                $cartItems[$key]['total_price_em']      = $total_price_em;
                $cartItems[$key]['total_price_staff']   = $total_price_staff;

                $image = product_image::select('type','description','file_name','path')
                                        ->where('product_id',$cartItems[$key]['product_id'])
                                        ->orderBy('status','desc')
                                        ->first();

                $cartItems[$key]['image'] = ($image['path'] == null ? '' : $image['path']);

                $totalPrice_wm      = $totalPrice_wm + (float)str_replace(",", "", $cartItems[$key]['total_price_wm']);
                $totalPrice_em      = $totalPrice_em + (float)str_replace(",", "", $cartItems[$key]['total_price_em']);
                $totalPrice_staff   = $totalPrice_staff + (float)str_replace(",", "", $cartItems[$key]['total_price_staff']);

            }

            // if($totalPrice_wm != 0.00 && $totalPrice_em != 0.00){
            //     if($totalPrice_wm < 300.00 || $totalPrice_em < 300.00){

            //         $shipping_fee = number_format(10.00,2);
            //     }
            //     else{

            //         $shipping_fee = number_format(0.00,2);
            //     }
            // }
            // else{

            //      $shipping_fee = number_format(0.00,2);
            // }

            $totalPrice_wm      = round($totalPrice_wm,2);
            $totalPrice_em      = round($totalPrice_em,2);
            $totalPrice_staff   = round($totalPrice_staff,2);

            $grandTotalPrice_wm     = (float)$totalPrice_wm + (float)$shipping_fee;
            $grandTotalPrice_em     = (float)$totalPrice_em + (float)$shipping_fee;
            $grandTotalPrice_staff  = (float)$totalPrice_staff + (float)$shipping_fee;

            $totalPrice_wm      = number_format($totalPrice_wm,2);
            $totalPrice_em      = number_format($totalPrice_em,2);
            $totalPrice_staff   = number_format($totalPrice_staff,2);

            $grandTotalPrice_wm     = number_format(round($grandTotalPrice_wm,2),2);
            $grandTotalPrice_em     = number_format(round($grandTotalPrice_em,2),2);
            $grandTotalPrice_staff  = number_format(round($grandTotalPrice_staff,2),2);

            $returnData = [

                'agent_id'              => $agent_id,
                'grandTotalPrice_wm'    => $grandTotalPrice_wm,
                'grandTotalPrice_em'    => $grandTotalPrice_em,
                'grandTotalPrice_staff' => $grandTotalPrice_staff,
                'shippingPrice'         => $shipping_fee,
                'totalPrice_wm'         => $totalPrice_wm,
                'totalPrice_em'         => $totalPrice_em,
                'totalPrice_staff'      => $totalPrice_staff
            ];

            $deliveryType = DeliveryType::select('id','delivery_code as code','type_description as description')
                                        ->get();

            $paymentType = PaymentType::select('id','payment_code as code','payment_description as description')
                                        ->get();

            $return['message']  = "successfully retrived";
            $return['status']   = "01";
        }
        catch(\Exception $e){

            $return['message']  = $e->getMessage();
            $return['status']   = "02";

            // dd($return);
        }
        
        // dd($return,$cartItems,$returnData,$totalPrice_wm,$totalPrice_em);
        return view('shops.cart-lists',compact('cartItems','returnData','deliveryType','paymentType'));
    }

    //amin
    public function deleteCartItem(Request $request){

        $id = $request->get('item');
        $sessionData = session('STORE','default');

        if(Auth::guard('admin')->check() == true){
            // $id = Auth::guard('admin')->user()->id;
            $order_type = "staff";
        }
        else{
            // $id = Auth::user()->id;
            $order_type = "agent";
        }

        try{

            OrderTransection::where('id',$id)->where('order_type',$order_type)->where('mall_type',$sessionData)->delete();

            $return['message']  = "succssfully deleted";
            $return['status']   = "01";

        }
        catch(\Exception $e){

            $return['message']  = $e->getMessage();
            $return['status']   = "02";

        }

        return compact('return');
    }
    //amin
    public function updateCartitems(Request $request){

        $agent_id = $request->get('agent_id');
        $quantity = $request->get('quantity');
        // dd($quantity);

        $sessionData = session('STORE','default');

        if(Auth::guard('admin')->check() == true){
            $id = Auth::guard('admin')->user()->id;
            $order_type = "staff";
        }
        else{
            $id = Auth::user()->id;
            $order_type = "agent";
        }

        try {

            foreach($quantity as $key => $value) {

                OrderTransection::where('agent_id',$agent_id) 
                                    ->where('order_type',$order_type)
                                    ->where('mall_type',$sessionData)
                                    ->where('product_id',$value['product_id'])
                                    ->update([
                                        'quantity'   => $value['quantity'],
                                        'updated_by' => $id,
                                        'updated_at' => \Carbon\Carbon::now()
                                    ]);
            }

            $return['message']  = "succssfully updated";
            $return['status']   = "01";
            
        } 
        catch (\Exception $e) {

            $return['message']  = $e->getMessage();
            $return['status']   = "02";
            
        }

        return compact('return','quantity');
    }
    //amin
    public function checkoutItems($agent_id = null,$deliveryType = null){

        // dd($delivery_type);

        

        $sessionData = session('STORE','default');
        $addressData = [];
        if(Auth::guard('admin')->check()){

            $address_code   = $agent_id."_staff";
            $order_type     = "staff";
            $user           = Admin::find($agent_id);
            $addressData    = $user->address->where('reminder_flag','x')->first();

        }
        else{

            $address_code   = $agent_id."_agent";
            $order_type     = "agent";
            $user           = User::find($agent_id);
            $addressData    = $user->address->where('reminder_flag','x')->first();
        }

        try{

            if(Auth::guard('web')->check()){
                if(empty($addressData)){

                    return redirect()->back()->with('message','No Address');
                }
            }
            // dd($addressData);
            $cartItems = OrderTransection::leftJoin('products','products.id','=','orders_transection.product_id')
                                            ->select('orders_transection.id','products.id as product_id','products.name','products.description','products.price_wm','products.price_em','products.price_staff','products.quantity_min'
                                                ,'products.quantity as stock_quantity','orders_transection.quantity as total_quantity')
                                            ->where('order_type',$order_type)
                                            ->where('mall_type',$sessionData)
                                            ->where('orders_transection.agent_id','=',$agent_id)
                                            ->get()->toArray();

            // dd($addressData);
            $totalPrice         = 0.00;
            $grandTotalPrice    = 0.00;
            $shipping_fee       = 0.00;
            foreach ($cartItems as $key => $value){

                $promotion = $this->checkPromotion($cartItems[$key]['product_id']);

                // dd($promotion);
                if($promotion){

                    $price_wm       = $promotion->price_wm;
                    $price_em       = $promotion->price_em;
                    $price_staff    = $promotion->price_staff;
                }
                else{

                    $price_wm       = $cartItems[$key]['price_wm'];
                    $price_em       = $cartItems[$key]['price_em'];
                    $price_staff    = $cartItems[$key]['price_staff'];
                }

                if(Auth::guard('admin')->check()){

                    $cartItems[$key]['price']       = $this->fn_calc_gst_price($price_staff);
                    $total_price                    = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price']);
                    $cartItems[$key]['total_price'] = $total_price;
                }
                else{

                    if(strtolower($addressData->state) == strtolower("Sabah") || strtolower($addressData->state) ==  strtolower("Sarawak")){

                        $cartItems[$key]['price']       = $this->fn_calc_gst_price($price_em);
                        $total_price                    = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price']);
                        $cartItems[$key]['total_price'] = $total_price;
                    }
                    else{
                        $cartItems[$key]['price']       = $this->fn_calc_gst_price($price_wm);
                        $total_price                    = $this->fn_calc_total_price($cartItems[$key]['total_quantity'],$cartItems[$key]['price']);
                        $cartItems[$key]['total_price'] = $total_price;
                    }
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

            $totalPrice      = number_format($totalPrice,2);
            $grandTotalPrice = number_format($grandTotalPrice,2);

            if($addressData != null){
                if($deliveryType == "01"){

                    $address = [

                        'name'      => $addressData->name,
                        'address'   => $addressData->street1.",".$addressData->street2.",".$addressData->poscode.",".$addressData->city.",".$addressData->state.",".$addressData->country,
                        'btnstatus' => "",
                        'id'        => $addressData->id,
                        'code'      => $addressData->applicable_id
                    ];
                }
                elseif($deliveryType == "02"){

                    $addressData = [];
                    $address = [

                        'name'      => "",
                        'address'   =>  "Self Pickup",
                        'btnstatus' => "hidden",
                        'id'        => "",
                        'code'      => ""
                    ];
                }
            }
            else{

                $addressData = [];
                $address = [

                        'name'      => "",
                        'address'   => "",
                        'btnstatus' => "",
                        'id'        => "",
                        'code'      => ""
                    ];
            }

            $returnData = [

                'agent_id'          => $agent_id,
                'grandTotalPrice'   => $grandTotalPrice,
                'totalPrice'        => $totalPrice,
                'shippingPrice'     => $shipping_fee,
                'address'           => $address,
                'deliveryType'      =>$deliveryType
            ];


            $return['message']  = "succssfuly retrived";
            $return['status']   = "01";

            // dd($address);    
        }
        catch(\Exception $e){

            $return['message']  = $e->getMessage();
            $return['status']   = "02";
        }

        // dd($cartItems,$returnData);
        // dd($return);
        return view('shops.checkout-items',compact('cartItems','returnData','address','deliveryType'));
    }


    private function checkPromotion($productid){

        try{

            $dt = new \DateTime();
            $dt->setTimezone(new \DateTimeZone('Asia/Kuala_Lumpur'));
            $nowdatetime =  date_format($dt,'Y-m-d H:i:s');

            $Productpromotion = Product_promotion::where('product_id',$productid)
                                                    ->where('start','<=',$nowdatetime)
                                                    ->where('end','>=',$nowdatetime)
                                                    ->first();

            $return['message'] = "Succssfuly";
        }
        catch(Exception $e){

            $return['message'] = $e->getMessage();
        }

        // dd($return,$Productpromotion);
        return $Productpromotion;
    }


    public function getAddress(Request $request){

        $agent_id = $request->get('agent_id');
        // dd($agent_id);

        try{

            $address = [];

            if(Auth::guard('admin')->check() == true){
                $id     = Auth::guard('admin')->user()->id;
                $user   = Admin::find($id);
            }
            else{
                $id     = Auth::user()->id;
                $user   = User::find($id);
            }

            $adds = $user->address;
        
            foreach ($adds as $key => $value) {
                
                $addressData = Array(

                    'id'        => $value['id'],
                    'code'      => $value['applicable_id'],
                    'name'      => $value->name,
                    'address'   => $value['street1'].",".$value['street2'].",".$value['poscode'].",".$value['city'].",".$value['state'].",".$value['country'],
                );

                $address[] = $addressData;
            }

            $return['message']  = "succssfuly retrived";
            $return['status']   = "01";
        }
        catch(\Exception $e){

            $return['message']  = $e->getMessage();
            $return['status']   = "02";
        }

        return compact('return','address');
    }

    public function saveAddress(Request $request){

        // dd($request->get('item'));
        $data = $request->get('item');
        // dd($data);
        try{

            // $address = Address::where('address_code',$newAddress['address_code'])
            //                     ->get();
            // if(empty($address)){

            //     $newAddress['address_code'] = Auth::user()->id."_AGENT";
            //     $newAddress['reminder_flag'] = "x";
            //     $newAddress ['created_by'] =  Auth::user()->id;
            //     $newAddress['created_at'] = \Carbon\Carbon::now();

            //     // dd($newAddress);
            //     address::insert($newAddress);

            //     $return['message'] = "succssfuly saved";
            //     $return['status'] = "01";
            // }
            // else{
            //      if($newAddress['id'] != "" && $newAddress['address_code'] != ""){

            //         $newAddress['updated_by'] =  Auth::user()->id;
            //         $newAddress['updated_at'] = \Carbon\Carbon::now();

            //         Address::where('id',$newAddress['id'])
            //                 ->where('address_code', $newAddress['address_code'])
            //                 ->update($newAddress);

            //         $return['message'] = "succssfuly updated";
            //         $return['status'] = "01";

            //     }
            //     else{

            //         $newAddress['address_code'] = Auth::user()->id."_AGENT";
            //         $newAddress['reminder_flag'] = "";
            //         $newAddress ['created_by'] =  Auth::user()->id;
            //         $newAddress['created_at'] = \Carbon\Carbon::now();

            //         // dd($newAddress);
            //         Address::insert($newAddress);

            //         $return['message'] = "succssfuly saved";
            //         $return['status'] = "01";
            //     }
            // }

             if(Auth::guard('admin')->check() == true){
                $id         = Auth::guard('admin')->user()->id;
                $order_type = "staff";
                $user       = Admin::find($id);
            }
            else{
                $id         = Auth::user()->id;
                $order_type = "agent";
                $user       = User::find($id);
            }

            $address = new Address;
            $address->name          = $data['name'];
            $address->street1       = $data['street1'];
            $address->street2       = $data['street2'];
            $address->poscode       = $data['poscode'];
            $address->city          = $data['city'];
            $address->state         = $data['state'];
            $address->country       = $data['country'];
            $address->reminder_flag = "";
            $address->created_by    = $id;
            $address->created_at    = \Carbon\Carbon::now();
            
            $user->address()->save($address);

            $return['message']  = "succssfuly saved";
            $return['status']   = "01";
        }
        catch(\Exception $e){

            $return['message']  = $e->getMessage();
            $return['status']   = "02";

        }

        return compact('return');
    }

    private function fn_calc_gst_price($price){

        try{

            $AfterGst   = 0.00;
            $price      = (float)$price;
            $gstRate    = Tax::select('percent')
                                ->where('code',"gst")
                                ->first();

            $gst = 1 + ($gstRate->percent/100);
            $gst = (float)$gst;

            $AfterGst = ($price * $gst);
            $AfterGst = round($AfterGst,2);
            $AfterGst = number_format($AfterGst, 2, '.', '');

            $return['message']  = "succssfuly calculate";
            $return['status']   = "01";

        }
        catch(\Exception $e){

            $return['message']  = $e->getMessage();
            $return['status']   = "02";
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
            
            $data = (new ProductUserController)->single_data_product($product_id);
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

            $return['message']  = "succssfuly retrived";
            $return['status']   = "01";
        }
        catch(\Exception $e){
            
            $return['message']  = $e->getMessage();
            $return['status']   = "02";
        }

        // dd($return,$data);
        return compact('return','package','data');
    }

    public function getPromotionGift(Request $request){

        $product_id = $request->get('product_id');
        $promotion_id = $request->get('promotion_id');

        try {

            $gift = [];
            $gift = Product_promotion_gift::where('promotion_id',$promotion_id)
                                        // ->where('product_id',$product_id)
                                        ->get();

            if(!empty($gift)){
                foreach ($gift as $key => $value) {

                    $data   = (new ProductUserController)->single_data_product($value['product_id']);
                    $image  = Product_image::select('type','description','file_name','path')
                                        ->where('product_id',$value['product_id'])
                                        ->orderBy('status','desc')
                                        ->first();

                    $gift[$key]['product_name'] = ($data['data']['name'] == null ? '' : $data['data']['name']);
                    $gift[$key]['image']        = ($image['path'] == null ? '' : $image['path']);
                }
            }

            $return['message']  = "succssfuly retrived";
            $return['status']   = "01";
        }
        catch(\Exception $e){
            
            $return['message']  = $e->getMessage();
            $return['status']   = "02";
        }

        // dd($return,$gift);
        return compact('return','gift');
    }

    public function placeOrder(Request $request){

            $agent_id       = (!empty($request->get('agent_id')) ? $request->get('agent_id') : '');
            $shipping_id    = (!empty($request->get('shipping_id')) ? $request->get('shipping_id') : '');
            $billing_id     = (!empty($request->get('billing_id')) ? $request->get('billing_id') : '');
            $total_price    = (!empty($request->get('total_price')) ? $request->get('total_price') : '');
            $shipping_fee   = (!empty($request->get('shipping_fee')) ? $request->get('shipping_fee') : '');
            $delivery_type  = (!empty($request->get('delivery_type')) ? $request->get('delivery_type') : '');
            $name           = (!empty($request->get('name')) ? $request->get('name') : '');
            $contect_no     = (!empty($request->get('contect_no')) ? $request->get('contect_no') : '');

            $sessionData = session("STORE","default");

            // dd($sessionData);
            $address = [];
            if(Auth::guard('admin')->check()){

                $address_code   = $agent_id."_staff";
                $order_type     = "staff";
                $id             = Auth::guard('admin')->user()->id;
                $user           = Admin::find($agent_id);
                $address        = $user->address->where('id',$billing_id)->first();


            }
            else{
                $address_code   = $agent_id."_agent";
                $order_type     = "agent";
                $id             = Auth::user()->id;
                $user           = User::find($agent_id);
                $address        = $user->address->where('id',$billing_id)->first();
            }

            // dd($$request->get('billing_id'),$request->get('shipping_id'));
        try{

            $cartItems = OrderTransection::leftJoin('products','products.id','=','orders_transection.product_id')
                                            ->select('orders_transection.id','products.id as product_id','products.name','products.description'
                                                ,'products.price_wm','products.price_em','products.price_staff','products.point','products.quantity_min'
                                                ,'products.quantity as stock_quantity','orders_transection.quantity as total_quantity')
                                            ->where('order_type',$order_type)
                                            ->where('mall_type',$sessionData)
                                            ->where('orders_transection.agent_id','=',$agent_id)
                                            ->get();

            // dd($cartItems);
            if(count($cartItems) > 0){

                $order_no               = (new GlobalNumberRange)->generate_orderno("SO");
                // dd($order_no);
                $order_item             = [];
                $total_product_quantity = 0;
                $date                   = new \DateTime();

                foreach($cartItems as $k => $v){

                    if($sessionData == "SKG_STORE"){

                        $price = $v['price_staff'];
                    }
                    else if($sessionData == "AGENT_STORE"){

                        if(strtolower($address->state) == strtolower("Sabah") 
                            || strtolower($address->state) ==  strtolower("Sarawak")){

                            $price = $v['price_em'];
                        }
                        else{
                            $price = $v['price_wm'];
                        }
                    }

                    $item = Array(

                        'order_no'      => $order_no['data'],
                        'product_id'    => $v['product_id'],
                        'product_qty'   => $v['total_quantity'],
                        'price'         => $price,
                        'product_typ'   => "",
                        'product_status'=> "01",
                        'created_by'    =>  $id,
                        'created_at'    => \Carbon\Carbon::now()
                    );
                    // var_dump($item);
                    $order_item[] = $item;

                    $total_product_quantity = $total_product_quantity + $v->total_quantity;
                }

                $total_price = str_replace(",", "", $total_price);

                $orderHdr = [

                    'order_no'      => $order_no['data'],
                    'agent_id'      => $agent_id,
                    'user_id'       => $agent_id,
                    'invoice_no'    => "",
                    'total_items'   => $total_product_quantity,
                    'gst'           => 0,
                    'shipping_fee'  => $shipping_fee,
                    'total_price'   => $total_price,
                    'delivery_type' => (int)$delivery_type,
                    'purchase_date' => $date->format('Y-m-d'),
                    'status'        => "01",
                    'bill_address'  => (int)$billing_id,
                    'ship_address'  => (int)$shipping_id,
                    'name'          => $name,
                    'contect_no'    => $contect_no,
                    'created_by'    => $id,
                    'created_at'    => \Carbon\Carbon::now()

                ];
                
                if($sessionData == "SKG_STORE"){

                    $x = OrderHdr::insert($orderHdr);
                    // dd($orderHdr,$order_item);
                    if($x){
                        foreach ($order_item as $key => $value){
                            $y = OrderItem::insert($order_item[$key]);
                        }
                    }
                    $total_pv = 0;
                    foreach($cartItems as $k => $v){

                        $promotion = $this->checkPromotion($v['product_id']);

                        if($promotion){

                            $price_staff = $promotion->price_staff;
                        }
                        else{

                            $price_staff = $v['price_staff'];
                        }

                        $total_pv += $v['point'];

                        $this->updateSalesDataByProduct($v,$price_staff);
                    }

                    $this->updateWallet($id, $total_pv);
                    $this->updateSalesData($total_pv,$total_price);
                }
                else if($sessionData == "AGENT_STORE"){

                    $x = AgentOrderHdr::insert($orderHdr);
                    // dd($orderHdr,$order_item);
                    if($x){
                        foreach ($order_item as $key => $value){
                            $y = AgentOrderItem::insert($order_item[$key]);
                        }
                    }

                    $userRank = User::find($id);
                    $rank = $userRank->rank()->first();

                    if($rank->code_name == "C" && $rank->code_name == "LC"){
                        $total_pv = 0;
                        
                        foreach($cartItems as $k => $v){

                            $promotion = $this->checkPromotion($v['product_id']);

                            if($promotion){

                                $price_wm = $promotion->price_wm;
                                $price_em = $promotion->price_em;
                            }
                            else{

                                $price_wm = $v['price_wm'];
                                $price_em = $v['price_em'];
                            }

                            // $address = Address::where('id',$shipping_id)->where('address_code',$address_code)->first();

                            if(strtolower($address->state) == strtolower("Sabah") 
                                || strtolower($address->state) ==  strtolower("Sarawak")){

                                $price = $price_em;
                            }
                            else{
                                $price = $price_wm;
                            }

                            $lv_product = [

                                'user_id'       => $id,
                                'product_id'    => $v['product_id'],
                                'product_name'  => $v['name'],
                                'serial_no'     => "",
                                'price'         => $price,
                                'pv'            => $v['point'],
                                'status'        => "Shiping",
                                'created_at'    => \Carbon\Carbon::now()
                            ];

                            $total_pv +=$v['point'];

                            UserPurchase::insert($lv_product);
                            $this->updateSalesDataByProduct($v,$price);
                        }

                        $this->updateWallet($id, $total_pv);
                        $this->updateSalesData($total_pv, $total_price);
                        
                    }
                    else{
                        // dd($cartItems);
                        $total_pv = 0;
                        foreach($cartItems as $k => $v){

                            $promotion = $this->checkPromotion($v['product_id']);

                            if($promotion){

                                $price_wm = $promotion->price_wm;
                                $price_em = $promotion->price_em;
                            }
                            else{

                                $price_wm = $v['price_wm'];
                                $price_em = $v['price_em'];
                            }

                            // $address = Address::where('id',$shipping_id)->where('address_code',$address_code)->first();

                            if(strtolower($address->state) == strtolower("Sabah") 
                                || strtolower($address->state) ==  strtolower("Sarawak")){

                                $price = $price_em;
                            }
                            else{
                                $price = $price_wm;
                            }

                            $lv_product = [

                                'user_id'       => $id,
                                'product_id'    => $v['product_id'],
                                'product_name'  => $v['name'],
                                'serial_no'     => "",
                                'price'         => $price,
                                'pv'            => $v['point'],
                                'status'        => "Stocking",
                                'lock_status'   => "unlock",
                                'created_at'    => \Carbon\Carbon::now()
                            ];

                            $total_pv +=$v['point'];

                            Store::insert($lv_product);
                            $this->updateSalesDataByProduct($v,$price);
                        }

                        $this->updateWallet($id, $total_pv);
                        $this->updateSalesData($total_pv, $total_price);
                    }
                }

                if($x && $y){

                    OrderTransection::where('order_type',$order_type)
                                    ->where('mall_type',$sessionData)
                                    ->where('agent_id',$agent_id)
                                    ->delete();

                    if($shipping_id != ""){
                        
                        $user->address()->update([

                            'reminder_flag' => "",
                            'updated_by'    => $id,
                            'updated_at'    => \Carbon\Carbon::now()
                        ]);

                        $user->address()->where('id',$shipping_id)->update([

                            'reminder_flag' => "x",
                            'updated_by'    => $id,
                            'updated_at'    => \Carbon\Carbon::now()
                        ]);
                    }
                   
                }

                $return['message']  = "Succssfuly placed the order";
                $return['status']   = "01";
            }
            else{

                $order_no = [

                    'data' => ''
                ];

                $return['message']  = "No order placed ";
                $return['status']   = "03";
            }
        }
        catch(\Exception $e){
            
            $return['message']  = $e->getMessage();
            $return['status']   = "02";
        }

        return compact('return','order_no','rank');
    }

    public function getDeliveryStatus($order_no = null){
        // echo $order_no;die();

        $sessionData = session('STORE','default');
        // dd($sessionData);
        try{

            if($sessionData == "SKG_STORE"){
                $orderHdr = OrderHdr::leftJoin('delivery_type','delivery_type.id','=','orders_hdr.delivery_type')
                            ->leftJoin('global_status','global_status.status','=','orders_hdr.status')
                            ->select('orders_hdr.order_no','orders_hdr.agent_id','orders_hdr.agent_id','orders_hdr.invoice_no','orders_hdr.total_items','orders_hdr.total_price','orders_hdr.delivery_type','orders_hdr.purchase_date','orders_hdr.status','orders_hdr.name','orders_hdr.contect_no','delivery_type.delivery_code','delivery_type.type_description','global_status.description')
                            ->where('order_no','=',$order_no)
                            ->first();
            }
            else if($sessionData == "AGENT_STORE"){
                $orderHdr = AgentOrderHdr::leftJoin('delivery_type','delivery_type.delivery_id','=','agent_order_hdr.delivery_type')
                            ->leftJoin('global_status','global_status.status','=','agent_order_hdr.status')
                            ->select('agent_order_hdr.order_no','agent_order_hdr.agent_id','agent_order_hdr.agent_id','agent_order_hdr.invoice_no','agent_order_hdr.total_items','agent_order_hdr.total_price','agent_order_hdr.delivery_type','agent_order_hdr.purchase_date','agent_order_hdr.status','orders_hdr.name','orders_hdr.contect_no','delivery_type.delivery_code','delivery_type.type_description','global_status.description')
                            ->where('order_no','=',$order_no)
                            ->first();
            }

            // dd($orderHdr);

            $date = new \DateTime($orderHdr->purchase_date);
            $orderHdr->purchase_date = $date->format('d M Y');

            $data = GlobalStatus::leftJoin('delivery_status_assign','delivery_status_assign.delivery_status','=','global_status.status')
                                    ->select('global_status.id','global_status.status','global_status.description','delivery_status_assign.sequence')
                                    ->where('table','order_hdr')
                                    ->where('delivery_status_assign.delivery_code',$orderHdr->delivery_code)
                                    ->orderBy('delivery_status_assign.sequence','ASC')
                                    ->get();

            $return['message']  = "succssfuly retrived";
            $return['status']   = "01";

        }
        catch(\Exception $e){

            $return['message']  = $e->getMessage();
            $return['status']   = "02";
        }

        // dd($return,$data,$orderHdr);
        return view('shops.delivery-status',compact('return','data','orderHdr'));
    }

    public function agentsStoreList()
    {
    	$id        = Auth::user()->id;

    	$my        = Referral::where('user_id', $id)->first();

    	$agents    = $my->getAncestors();

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

        // dd($qualified_agents);
        return view('shops.agents-store-list', compact('qualified_agents'));
        // echo '<pre>';
        // var_dump($agents->toArray());
        // echo '</pre>';
    }

    public function agentStore($id){


        try{
            
            $session = session(["STORE"=>"AGENT_STORE"]);

            $user     = User::find($id);
            $products = Store::where('user_id', $id)->groupBy('product_id')->get();

            $data = (new ProductUserController)->all_data_product();

            foreach ($data['productArr']['Product'] as $key1 => $value) {
                
                $data['productArr']['Product'][$key1]['product_type']       = "product";
                $data['productArr']['Product'][$key1]['promotion_status']   = "hidden";
                $data['productArr']['Product'][$key1]['package_status']     = "hidden";
            }
            foreach ($data['productArr']['Package'] as $key2 => $value) {
                
                $data['productArr']['Package'][$key2]['product_type']       = "package";
                $data['productArr']['Package'][$key2]['promotion_status']   = "hidden";
                $data['productArr']['Package'][$key2]['package_status']     = "";
            }
            foreach ($data['productArr']['Promotion'] as $key3 => $value) {
                
                $data['productArr']['Promotion'][$key3]['product_type']     = "promotion";
                $data['productArr']['Promotion'][$key3]['promotion_status'] = "";
                $data['productArr']['Promotion'][$key3]['package_status']   = "hidden";
            }
            foreach ($data['productArr']['Package_Promotion'] as $key4 => $value) {
                
                $data['productArr']['Package_Promotion'][$key4]['product_type']     = "package_promotion";
                $data['productArr']['Package_Promotion'][$key4]['promotion_status'] = "";
                $data['productArr']['Package_Promotion'][$key4]['package_status']   = "";
            }

            $DataProduct = array_merge($data['productArr']['Product'],$data['productArr']['Package'],$data['productArr']['Promotion'],$data['productArr']['Package_Promotion']);

            $product = [];

            foreach ($products as $k => $v){
                foreach ($DataProduct as $kv => $vv){
                    if($v['product_id'] == $vv['id']){

                        $product[] = $DataProduct[$kv];
                    }
                }
            }


            if(Auth::guard('admin')->check() == true){
                $id = Auth::guard('admin')->user()->id;
                $order_type = "staff";
            }
            else{
                $id = Auth::user()->id;
                $order_type = "agent";
            }

            // dd($product);
            foreach ($product as $k => $v) {

                if(isset($v['promotion_id'])){

                    $gift = Product_promotion_gift::where('promotion_id',$v['promotion_id'])->first();

                    if($gift != null){

                        $product[$k]['gift_status'] = '';
                    }
                }
                else{
                    $product[$k]['gift_status'] = 'hidden';
                }
            }

            $count = 0;
            $count = OrderTransection::where('agent_id',$id)->where('order_type',$order_type)->where('mall_type','AGENT_STORE')->count();
        }
        catch(Exception $e){

            $return['message'] = $e->getMessage();
        }

        // dd($products,$DataProduct);
        // dd($user,$product,$id,$count);
        return view('shops.product_list', compact('user','product','id','count'));
    }

    //Cart
    public function addToCart(Request $request)
    {
        $itemType = $request->itemType;
        $quantity = $request->quantity;

        if($itemType == 'product')
        {
            $product    = Product::find($request->id);
            $addtocart  = Cart::add($product->id, 'Product: '.$product->name, $quantity, $product->price_wm);

        } else {
            $package    = Package::find($request->id);
            $addtocart  = Cart::add($package->id, 'Package: '.$package->name, $quantity, $package->price_wm);
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
