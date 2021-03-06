@extends('layouts.joli.app')
@section('title','Delivery Order Listing')
<style>
#table_listing{
    font-size: 1.2rem;
}
textarea {
   resize: none;
}
</style>
@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
	<li><a href="{{ url('home') }}">Home</a></li>                    
    <li><a href="{{ url('inventory/order/delivery/') }}">Order Management</a></li>
    <li class="active">Delivery Order Listing</li>
</ul>
<!-- END BREADCRUMB -->   

<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    <!-- START RESPONSIVE TABLES -->
    <div class="row"><div class="col-sm-12">
 @if(session("message"))        
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                {{ session("message") }}
            </div>
        </div>
 @endif
 @if(session("errorid"))
     <div class="col-sm-12">
         <div class="alert alert-danger">
             <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
             {{ session("errorid") }}
         </div>
     </div>
 @endif
    </div>

    <div class="row">
            <div class="col-md-12">
                    <div class="panel panel-default">
                            <div class="panel-heading">
                                    <h3 class="panel-title">Delivery Order Listing</h3>
                                    <a href="{{url('inventory/order/sales')}}" class="btn btn-info pull-right"><i class="fa fa-list"></i> SO Listing </a>
                                    <div class="btn-group pull-right">
                                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                                        <ul class="dropdown-menu">                                            
                                            <li><a href="#" onClick ="$('#sales-order').tableExport({type:'csv',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/csv.png') }}" width="24"/> CSV</a></li>
                                            <li><a href="#" onClick ="$('#sales-order').tableExport({type:'txt',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/txt.png') }}" width="24"/> TXT</a></li>
                                            <li><a href="#" onClick ="$('#sales-order').tableExport({type:'excel',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/xls.png') }}" width="24"/> XLS</a></li>
                                            <li><a href="#" onClick ="$('#sales-order').tableExport({type:'pdf',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/pdf.png') }}" width="24"/> PDF</a></li>
                                        </ul>
                                    </div> 
                            </div>
                            <div class="panel-body">
                                    <p>Filter</p>      
                                    <form class="form-horizontal" role="form">   
                                                                 
                                            {{-- <div class="form-group">
                                                <label class="col-md-2 control-label">Start Date:</label>
                                                <div class="col-md-2">
                                                    <input type="text" id="min" name="min" class="form-control datepicker">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-2 control-label">End Date:</label>
                                                    <div class="col-md-2">
                                                        <input type="text" id="max" name="max" class="form-control datepicker">
                                                    </div>
                                            </div> --}}
                                            <div class="form-group">
                                                    <label class="col-md-2 control-label">Address State:</label>
                                                    <div class="col-md-2">
                                                        <select  id="product-select" class="form-control">
                                                        <option value="">All</option>
                                                            @foreach ($address as $add)
                                                        <option value="{{$add->state}}">{{$add->state}}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                            </div>
    
                                            <div class="form-group">
                                                    <div class="col-md-4">
                                                <input type="button" class="btn btn-default btn-rounded pull-right" id="clear_filter" value="Clear Filter">
                                                    </div>
                                            </div>
                                    </form>
    
                            </div>
                            
                            <div class="panel-body">
                                <table  id="delivery-order" class="table"> 
                                        <thead>
                                                <tr>
                                        <th>Delivery Number</th>
                                        <th>Order Number</th>
                                        <th>Process Date</th>
                                        <th>Delivery State</th>                                                                
                                        <th>Courier</th>
                                        {{-- <th>Status</th> --}}
                                        <th>Action</th>
                                                </tr>
                                            </thead>

                                        <tbody>
                                            @foreach($deliveries as $delivery)
                                            @php $order_status = isset($delivery->salesOrder->status) ? $delivery->salesOrder->status : ""
                                            @endphp
                                            <tr>
                                                <td>{{ isset($delivery->delivery_number) ? $delivery->delivery_number : "" }}</td>
                                                <td>{{ isset($delivery->salesOrder) ? $delivery->salesOrder->order_no : "" }}</td>
                                                <td>{{ isset($delivery->created_at) ? Carbon\Carbon::parse($delivery->created_at)->format('d/m/Y') : "" }}</td>
                                                <td>{{ isset($delivery->salesOrder->shipping_address->state) ? $delivery->salesOrder->shipping_address->state : "" }}</td>
                                                <td>{{ isset($delivery->courier->courier_name) ? $delivery->courier->courier_name : "" }}</td>
                                                {{-- <td>{{ $order->globalstatus->description }}</td> --}}
                                                <td>
                                                    {{-- <a href="{{ url('inventory/order/delivery/edit/'.$delivery->delivery_number) }}" class="btn btn-info">Update</a> --}}
                                                   
                                                <form method="post" action="{{ url('inventory/order/delivery/complete')}}" role="form"">
                                                    {{ csrf_field() }}
                                                    <a href="{{ url('inventory/order/delivery/view/'.(isset($delivery->delivery_number) ? base64_encode($delivery->delivery_number) : "")) }}" class="btn btn-default">Order Note</a>
                                                    @if($delivery->status == 'pending')
                                                    <input type="hidden" value="{{$delivery->id}}" name="order_no">
                                                    <button type="submit" id="pickup-btn" class="btn btn-info pickup-btn hide">Pickup</button>   
                                                @endif
                                                </td>
                                                 </form> 
                                            </tr>
                                            @endforeach
                                        </tbody>
                                </table>
                            </div>
                    </div>
            </div>
        </div>

@endsection
{{-- page level scripts --}}
@section('footer_scripts')
<!-- START SCRIPTS -->

<!-- START THIS PAGE PLUGINS-->        
<script type='text/javascript' src="{{ asset('themes/Joli/js/plugins/icheck/icheck.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-datepicker.js') }}"></script>

<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/tableExport.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jquery.base64.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/html2canvas.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/sprintf.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/jspdf.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/base64.js') }}"></script>        
<!-- END THIS PAGE PLUGINS-->  

<!-- END SCRIPTS -->       

<script type="text/javascript">


    $(document).ready(function($) {
        var t = $('#delivery-order').DataTable({
        })

             $('#product-select').on('change',function(){t.draw()});

              $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {                       
                        var product = $('#product-select').val().toLowerCase(); 
                        if((data[3].toLowerCase().indexOf(product) !== -1 ) || product == "") 
                        {
                            return true;
                        }
                        return false;
                    }
                );
            
                t.on( 'search.dt', function () {
                    $('.pickup-btn').removeClass('hide');
                    $(".dataTables_filter").hide();
                    $
                } );

    
    });
</script>

@stop
