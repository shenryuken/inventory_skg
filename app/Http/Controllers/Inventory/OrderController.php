<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\OrderHdr;
use App\Models\OrderItem;
use App\Models\Courier;
use App\Models\Delivery;
use App\Models\DeliveryItem;
use App\Models\StockItem;
use Auth;
use Carbon\Carbon;
use Session;
use App\Classes\GlobalNumberRange;


class OrderController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function salesIndex()
    {
        
        $agent_order = OrderHdr::where('status','01')->get();

        return view('inventory.orders.order-sales-index',[ 'agent_order' => $agent_order]);
    }

    public function salesDetail($order_no = "")
    {

        try{
            $order = OrderHdr::where('order_no',$order_no)->first();
            $items = OrderItem::where('order_no',$order_no)->get();
            // var_dump($items->products->name);
        
        
    }catch(\Exception $e){
        return back()->withError($e->getMessage());
    }
        return view('inventory.orders.order-sales-view',[ 'order' => $order, 'items' => $items]);
    }

    public function deliveryDetail($order_no = "")
    {
        $delivery   = [];
        $items      = [];

        try{
            $delivery   = Delivery::where('delivery_number',$order_no)->first();
            $items      = DeliveryItem::where('delivery_id',$delivery->id)->get();
            // var_dump($items->products->name);
        
        
    }catch(\Exception $e){
        // return back()->withError($e->getMessage());
        echo $e->getMessage();
    }
        return view('inventory.orders.order-delivery-view',[ 'delivery' => $delivery, 'items' => $items]);
    }

    
    public function deliveryIndex()
    {
        $deliveries = Delivery::all();

        return view('inventory.orders.order-delivery-index',[ 'deliveries' => $deliveries]);
    }

    public function deliveryCreate($order_no)
    {
        $order      = OrderHdr::where('order_no',$order_no)->where('status','01')->first();
        $items      = OrderItem::where('order_no',$order_no)->get();
        $couriers   = Courier::all();
        // var_dump($items->products->name);

        return view('inventory.orders.order-delivery-form',[ 'order' => $order, 'items' => $items, 'couriers' => $couriers]);
    }

    public function deliveryStore(Request $request)
    {
        $postData = $this->validate($request,[
            'order_no' => 'required',
            // 'courier_id' => 'required',

            // 'consignment_note' =>  'required'            
        ]);

        $order_no = $request->get('order_no');

        $delivery_no = (new GlobalNumberRange)->generate_orderno("DO");

			$data = [
				'order_id'	           => $order_no,
                'delivery_number'	   => $delivery_no['data'],
                'courier_id'           => $request->get('courier_id') ? $request->get('courier_id') : "",
                'courier_consignment'  => 	$request->get('consignment_note') ? $request->get('consignment_note') : "",		
				'created_by'	       => Auth::user()->id,
				'created_at'	       => Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'))
            ];

            $delivery = new Delivery($data);
            $delivery->save();
			$delivery_id = $delivery->id;
            
            if($request->get('serial_no')){
                for($x = 0; $x < count($request->get('serial_no')); $x++){
                    //trim serial
                    $trimmed_serial = explode("\n",$request->get('serial_no')[$x]);
    
                    foreach($trimmed_serial as $serial_number){
                        
                        $serial_number = preg_replace('/\s+/', '', $serial_number);
                        
                        if($serial_number != ""){
                            $data_item = [
                                'delivery_id'   => $delivery_id,
                                'product_id'    => $request->get('item_id')[$x],
                                'barcode'       => $serial_number,
                                'quantity'      => $request->get('quantity')[$x],
                        ];
                        //update to stock
                        try{
                            $stock_item = new StockItem;    
        
                            $stock_item->where('barcode',$serial_number)->update(['status' => '02']);
                        }catch(Exception $e){
        
                        }
                        $delivery_item = new DeliveryItem($data_item);
                        $delivery_item->save();
                        }
    
                    }
                }

            }

            if($delivery_id){
                OrderHdr::where('id',$order_no)->update(['status'=>'02','shipping_fee'=>$request->get('shipping_fee')]);
            }
            

        Session::flash('message', 'Successfully created delivery order');
        return redirect('inventory/order/delivery/');
    }

    public function deliveryComplete(Request $request)
    {
        $order_no = $request->input('order_no');
        
        if($order_no){
            OrderHdr::where('id',$order_no)->update(['status'=>'04']);
        }

        return redirect('inventory/order/delivery/');


    }
}
