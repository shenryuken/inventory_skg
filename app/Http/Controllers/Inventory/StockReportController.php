<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests;
use App\Mail\VerifyEmail;
use App\Http\Controllers\Controller;

use App\Traits\RegisterStaff;

use DB;
use Carbon\Carbon;
use App\Admin;
use App\User;
use App\Models\Role;
use App\Models\Supplier;
use App\Models\Product;
use App\Models\Stock;
use App\Models\StockItem;
use App\Models\StockAdjustment;

class StockReportController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $products = Product::all();  

        return view('inventory.stocks.stock-report',compact('products'));
    }

    public function indexCurrentStock()
    {
        $data = [];
        $totalActiveStock = 0;
        $totalLessStock = 0;
        $lastAdjustment = '';
        $totalProduct = 0;
        $minStock = 5;
        #Model
        $products = new Product;  
        $stock_adjustments = new StockAdjustment;
        $stock_item = new StockItem;

        //minidashboard
		#1 Total Product in stock
		$totalActiveStock = $stock_item->where('status','01')->sum('quantity');

		#2 Total Less Stock
        $totalLessStock = $stock_item->selectRaw('SUM(quantity) as qty,product_id')->groupBy('product_id')->havingRaw('SUM(quantity) <= '.$minStock )->first();
        
        
        // ->get();

        #3 Last Adjustment
        // $stock_adjustments = $stockadjustment_m->selectRaw('MAX(created_at) as last_adjust')->value('last_adjust');

		#4 Total product
        $totalProduct = $products->count();

        // $stocks = $product_m->totalProductCount()->get();         
        //     foreach($stocks as $key=>$value){
        //         $productId = $value->product_id;
        //         $totalserial_number = $value->stocksCount;
        //         $adjustment = stockadjustment_m::join('config_stockadjustment','stockadjustment.adjustment_id','=','config_stockadjustment.id')
        //                                         ->where('stockadjustment.product_id',$productId)
        //                                         ->get();
        //         if($adjustment){
        //             foreach($adjustment as $k => $v){
        //                 $quantity = $v->quantity;
        //                 $operation = $v->operation;
                        
        //                 $totalserial_number = $this->calcAdjustment($totalserial_number,$quantity,$operation);
                        
        //             }
        //             $data[] = [
        //                 'product_name' => $value->product_name,
        //                 'product_code' => $value->product_code,
        //                 'stocksCount' => $totalserial_number,
        //                 'product_id' => $value->product_id,
        //             ];
        //         }             

        //     }
        $dashboards = [            
            'totalActiveStock' => $totalActiveStock,
            'totalLessStock' => $totalLessStock ? $totalLessStock->qty : 0,
            'lastAdjustment' => Carbon::parse($lastAdjustment)->format('Y-m-d'),
            'totalProduct' => $totalProduct
        ];

            // return  compact('data','dashboards');
            return view('inventory.stocks.stock-current-list', compact('data','dashboards'));

            
    }

    public function list(){
        $stocks = Stock::all(); 
        
        
        return view('inventory.stocks.stock-in-list',compact('stocks'));
    }

    public function store(Request $request){

        $this->validate($request,[
            'stock_date' => 'required',
            'product' => 'required',
            'supplier' => 'required',
        ]);

        $document_no =  $this->generate_docno();
        
        $serialNumberArray = json_decode($request->input('serial_number_scan_json'));
        $stock = new Stock;
        $stock->stock_date  	= $request->stock_date;
        $stock->stock_in_no   = $document_no;
        $stock->description = $request->description;
        $stock->created_by = Auth::user()->id;
        $stock->save();
        
        $product_stock_array = [
            'product_id'   => $request->product,
            'supplier_id' => $request->supplier,
            'stock_id'     => $stock->id,
            'barcode'       => $serialNumberArray
        ];

        $this->storeProductStocks($product_stock_array);

        return back()->with('success', 'Successfully saved!');

    }

    public function storeProductStocks($product_stock_array){
        
        foreach($product_stock_array['barcode'] as $product_supplier){
            
            $product_stock_array = [
                'product_id'   => $product_stock_array['product_id'],
                'supplier_id' => $product_stock_array['supplier_id'],
                'stock_id'     => $product_stock_array['stock_id'],
                'barcode'       => $product_supplier->barcode,
                'quantity'       => $product_supplier->quantity,
                'status'        => '01',
                'created_by'    => Auth::user()->id,
                'updated_at'    => Carbon::now()    
            ];

            StockItem::insert($product_stock_array);
        }
        
    }

        //Generate SR
    private function generate_docno(){
        $LatestDocNo = stock::max('id');    
            $numberOnly = preg_replace("/[^0-9]/", '', $LatestDocNo);
            if(!$numberOnly){
                $numberOnly = "00000";
            }
            $generatedNo =  str_pad($numberOnly+1, 5, '0', STR_PAD_LEFT);
            return "SR".($generatedNo);      
    }

 
}