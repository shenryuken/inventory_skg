<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\Product;
use App\Models\StockItem;
use App\Models\OrderHdr;
use App\Models\AgentOrderHdr;

class InventoryController extends Controller
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
    public function index()
    {
        $to_be_processed = 0;
        $to_be_shipped = 0;
        $to_be_delivered = 0;
        $sales_created = 0;
        $stock_in_today = 0;
        $stock_out_today = 0;
        $total_order = 0;
        $total_stock = 0;
        $total_product = 0;

        $today = date('Y-m-d');

        $to_be_processed = (int)(OrderHdr::where('status','01')->count()) + (int)(AgentOrderHdr::where('status','01')->count());
        $to_be_shipped = (int)(OrderHdr::where('status','02')->count()) + (int)(AgentOrderHdr::where('status','02')->count());
        $to_be_delivered = (int)(OrderHdr::where('status','03')->count()) + (int)(AgentOrderHdr::where('status','03')->count());
        $sales_created = (int)(OrderHdr::count()) + (int)(AgentOrderHdr::count());
        $stock_in_today   = StockItem::where('status','01')->sum('quantity');
        $stock_out_today   = StockItem::where('status','<>','01')->sum('quantity');
        $total_order = 0;
        $total_stock   = StockItem::sum('quantity');
        $total_product = Product::where('type',1)->count();

        
        
        
        
        

        


        $data = [
            'to_be_processed' => $to_be_processed,
            'to_be_shipped' => $to_be_shipped,
            'to_be_delivered' => $to_be_delivered,
            'sales_created' => $sales_created,

            'stock_in_today' => $stock_in_today,
            'stock_out_today' => $stock_out_today,
            'total_order' => $total_order,
            'total_stock' => $total_stock,
            'total_product' => $total_product
        ];
        return view('inventory.dashboard',$data);
    }
}
