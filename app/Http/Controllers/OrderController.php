<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Http\Requests;

use App\Models\OrderHdr;
use App\Models\OrderItem;
use App\Models\AgentOrderHdr;
use App\Models\Courier;
use App\Models\Shipment;
use App\Models\ShippedItem;
use App\Models\Store;
use App\Models\UserPurchase;

use Validator;
use Session;

class OrderController extends Controller
{
    public function index()
    {
        $orders = OrderHdr::all();
        
    	return view('orders.index', compact('orders'));
    }

    public function myOrders(Request $request)
    {   

        $store = $request->get('data');

        $session = session(["STORE"=>$store]);

        if(Auth::guard('admin')->check() == true){
            $id         = Auth::guard('admin')->user()->id;
            // $order_type = "staff";
        }
        else{
            $id         = Auth::user()->id;
            // $order_type = "agent";
        }
        // $id     = Auth::guard('web')->user()->id;  
        // $orders = OrderHdr::where('user_id', $id)->get();

        $orders = [];
        if($store == "SKG_STORE"){

            $orders = OrderHdr::leftJoin('delivery_type','delivery_type.delivery_code','=','orders_hdr.delivery_type')
                                ->leftJoin('global_status','global_status.status','=','orders_hdr.status')
                                ->select('orders_hdr.order_no','orders_hdr.agent_id','orders_hdr.agent_id','orders_hdr.invoice_no','orders_hdr.total_items','orders_hdr.total_price','orders_hdr.delivery_type','orders_hdr.purchase_date','orders_hdr.status','delivery_type.type_description','global_status.description')
                                ->where('agent_id',$id)
                                ->get()->toArray();
        }
        else if($store == "AGENT_STORE"){

            $orders = AgentOrderHdr::leftJoin('delivery_type','delivery_type.delivery_code','=','agent_order_hdr.delivery_type')
                                    ->leftJoin('global_status','global_status.status','=','agent_order_hdr.status')
                                    ->select('agent_order_hdr.order_no','agent_order_hdr.agent_id','agent_order_hdr.agent_id','agent_order_hdr.invoice_no','agent_order_hdr.total_items','agent_order_hdr.total_price','agent_order_hdr.delivery_type','agent_order_hdr.purchase_date','agent_order_hdr.status','delivery_type.type_description','global_status.description')
                                    ->where('agent_id',$id)
                                    ->get()->toArray();
        }

        // $orders = array_merge($data,$data2);

        foreach ($orders as $key => $value) {
            $date = new \DateTime($value['purchase_date']);
            $value['purchase_date'] = $date->format('d M Y');;
        }

        // dd($orders);
        // return view('orders.my-orders', compact('orders'));
        return compact('orders');
    }

    public function show($id)
    {
    	$order = OrderHdr::find($id);
        $items = $order->orderItems;

    	return view('orders.show', compact('order', 'items'));
    }

    public function processOrder($id)
    {   
        $order      = OrderHdr::find($id);
        $items      = $order->orderItems;
        $couriers   = Courier::all();
        
        return view('orders.process', compact(['order', 'items', 'couriers']));
    }

    public function postProcessOrder(Request $request)
    {
        $request->validate([
                //'order_id'          => 'required|unique:shipments,order_id',
                'item_id.*'         => 'required',
                'serial_no.*'       => 'required|distinct|unique:shipped_items,serial_no',
                'courier_id'        => 'required',
                'consignment_note'  => 'required|unique:shipments,consignment_note',
                'security_code'     => 'required'
            ]);

        $hashedCode = Auth::guard('admin')->user()->security_code;

        if(Auth::guard('admin')->check() && Hash::check($request->security_code, $hashedCode)){

            $order = OrderHdr::find($request->order_id);
            $order->status = 'Shipping';
            $order->save();

            $shipment = new Shipment();
            $shipment->user_id              = $order->user_id;
            $shipment->order_id             = $order->id;
            $shipment->courier_id           = $request->courier_id;
            $shipment->consignment_note     = $request->consignment_note;
            $shipment->status               = 'Shipping';
            $shipment->save(); 

            $item_ids = $request->item_id;
            $i = 0;
            $sno = array();

            foreach($item_ids as $item_id)
            {
                $shippedItem = new ShippedItem;
                $shippedItem->shipment_id = $shipment->id;
                $shippedItem->product_id  = $item_id;
                $shippedItem->serial_no   = $request->serial_no[$i];
                $shippedItem->save();

                $store = Store::where('user_id',$order->user_id)
                                ->where('product_id', $item_id)
                                ->whereIn('serial_no', [NULL, ''])->first();

                if( !is_null($store))
                {
                    $store->serial_no = $request->serial_no[$i];
                    $store->save();
                } 
                else 
                {
                    $userPurchase = UserPurchase::where('user_id',$order->user_id)
                                                    ->where('product_id', $item_id)
                                                    ->whereIn('serial_no', [NULL, ''])->first(); 
                    $userPurchase->serial_no = $request->serial_no[$i];
                    $userPurchase->save();
                }   
                    
                $sno[] = $shippedItem->serial_no;

                $i++;
            }

            $orderItem = OrderItem::find($order->id);
            $orderItem->serial_no = json_encode($sno);
            $orderItem->save();
        

            // Session::flash('success', 'Successfully Process The Order: #'.$order->do_no);
            return back()->with('success', 'Successfully Process The Order: #'.$order->do_no)
                        ->withInput();
        }

        return back()->with('fail', 'Action Failed! Please make sure your security code is correct.');
    }
}
