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
use App\Models\ProductStock;

class StockInController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {
        $suppliers = Supplier::all();
        $products = Product::all();
        
        return view('inventory.stocks.stock-in-new',compact('suppliers','products'));
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
            'products_id'   => $request->product,
            'suppliers_id' => $request->supplier,
            'stocks_id'     => $stock->id,
            'barcode'       => $serialNumberArray
        ];

        $this->storeProductStocks($product_stock_array);

        return back()->with('success', 'Successfully saved!');

    }

    public function storeProductStocks($product_stock_array){
        
        foreach($product_stock_array['barcode'] as $product_supplier){
            
            $product_stock_array = [
                'products_id'   => $product_stock_array['products_id'],
                'suppliers_id' => $product_stock_array['suppliers_id'],
                'stocks_id'     => $product_stock_array['stocks_id'],
                'barcode'       => $product_supplier->barcode,
                'quantity'       => $product_supplier->quantity,
                'status'        => '01',
                'created_by'    => Auth::user()->id,
                'updated_at'    => Carbon::now()    
            ];

            ProductStock::insert($product_stock_array);
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