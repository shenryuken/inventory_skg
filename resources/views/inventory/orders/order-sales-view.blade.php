@extends('layouts.joli.app')

@section('content')
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>
        <li><a href="#">Order Management</a></li>
        <li><a href="{{ url('inventory/order/sales') }}">Sales Order</a></li>
        <li  class="active">Sales Order View</li>
    </ul>
    <!-- END BREADCRUMB -->   
<div class="page-content-wrap">
        <div class="row">
                <div class="col-sm-12">
         @if(session("message"))        
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        {{ session("message") }}
                    </div>
                </div>
         @endif
         @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        </div>
<div class="row">

	<div class="col-md-12">

        <div class="panel panel-success">
                @if($order)
                <div class="panel-heading">
                        <h1 class="panel-title">Sales Order #: <strong style="text-transform: uppercase;">{{ str_replace("SO","INV",isset($order->order_no)? $order->order_no : "")}}</strong></h1>  
                </div>
               
            <div class="panel-body panel-body-pricing">

                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    Ship To
                                </th>
                                <th>
                                    Bill To
                                </th>
                                <th>
                                    Customer
                                </th>
                                <th>
                                    Purchase Date
                                </th>                                
                            </tr>
                        </thead>
                        <tbody>
                                <tr>
                                    <td>
                                            {{ isset($order->shipping_address->street1)? $order->shipping_address->street1 : "" }}{{ isset($order->billing_address->street2)? $order->billing_address->street2 : "" }},<br>
                                            {{ isset($order->shipping_address->poscode) ? $order->shipping_address->poscode : "" }},<br>
                                            {{ isset($order->shipping_address->city ) ? $order->shipping_address->city  : ""}},<br>
                                            {{ isset($order->shipping_address->state) ? $order->shipping_address->state : "" }},<br>
                                            {{ isset($order->shipping_address->country) ? $order->shipping_address->country : "" }} 
                                    </td>
                                    <td>
                                            {{ isset($order->billing_address->street1) ? $order->billing_address->street1 : "" }}{{ isset($order->billing_address->street2) ? $order->billing_address->street2 : "" }},<br>
                                            {{ isset($order->billing_address->poscode) ? $order->billing_address->poscode : "" }},<br>
                                            {{ isset($order->billing_address->city) ? $order->billing_address->city : "" }},<br>
                                            {{ isset($order->billing_address->state) ? $order->billing_address->state : "" }},<br>
                                            {{ isset($order->billing_address->country) ? $order->billing_address->country : "" }}      
                                    </td>
                                    <td>
                                            {{ isset($order->user->username) ? $order->user->username : "" }}
                                    </td>
                                    <td>
                                            {{ Carbon\Carbon::parse(isset($order->purchase_date) ? $order->purchase_date : "")->format('d/m/Y') }}
                                    </td>
                                </tr>
                            </tbody>
                    </table>


                    {{-- {!! DNS1D::getBarcodeSVG($order->order_no, "C93") !!} --}}
                    
                

               
                <table class="table">
                    <thead>
                        <tr>
                            <th>Items</th>                            
                            <th>Quantity</th>
                            <th>Price Per Item</th>
                            <th>PV</th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach($items as $item)
                            <tr>
                                <td>{{ isset($item->product->name) ? $item->product->name : "" }}</td>
                                <td>{{ isset($item->product_qty) ? $item->product_qty : "" }}</td>
                                <td>{{ isset($item->price) ? $item->price : "" }}</td>
                                <td>{{ isset($item->product->point) ? $item->product->point : "" }}</td>
                               
                            </tr>
                            @endforeach
                    </tbody>
                </table>
                <p><span class="fa fa-caret-right"></span> <strong>Total Items: {{ isset($order->total_items) ? $order->total_items : "0" }}</strong></p>
                <p><span class="fa fa-caret-right"></span> <strong>Total Price: MYR  {{ isset($order->total_price) ? $order->total_price : "0" }}</strong></p>
                <p><span class="fa fa-caret-right"></span> <strong>Delivery Price: MYR {{ isset($order->shipping_fee) ? $order->shipping_fee : "0" }}</strong></p>
                <p><span class="fa fa-caret-right"></span> <strong>Total PV:  {{ isset($order->orderItems) ? $order->orderItems->where('order_no',$order->order_no)->sum('pv') : "0" }}</strong></p>

            </div>
            
            
        </div>
        <div class="panel panel-warning">
                <div class="panel-heading">
                        <h3 class="panel-title">Delivery Order</h3>
                       <div class="btn-group pull-right">
                           @if($order->status == '01')
                            <a href="{{url('inventory/order/delivery/create/'.base64_encode(isset($order->order_no)? $order->order_no : ""))}}" class="btn btn-success">Generate DO</a> 
                            @endif
                        </div>
                   
                    </div>
                <div class="panel-body">
                    
                    <div class="col-md-6">
                            <table class="table" id="table-listing">
                                    <thead>
                                        <tr>
                                            <th>DO#</th>
                                            <th>Status</th>
                                            <th>Quantity</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($deliveries as $delivery)
                                        <tr>
                                            <td>{{$delivery->delivery_number}}</td>
                                            <td>{{$delivery->salesOrder->globalstatus->description}}</td>
                                            <td>{{$delivery->deliveryItem->sum('quantity')}}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                    </div>
                    
                </div>
            </div>

    </div>
</div>
@else
<div class="panel panel-danger">
            <div class="alert alert-danger">
                    <ul>
                        <h1>Order not found</h1>
                    </ul>
            </div>
        </div>
 @endif
</div>

@stop
@section('footer_scripts')
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script>
t = $('#table-listing').DataTable({
            "oLanguage": {
                            "sSearch": "Search DO"
                        }
        })
</script>


@endsection