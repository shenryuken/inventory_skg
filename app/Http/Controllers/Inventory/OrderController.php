<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AgentOrderHdr;
use App\Models\AgentOrderItem;
use App\Models\Courier;


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
        
        $agent_order = AgentOrderHdr::all();

        return view('inventory.orders.order-sales-index',[ 'agent_order' => $agent_order]);
    }

    public function salesDetail($order_no)
    {
        
        $order = AgentOrderHdr::where('order_no',$order_no)->first();
        $items = AgentOrderItem::where('order_no',$order_no)->get();
        // var_dump($items->products->name);

        return view('inventory.orders.order-sales-view',[ 'order' => $order, 'items' => $items]);
    }

    public function deliveryIndex($order_no)
    {
        $order = AgentOrderHdr::where('order_no',$order_no)->first();
        $items = AgentOrderItem::where('order_no',$order_no)->get();
        $couriers = Courier::all();
        // var_dump($items->products->name);

        return view('inventory.orders.order-delivery-index',[ 'order' => $order, 'items' => $items, 'couriers' => $couriers]);
    }
}
