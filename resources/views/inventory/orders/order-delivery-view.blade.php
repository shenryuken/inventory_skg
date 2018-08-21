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
                @if($delivery)
                    
            <div id="printed_area" class="panel-body panel-body-pricing">  
                    <div class="row">
                            <img class="pull-right" src="data:image/png;base64,{{ DNS1D::getBarcodePNG(isset($delivery->delivery_number) ? $delivery->delivery_number : "", "C93")  }}" alt="barcode"   />
                        </div>             
                    
                    <h1>Order : <strong style="text-transform: uppercase;">#{{ isset($delivery->delivery_number) ? $delivery->delivery_number : ""}}</strong></h1>  
                

                <p><span class="fa fa-caret-right"></span> <strong>Customer:</strong> {{ isset($delivery->salesOrder->user->username) ? $delivery->salesOrder->user->username : "" }}</p>
                <p><span class="fa fa-caret-right"></span> <strong>Status:</strong> {{ isset($delivery->salesOrder->globalstatus->description) ? $delivery->salesOrder->globalstatus->description : "" }}</p>
                <p><span class="fa fa-caret-right"></span> <strong>Purchase Date:</strong> {{ Carbon\Carbon::parse(isset($delivery->salesOrder->purchase_date) ?$delivery->salesOrder->purchase_date: "")->format('d/m/Y') }}</p>
                
                <p><span class="fa fa-caret-right"></span> <strong>Bill To:</strong> {{ isset($delivery->salesOrder->billing_address->street1) ? $delivery->salesOrder->billing_address->street1 : "" }}{{ isset($delivery->salesOrder->billing_address->street2) ? $delivery->salesOrder->billing_address->street2 : "" }},
                    {{ isset($delivery->salesOrder->billing_address->poscode) ? $delivery->salesOrder->billing_address->poscode : "" }},
                    {{ isset($delivery->salesOrder->billing_address->city) ? $delivery->salesOrder->billing_address->city : "" }},
                    {{ isset($delivery->salesOrder->billing_address->state) ? $delivery->salesOrder->billing_address->state: "" }},
                    {{ isset($delivery->salesOrder->billing_address->country) ? $delivery->salesOrder->billing_address->country : "" }}                                                                    
                </p>

                <p><span class="fa fa-caret-right"></span> <strong>Ship To:</strong> {{ isset($delivery->salesOrder->shipping_address->street1) ? $delivery->salesOrder->shipping_address->street1 : "" }}{{ isset($delivery->salesOrder->billing_address->street2 ) ? $delivery->salesOrder->billing_address->street2  : ""}},
                    {{ isset($delivery->salesOrder->shipping_address->poscode) ? $delivery->salesOrder->shipping_address->poscode : "" }},
                    {{ isset($delivery->salesOrder->shipping_address->city) ? $delivery->salesOrder->shipping_address->city : "" }},
                    {{ isset($delivery->salesOrder->shipping_address->state) ? $delivery->salesOrder->shipping_address->state : "" }},
                    {{ isset($delivery->salesOrder->shipping_address->country) ? $delivery->salesOrder->shipping_address->country : "" }}                                                                    
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
                                <td>RM(WM){{ isset($item->products->price_wm) ? $item->products->price_wm : "" }}</td>
                                <td>{{ isset($item->quantity) ? $item->quantity : "" }}</td>
                            </tr>
                            @endforeach
                    </tbody>
                </table>
                {{-- <p><span class="fa fa-caret-right"></span> <strong>Total Items: {{ $order->total_items }}</strong></p>
                <p><span class="fa fa-caret-right"></span> <strong>Total Price: MYR {{ $order->invoice->total }}</strong></p>
                <p><span class="fa fa-caret-right"></span> <strong>Delivery Price: MYR {{ $order->invoice->delivery_cost }}</strong></p> --}}

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