<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Carbon\Carbon;
use Session;

use App\Models\supplier;


class SupplierController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index(){
    }

    public function create(){		
        return view('inventory.suppliers.create');
    }

    public function list(){		
		try{			
			$supplier = supplier::all();

			
		}catch(\Exception $e){
			return 'Error: '.$e->getMessage();
		}		
		
		return view('inventory.suppliers.list', compact('supplier'));
    }

    public function show($id){
		
		try{
			
            $supplier = supplier::find($id);
			
		}catch(\Exception $e){
			return 'Error: '.$e->getMessage();
        }
        return view('inventory.suppliers.show',compact('supplier'));
    }
    
    public function edit($id){
		
		try{
			
            $supplier = supplier::find($id);
			
		}catch(\Exception $e){
			return 'Error: '.$e->getMessage();
        }
        return view('inventory.suppliers.edit',compact('supplier'));
    }
    
    public function update(Request $request){
        $postData = $this->validate($request,[
            'telephone' => 'required',                
        ]);

            $id = $request->get('id');

			$supplier = [
				'supplier_code'	=> $request->get('supplier_code'),
				'company_name'	=> $request->get('company_name'),
				'street' 		=> $request->get('street'),
				'street2'		=> $request->get('street2'),
				'postcode' 		=> $request->get('postcode'),
				'city'	 		=> $request->get('city'),
				'state' 		=> $request->get('state'),
				'country'	 	=> $request->get('country'),
				'telephone_no'	=> $request->get('telephone'),
				'fax_no'	 	=> $request->get('fax'),
				'attn_no' 		=> $request->get('attn_no'),
				'email' 		=> $request->get('email'),
				'updated_by'	=> Auth::user()->id,
				'updated_at'	=> Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'))
			];
            
            
			supplier::where('id',$id)->update($supplier);
        
        Session::flash('message', 'Successfully updated supplier!');
		return redirect('inventory/supplier/'.$id);
    }

    public function store(Request $request){
        $postData = $this->validate($request,[
            'telephone' => 'required',                
        ]);

            $id = $request->get('id');

			$postData = [
				'supplier_code'	=> $request->get('supplier_code'),
				'company_name'	=> $request->get('company_name'),
				'street' 		=> $request->get('street'),
				'street2'		=> $request->get('street2'),
				'postcode' 		=> $request->get('postcode'),
				'city'	 		=> $request->get('city'),
				'state' 		=> $request->get('state'),
				'country'	 	=> $request->get('country'),
				'telephone_no'	=> $request->get('telephone'),
				'fax_no'	 	=> $request->get('fax'),
				'attn_no' 		=> $request->get('attn_no'),
				'email' 		=> $request->get('email'),
				'updated_by'	=> Auth::user()->id,
				'updated_at'	=> Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'))
			];
            
            $supplier = new supplier($postData);
            $supplier->save();
			$new_id = $supplier->id;
        
        Session::flash('message', 'Successfully saved supplier!');
		return redirect('inventory/supplier/'.$new_id);
    }



    public function destroy($id){
        $supplier = supplier::find($id)->delete();
        return redirect('inventory/supplier')->with('success','Information has been  deleted');
    }
	

}
