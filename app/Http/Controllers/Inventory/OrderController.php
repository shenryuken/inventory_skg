<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\OrderHdr;
use App\Models\OrderItem;
use App\Models\Courier;
use App\Models\Delivery;
use App\Models\DeliveryItem;
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
        
        $agent_order = OrderHdr::all();

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

    
    public function deliveryIndex()
    {
        $deliveries = Delivery::all();

        return view('inventory.orders.order-delivery-index',[ 'deliveries' => $deliveries]);
    }

    public function deliveryCreate($order_no)
    {
        $order = OrderHdr::where('order_no',$order_no)->first();
        $items = OrderItem::where('order_no',$order_no)->get();
        $couriers = Courier::all();
        // var_dump($items->products->name);

        return view('inventory.orders.order-delivery-form',[ 'order' => $order, 'items' => $items, 'couriers' => $couriers]);
    }

    public function deliveryStore(Request $request){
        $postData = $this->validate($request,[
            'order_no' => 'required',                
        ]);

        $order_no = $request->get('order_no');

        $delivery_no = (new GlobalNumberRange)->generate_orderno("DO");

			$data = [
				'order_id'	=> $order_no,
                'delivery_number'	=> $delivery_no['data'],
                'courier_id' => $request->get('courier_id'),
                'courier_consignment' => 	$request->get('consignment_note'),		
				'created_by'	=> Auth::user()->id,
				'created_at'	=> Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'))
            ];

            $delivery = new Delivery($data);
            $delivery->save();
			$delivery_id = $delivery->id;
            
            for($x = 0; $x < count($request->get('serial_no')); $x++){
                $data_item = [
                        'delivery_id' => $delivery_id,
                        'product_id'  => $request->get('item_id')[$x],
                        'barcode'  => $request->get('serial_no')[$x],
                        'quantity' => $request->get('quantity')[$x],
                ];

                $delivery_item = new DeliveryItem($data_item);
                $delivery_item->save();

            }
            
            

        Session::flash('message', 'Successfully saved supplier!');
        return redirect('inventory/order/delivery/');
        }
}
