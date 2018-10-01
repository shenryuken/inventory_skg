<?php

namespace App\Http\Controllers\Inventory;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\OrderHdr;
use App\Models\OrderItem;
use App\Models\Courier;
use App\Models\Delivery;
use App\Models\DeliveryItem;
use App\Models\StockItem;
use App\Models\Product;
use Auth;
use Carbon\Carbon;
use Session;
use Fpdf;
use Storage;
use Response;
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
        
        $agent_order = OrderHdr::where('status','01')->get();

        return view('inventory.orders.order-sales-index',[ 'agent_order' => $agent_order]);
    }

    public function salesDetail($order_no = "")
    {

        try{
            $order = OrderHdr::where('order_no',$order_no)->first();
            $items = OrderItem::where('order_no',$order_no)->get();
            $deliveries = Delivery::where('order_id',$order->id)->get();
            // var_dump($items->products->name);
        
        
    }catch(\Exception $e){
        return back()->withError($e->getMessage());
    }
        return view('inventory.orders.order-sales-view',[ 'order' => $order, 'items' => $items,'deliveries' => $deliveries]);
    }

    public function deliveryDetail($order_no = "")
    {
        $order_no = base64_decode($order_no);
        $delivery   = [];
        $items      = [];

        try{
            $delivery   = Delivery::where('delivery_number',$order_no)->first();
            $items      = DeliveryItem::where('delivery_id',$delivery->id)->get();
            // var_dump($items->products->name);
        
        
    }catch(\Exception $e){
        // return back()->withError($e->getMessage());
        echo $e->getMessage();
    }
        return view('inventory.orders.order-delivery-view',[ 'delivery' => $delivery, 'items' => $items]);
    }

    
    public function deliveryIndex()
    {
        $deliveries = Delivery::all();

        return view('inventory.orders.order-delivery-index',[ 'deliveries' => $deliveries]);
    }

    public function deliveryCreate($order_no)
    {
        $order_no = base64_decode($order_no);
        $order      = OrderHdr::where('order_no',$order_no)->where('status','01')->first();
        $items      = OrderItem::where('order_no',$order_no)->get();
        $couriers   = Courier::all();
        $products = Product::all();
        // var_dump($items->products->name);

        return view('inventory.orders.order-delivery-form',[ 'order' => $order, 'items' => $items, 'couriers' => $couriers,'products'=>$products]);
    }

    public function deliveryStore(Request $request)
    {
        $postData = $this->validate($request,[
            'order_no' => 'required',
            // 'courier_id' => 'required',

            // 'consignment_note' =>  'required'            
        ]);

        $order_no = $request->get('order_no');

        $delivery_no = (new GlobalNumberRange)->generate_orderno("DO");

			$data = [
				'order_id'	           => $order_no,
                'delivery_number'	   => $delivery_no['data'],
                'courier_id'           => $request->get('courier_id') ? $request->get('courier_id') : "",
                'courier_consignment'  => 	$request->get('consignment_note') ? $request->get('consignment_note') : "",		
				'created_by'	       => Auth::user()->id,
				'created_at'	       => Carbon::now(new \DateTimeZone('Asia/Kuala_Lumpur'))
            ];

            $delivery = new Delivery($data);
            $delivery->save();
            $delivery_id = $delivery->id;
            
            $serialNumberArray = json_decode($request->input('serial_number_scan_json'));

            $product_stock_array = [
                'delivery_id'   => $delivery_id,
                'barcode'       => $serialNumberArray,
            ];
    
                $this->storeProductStocks($product_stock_array);

            if($delivery_id){
                // OrderHdr::where('id',$order_no)->update(['status'=>'02','shipping_fee'=>$request->get('shipping_fee')]);
            }
            

        Session::flash('message', 'Successfully created delivery order');
        return redirect('inventory/order/delivery/');
    }

    public function storeProductStocks($product_stock_array){
        
        foreach($product_stock_array['barcode'] as $product_supplier){
            $product = new Product;
            $product_query = $product->where('code',$product_supplier->product_code)->first();
            $data_item = [
                'product_id'    => $product_query->id,
                'delivery_id'   => $product_stock_array['delivery_id'],
                'barcode'       => $product_supplier->barcode,
                'quantity'      => $product_supplier->quantity,
                'created_by'    => Auth::user()->id,
                'updated_at'    => Carbon::now()    
            ];

            if($product_supplier->barcode){
                try{
                    $stock_item = StockItem::where('barcode',$product_supplier->barcode)->first();

                    if($stock_item){
        
                        $new = $stock_item->replicate();
        
                        $new->status = "05"; //adjust out sell
                        // $new->stock_adjustment_id = $product_stock_array['stock_adjustment_id'];
                        $new->updated_by = Auth::user()->id;
                        $new->save();
        
                        $stock_item->status = "98"; //sold
                        $stock_item->update();
                    }
                        
                                }catch(Exception $e){
                
                                }
            }

            $delivery_item = new DeliveryItem($data_item);
            $delivery_item->save();
        }
        
    }

    public function deliveryComplete(Request $request)
    {
        $order_no = $request->input('order_no');
        
        if($order_no){
            Delivery::where('id',$order_no)->update(['status'=>'complete']);
        }

        return redirect('inventory/order/delivery/');


    }

    public function deliveryOrderPDF($order_no){
        $order_no = base64_decode($order_no);

            Fpdf::AddPage();
            Fpdf::SetFont('Arial', 'B', 18);
            Fpdf::Image('http://www.skgworld.us/skg/image/logo_skg_top.png');
            Fpdf::Cell(0,10,"Delivery Order",1,"","C");
            Fpdf::Ln();
            Fpdf::Cell(50, 25,  $order_no);
            return response(Fpdf::Output($order_no.'.pdf','I',true), 200)
            ->header('Content-Type', 'application/pdf');   
            
        

    }

    public function gdexDocket(Request $request)
    {   
        $sale_order = json_decode($request->get('so'));
        $agent_order = OrderHdr::whereIn('order_no',$sale_order)->get();
        
        ### Docket Template Configuration ###
        #~by AwakComey
        #~to adjust docket part position, setting X-axis & Y-axis value
        # x-axis will be left or right
        # y-axis will be up and down


        /********************DOCKET GDEX EXAMPLE 2018 **************************/

        ############################################################################
        #									  |								       #
        #      PART 1 COMPANY NAME            |     PART 4 DELIVERY ADD            #
        #      COMPANY CONTACT                |     ADDRESS CONT        	 	   #
        #      COMPANY EMAIL                  |   				                   #
        #									  |		  PART 5				 	   #
        #							 PART 3	  |       ATT TO		  PART 6	   #
        #      PART 2 PHONE No		 POSCODE  |       PHONE NO        POSCODE      #
        #--------------------------------------------------------------------------#
        #																		   #
        #																	 	   #
        #																		   #
        #                                				                           #
        ############################################################################

        ##### DOCKET SIZE (CM) #######
        $width =242; $length = 101;

        ##### Part 1 #######
        $x1 =0; $y1 = 0;

        ##### Part 2 #######
        $x2 =0; $y2 = 0;

        ##### Part 3 #######
        $x3 =0; $y3 = 0;

        ##### Part 4 #######
        $x4 =0; $y4 = 0;

        ##### Part 5 #######
        $x5 =0; $y5 = 0;

        ##### Part 6 #######
        $x6 =0; $y6 = 0;
        ####################
        
        if($agent_order->isNotEmpty()){
            foreach($agent_order as $k => $order)
            {
                $street1 = isset($order->shipping_address->street1) ? $order->shipping_address->street1 : "";
                $street2 = isset($order->shipping_address->street2 ) ? $order->shipping_address->street2  : "";
                $city = isset($order->shipping_address->city) ? $order->shipping_address->city : "";
                $state = isset($order->shipping_address->state) ? $order->shipping_address->state : "";
                $country = isset($order->shipping_address->country) ? $order->shipping_address->country : "";
                $customer_name = isset($order->name) ? $order->name : "";
                $tel  = isset($order->contect_no) ? $order->contect_no : "";
                $poscode = isset($order->shipping_address->poscode) ? $order->shipping_address->poscode : "";


                // var_dump($order->shipping_address->street1);die();
                $pdf = new Fpdf();
                $pdf::AddPage('L', array($length,$width));
                $pdf::SetAutoPageBreak(false,0);
                $pdf::setFont('Arial','',10);

                ####### part 1 sender address #########	
                    $pdf::setXY(20+$x1,16+$y1);
                    $pdf::cell(98,10,'SKG WORLD SDN BHD (885623-P)',0,1,'L');
                    $pdf::setXY(20+$x1,22+$y1);
                    $pdf::setFont('Arial','',9);
                    $pdf::Cell(98,4,'ADDRESS 1,',0,0,'L');
                    $pdf::setXY(20+$x1,25+$y1);
                    $pdf::Cell(98,4,'ADDRESS 2 CITY, Selangor.',0,0,'L');
                    $pdf::setXY(20+$x1,28+$y1);
                    $pdf::Cell(98,5,'E-Mail : sale@company.com ',0,1,'L');
                    $pdf::setXY(20+$x1,31+$y1);
                    $pdf::Cell(98,5,'Website : www.company.com',0,1,'L');
                    
                ####### part 2 sender phone #########		
                    $pdf::setXY(20+$x2,41+$y2);
                    $pdf::Cell(98,4,'Tel : +603-3341 1337 / +6017 4747 300',0,0,'L');
                ####### part 3 sender poscode #########		
                    $pdf::setY(41+$y3);
                    $pdf::SetX(100+$x3);
                    $pdf::Cell(98,4,'45500',0,1,'L');

                ####### part 4 client address #########	
                    $pdf::setY(16+$y4);
                    $pdf::SetX(135+$x4);
                    $pdf::MultiCell(90, 4,  $street1.' '. $street2 .' '.$city .' '. $state .' '. $country , 0,'L', 0);
                ####### part 5 client name & phone #########	
                    $pdf::setY(37+$y5);
                    $pdf::SetX(145+$x5);
                    $pdf::Cell(75,4, $customer_name,0,0,'L');
                    
                    $pdf::setY(41+$y5);
                    $pdf::SetX(145+$x5);
                    $pdf::MultiCell(100, 4, 'Mobile No. : '. $tel, 0,'L', 0); 
                ####### part 6 client poscode #########	
                    $pdf::setY(41+$y6);
                    $pdf::SetX(215+$x6);
                    $pdf::Cell(75,4, $poscode,0,0,'L');
            }
        }
        return response($pdf::Output(), 200)
        ->header('Content-Type', 'application/pdf');   
                
        }
}
