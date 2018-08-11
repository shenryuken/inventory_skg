@extends('layouts.joli.app')

@section('content')
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

	<div class="col-md-6">

        <div class="panel panel-success push-up-20">
                <div class="panel-heading">
                    <button class="btn pull-right" onclick="printElem('printed_area')"><i class="fa fa-print"></i> Print </a></button>
                </div>
                @if($order)
            <div id="printed_area" class="panel-body panel-body-pricing">
                <div class="row">
                <img class="pull-right" src="data:image/png;base64,{{ DNS1D::getBarcodePNG(str_replace("SO","INV",isset($order->order_no)? $order->order_no : ""), "C93") }}" alt="barcode"   />
            </div>

                   
                    {{-- {!! DNS1D::getBarcodeSVG($order->order_no, "C93") !!} --}}
                    <h1>Invoice : <strong style="text-transform: uppercase;">#{{ str_replace("SO","INV",isset($order->order_no)? $order->order_no : "")}}</strong></h1>  
                

                <p><span class="fa fa-caret-right"></span> <strong>Customer:</strong> {{ isset($order->user->username) ? $order->user->username : "" }}</p>
                <p><span class="fa fa-caret-right"></span> <strong>Status:</strong> {{ isset($order->globalstatus->description) ? $order->globalstatus->description : "" }}</p>
                <p><span class="fa fa-caret-right"></span> <strong>Purchase Date:</strong> {{ Carbon\Carbon::parse(isset($order->purchase_date) ? $order->purchase_date : "")->format('d/m/Y') }}</p>
                
                <p><span class="fa fa-caret-right"></span> <strong>Bill To:</strong> {{ isset($order->billing_address->street1) ? $order->billing_address->street1 : "" }}{{ isset($order->billing_address->street2) ? $order->billing_address->street2 : "" }},
                    {{ isset($order->billing_address->poscode) ? $order->billing_address->poscode : "" }},
                    {{ isset($order->billing_address->city) ? $order->billing_address->city : "" }},
                    {{ isset($order->billing_address->state) ? $order->billing_address->state : "" }},
                    {{ isset($order->billing_address->country) ? $order->billing_address->country : "" }}                                                                    
                </p>

                <p><span class="fa fa-caret-right"></span> <strong>Ship To:</strong> {{ isset($order->shipping_address->street1)? $order->shipping_address->street1 : "" }}{{ isset($order->billing_address->street2)? $order->billing_address->street2 : "" }},
                    {{ isset($order->shipping_address->poscode) ? $order->shipping_address->poscode : "" }},
                    {{ isset($order->shipping_address->city ) ? $order->shipping_address->city  : ""}},
                    {{ isset($order->shipping_address->state) ? $order->shipping_address->state : "" }},
                    {{ isset($order->shipping_address->country) ? $order->shipping_address->country : "" }}                                                                    
                </p>

                <table class="table">
                    <thead>
                        <tr>
                            <th>Items</th>
                            <th>Price</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach($items as $item)
                            <tr>
                                <td>{{ isset($item->products->name) ? $item->products->name : "" }}</td>
                                <td>{{ isset($item->products->price_wm) ? $item->products->price_wm : "" }}</td>
                                <td>{{ isset($item->product_qty) ? $item->product_qty : "" }}</td>
                            </tr>
                            @endforeach
                    </tbody>
                </table>
                <p><span class="fa fa-caret-right"></span> <strong>Total Items: </strong></p>
                <p><span class="fa fa-caret-right"></span> <strong>Total Price: MYR  </strong></p>
                <p><span class="fa fa-caret-right"></span> <strong>Delivery Price: MYR </strong></p>

            </div>
            @else
            <div class="alert alert-danger">
                    <ul>
                        <h1>Order not found</h1>
                    </ul>
                </div>
                @endif
        </div>

    </div>
</div>
</div>

@stop
@section('footer_scripts')
<script>
function printElem(divId) {
    var content = document.getElementById(divId).innerHTML;
    var mywindow = window.open('', 'Print', 'height=600,width=800');

    mywindow.document.write('<html><head><style>table{border: 1px solid black;width:100%}</style><title>Print</title>');
    mywindow.document.write('</head><body >');
    mywindow.document.write(content);
    mywindow.document.write('</body></html>');

    mywindow.document.close();
    mywindow.focus()
    mywindow.print();
    mywindow.close();
    return true;
}
</script>


@endsection