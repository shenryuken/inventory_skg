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

use App\Admin;
use App\User;
use App\Models\Role;
use App\Models\Supplier;
use App\Models\Product;

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

    public function newStock(Request $request){
        $postData = $this->validate($request,[
			'supplier_code' => 'required',
			'product_code' => 'required',
			'stock_date' => 'required',
            'stock_receive' => 'required',
            'description' => 'required',
            'stock_in_id' => 'required',
        ]);

     $supplierCode = $request->input('supplier_code');
     $stockInId = $request->input('stock_in_id');
     $productCode = $request->input('product_code');
     $serialNumberBucket = $request->input('serial_number_scan_json');  
     $link_redirect  = $request->input('link_redirect');
     $quantity  = $request->input('quantity');
     $inStockDate = $request->input('stock_date');
     $DocNo = $request->input('stock_receive');
     $description = $request->input('description');     

     $updateStockId = stock_in::where('id',$stockInId)->update([
         'supplier_id' => $supplierCode,
         'description' => $description,
     ]);   

     if($updateStockId){
        $product =  product_m::get();
        $supplier = supplier::get();
        if($serialNumberBucket){
            $insert = $this->insertSerialNumber($serialNumberBucket,$stockInId,$productCode);
            
        }else{
            $insert = $this->productWithoutSerialNum($productCode,$quantity,$stockInId);
        }
        
        if($insert){
            $message = $insert['success']." was successfully saved,".$insert['exist']." was already existed";
        }else{
            $message = "Successfully Inserted ";
        } 
        
         

         
         if($link_redirect){
             return redirect($link_redirect);
         }else{
            Session::flash('message', $message);
            return view('Stock.stockIn',compact('product','supplier','DocNo','inStockDate','stockInId'));
         }   
         
     }else{
        return 'failed';
     }    

    }

 
}