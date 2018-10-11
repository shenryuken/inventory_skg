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
use Datatables;
use Log;

class StockReportController extends Controller
{
    /**
     * Stock Status
     * 01 = In Stock
     * 02 = Scanned for buy
     * 03 = Returned
     * 04 = Stock Adjustment
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
        $products           = Product::all();  
        $stocks             = Stock::all();
        $stock_items        = StockItem::all(); 
        $stock_adjustments  = StockAdjustment::all(); 
        $stock_in_total     = 0;
        $stock_out_total    = 0;

            $reports = array();
        try{
            if($stocks->isNotEmpty()){
            foreach($stocks as $k => $v)
            {
                
                $stock_in =  $v->StockItem->where('stock_id',$v->id)->whereIn('status',['01','99','98'])->sum('quantity');

                $stock_out      = 0;
                $stock_in_total = $stock_in_total + $stock_in;

                $product_name = isset($v->StockItem->first()->products->name) ? $v->StockItem->first()->products->name : "";
                $product_code = isset($v->StockItem->first()->products->code) ? $v->StockItem->first()->products->code : "";
                $supplier_name = isset($v->StockItem->first()->suppliers->company_name) ? $v->StockItem->first()->suppliers->company_name : "";
                $supplier_code = isset($v->StockItem->first()->suppliers->supplier_code) ? $v->StockItem->first()->suppliers->supplier_code : "";
                

                $reports[] = [
                    'server_date'   => $v->stock_date,
                    'date'          => Carbon::parse($v->stock_date)->format('d/m/Y'),
                    'description'   => $v->description,
                    'stock_in'      => $stock_in,
                    'stock_out'     => $stock_out,
                    'product_name'  => $product_name,
                    'product_code'  => $product_code,
                    'supplier_name' => $supplier_name,
                    'supplier_code' => $supplier_code,
                    'adjustment_type' => ""
                ];
            }
        }
           

            if($stock_adjustments->isNotEmpty()){
                foreach($stock_adjustments as $a => $b)
                {
                    
                    if($b->StockItem){
                        $stock_adj_in   = $b->StockItem->where('stock_adjustment_id',$b->id)->where('status','03')->sum('quantity');
                        $stock_adj_out  = $b->StockItem->where('stock_adjustment_id',$b->id)->where('status','04')->sum('quantity');
    
                    $stock_in_total     = $stock_in_total + ($stock_adj_in);
                    $stock_out_total    = $stock_out_total + ($stock_adj_out);
    
                    $product_name = isset($b->StockItem->where('stock_adjustment_id',$b->id)->first()->products->name) ? $b->StockItem->where('stock_adjustment_id',$b->id)->first()->products->name : "";
                    $product_code = isset($b->StockItem->where('stock_adjustment_id',$b->id)->first()->products->code) ? $b->StockItem->where('stock_adjustment_id',$b->id)->first()->products->code : "";
                    $supplier_name = isset($b->StockItem->where('stock_adjustment_id',$b->id)->first()->suppliers->company_name) ? $b->StockItem->where('stock_adjustment_id',$b->id)->first()->suppliers->company_name : "";
                    $supplier_code = isset($b->StockItem->where('stock_adjustment_id',$b->id)->first()->suppliers->supplier_code) ? $b->StockItem->where('stock_adjustment_id',$b->id)->first()->suppliers->supplier_code : "";

                    $adjustment_type =  isset($b->stockAdjustmentType->adjustment) ? $b->stockAdjustmentType->adjustment : "";
                    $reports[] = [
                        'server_date'   => $b->adjustment_date,
                        'date'          => Carbon::parse($b->adjustment_date)->format('d/m/Y'),
                        'description'   => $b->description,
                        'stock_in'     => $stock_adj_in,
                        'stock_out'      => $stock_adj_out,
                        'product_name'  => $product_name,
                        'product_code'  => $product_code,
                        'supplier_name' => $supplier_name,
                        'supplier_code' => $supplier_code,
                        'adjustment_type' => $adjustment_type
                    ];

                    }
                    
                }

            }

            $stock_item_sold = StockItem::where('status','05')->get();
                foreach($stock_item_sold as $item){
                    $product_name = isset($item->products->name) ? $item->products->name : "";
                    $product_code = isset($item->products->code) ? $item->products->code : "";
                    $supplier_name = isset($item->suppliers->company_name) ? $item->suppliers->company_name : "";
                    $supplier_code = isset($item->suppliers->supplier_code) ? $item->suppliers->supplier_code : "";

                    $reports[] = [
                        'server_date'   => Carbon::parse($item->created_at)->format('Y-m-d'),
                        'date'          => Carbon::parse($item->created_at)->format('d/m/Y'),
                        'description'   => "Out For Delivery",
                        'stock_in'     => "",
                        'stock_out'      => $item->quantity,
                        'product_name'  => $product_name,
                        'product_code'  => $product_code,
                        'supplier_name' => $supplier_name,
                        'supplier_code' => $supplier_code,
                        'adjustment_type' => ""
                    ];
                }

           

        }catch(\Exception $e){
            Log::error($e);
        }
           


            // return compact('reports');
        return view('inventory.stocks.stock-report',compact('stock_in_total','stock_out_total','reports','products'));
    }


    public function indexCurrentStock()
    {
        $data               = [];
        $totalActiveStock   = 0;
        $totalLessStock     = 0;
        $lastAdjustment     = '';
        $totalProduct       = 0;
        $minStock           = 5;
        #Model
        $products        = new Product;  
        $StockAdjustment = new StockAdjustment;
        $stock_item      = new StockItem;

        //minidashboard
        #1 Total Product in stock
        $stock_in = $stock_item->whereIn('status',['01','99','98'])->sum('quantity');
        $stock_out = $stock_item->where('status',['04','05'])->sum('quantity');
		$totalActiveStock =floatval($stock_in) - floatval($stock_out);

        #2 Total Less Stock
        // select 
        // a.ID as employee, 
        // coalesce(sum(case when type = 5 then amount end), 0) as other, 
        // coalesce(sum(case when seniortype = 10 then amount end), 0) as senior, 
        // coalesce(sum(case when type = 5 then amount end), 0) -
        // coalesce(sum(case when seniortype = 10 then amount end), 0) as result
        // from gndsale
        // group by a.id
        // having sum(type = 5) > 0 and sum(seniortype = 10) > 0;

        $totalLessStock = $stock_item->selectRaw('(coalesce(sum(case when status = "01" then quantity end), 0) +coalesce(sum(case when status = "99" then quantity end), 0)+coalesce(sum(case when status = "98" then quantity end), 0) - coalesce(sum(case when status = "04" then quantity end), 0) - coalesce(sum(case when status = "05" then quantity end), 0)) as qty,product_id')
                        ->groupBy('product_id')
                        ->havingRaw('qty <= '.$minStock )
                        ->get();
        #3 Last Adjustment
        $stock_adjustments = $StockAdjustment->selectRaw('MAX(created_at) as last_adjust')->value('last_adjust');

		#4 Total product
        $totalProduct = $products->count();

        $stocks = $products->get();   

            foreach($stocks as $key=>$value){
		    $productId          = $value->id;
		    $instore = $stock_item->where('product_id',$productId)->whereIn('status',['01'])->sum('quantity');
		    $outstore = $stock_item->where('product_id',$productId)->whereIn('status',['04'])->sum('quantity');
                
                
                $totalserial_number = (float)$instore - (float)$outstore;
                $adjustment         = $StockAdjustment->stockItem()->where('product_id',$productId)
                                                ->get();
                if($adjustment){
                    foreach($adjustment as $k => $v){
                        $quantity   = $v->quantity;
                        $operation  = $v->stockAdjustmentType()->operation;
                        
                        $totalserial_number = $this->calcAdjustment($totalserial_number,$quantity,$operation);
                        
                    }
                    $data[] = [
                        'product_name'  => $value->name,
                        'product_code'  => $value->code,
                        'stocksCount'   => $totalserial_number,
                        'product_id'    => $value->id,
                    ];
                }             

            }

        
        $dashboards = [            
            'totalActiveStock'  => $totalActiveStock,
            'totalLessStock'    => $totalLessStock,
            'lastAdjustment'    => Carbon::parse($stock_adjustments)->format('Y-m-d'),
            'totalProduct'      => $totalProduct
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
            'stock_date'    => 'required',
            'product'       => 'required',
            'supplier'      => 'required',
        ]);

        $document_no =  $this->generate_docno();
        
        $serialNumberArray = json_decode($request->input('serial_number_scan_json'));
        
        $stock = new Stock;
        $stock->stock_date  = $request->stock_date;
        $stock->stock_in_no = $document_no;
        $stock->description = $request->description;
        $stock->created_by  = Auth::user()->id;
        $stock->save();
        
        $product_stock_array = [
            'product_id'    => $request->product,
            'supplier_id'   => $request->supplier,
            'stock_id'      => $stock->id,
            'barcode'       => $serialNumberArray
        ];

        $this->storeProductStocks($product_stock_array);

        return back()->with('success', 'Successfully saved!');

    }

    public function storeProductStocks($product_stock_array){
        
        foreach($product_stock_array['barcode'] as $product_supplier){
            
            $product_stock_array = [
                'product_id'    => $product_stock_array['product_id'],
                'supplier_id'   => $product_stock_array['supplier_id'],
                'stock_id'      => $product_stock_array['stock_id'],
                'barcode'       => $product_supplier->barcode,
                'quantity'      => $product_supplier->quantity,
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

    private function calcAdjustment($totalserial_number,$quantity,$operation){
        
        if($operation == '-'){
            return $totalserial_number - $quantity;
        }elseif($operation == '+'){
            return $totalserial_number + $quantity;
        }
        else{
            return;
        }
    }

    public function barcode($product_id){
        
        if(strtoupper($product_id) == "ALL"){
            $product        = (object)[];
            $product->name  = "All";
            $barcodes       = StockItem::where('quantity','1')->where('status','01')->distinct('barcode')->get();

        }else{
            $product    = Product::find($product_id);
            $barcodes   = StockItem::where('product_id',$product_id)->distinct('barcode')->where('status','01')->where('quantity','1')->get();
        }
        

        return view('inventory.stocks.barcode-index',['barcodes' => $barcodes, 'product' => $product]);
    }

 
}
