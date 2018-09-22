<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Carbon\Carbon;
use Session;

use App\Models\Product;
use App\Models\StockadjustmentType;
use App\Models\StockItem;
use App\Models\StockAdjustment;


class StockAdjustmentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
		$products = Product::all();
        $stockadjustment_type = StockadjustmentType::all();
        
        return view('inventory.stocks.stock-adjustment-index',compact('products','stockadjustment_type'));
	}

	public function stockProduct(Request $request){
		$product_id = $request->get('product_id');

		if(!$product_id){
			$product = StockItem::all()->sum('quantity');	
		}else{
			$product = Product::find($product_id);	
			$product = $product->StockItems()->where('stock_items.status','01')->sum('quantity');
		}
		return $product;
	}

	public function checkBarcode(Request $request){
        $barcode = $request->get('barcode');
        $product_id = $request->get('product_id');

		
        $select_query  = StockItem::where('barcode',$barcode);
        if($product_id)
        {
            $select_query->where('product_id',$product_id);
        }
        $StockItem = $select_query->first();	

		if($StockItem){
			return ['status' => "01",'serial_number' =>$barcode,'product_code' => $StockItem->products->code,'product_name'=>$StockItem->products->name];
		}else{
			return ['status' => "02",'serial_number'=>"",'product_code'=> "",'product_name'=>""];
		}
	}

    public function store(Request $request){

        $validation = $this->validate($request,[
            'adjustment_date'   => 'required',
            'product'           => 'required',
            'adjustment_type'   => 'required',
        ]);

        if(!$validation){
            return back()->withInput();
        }
        try{
            $serialNumberArray      = json_decode($request->input('serial_number_scan_json'));

            $stock  = new StockAdjustment;
            $stock->adjustment_date  	     = $request->adjustment_date;
            $stock->stockadjustment_type_id  = $request->adjustment_type;
            $stock->description              = $request->description;
            $stock->created_by               = Auth::user()->id;
            $stock->save();

        if($stock->id)
        {
            $product_stock_array = [
                'stock_adjustment_id'   => $stock->id,
                'barcode'               => $serialNumberArray
            ];
    
            $this->storeProductStocks($product_stock_array);
        }
        
        

            return back()->with('success', 'Successfully saved!');
        }catch(\Exception $e){
            return back();
        }
        

    }

    public function storeProductStocks($product_stock_array){
        
        foreach($product_stock_array['barcode'] as $product_supplier){
            
            $stock_item = StockItem::where('barcode',$product_supplier->barcode)->first();

            if($stock_item){

                $new = $stock_item->replicate();

                $new->status = "04";
                $new->stock_adjustment_id = $product_stock_array['stock_adjustment_id'];
                $new->updated_by = Auth::user()->id;
                $new->save();

                $stock_item->status = "99"; //moved
                $stock_item->update();
                

            }else{
                //Create non serial number
                $product_stock_array = [
                    'stock_adjustment_id'   => $product_stock_array['stock_adjustment_id'],
                    'quantity'   => $product_supplier->quantity,
                    'status'                => '04',
                    'created_by'            => Auth::user()->id,
                    'created_at'            => Carbon::now()    
                ];
    
                StockItem::insert($product_stock_array);
            }        
        }
    }

        //Generate SR
    private function generate_docno(){

        $LatestDocNo = stock::max('id');    
        $numberOnly  = preg_replace("/[^0-9]/", '', $LatestDocNo);
        
        if(!$numberOnly){
            $numberOnly = "00000";
        }
        
        $generatedNo =  str_pad($numberOnly+1, 5, '0', STR_PAD_LEFT);
        
        return "SR".($generatedNo);      
    }

	

}
