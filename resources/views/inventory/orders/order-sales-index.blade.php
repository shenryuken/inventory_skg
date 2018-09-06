@extends('layouts.joli.app')
@section('title','Order Listing')
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
    <li><a href="{{ url('order/sales/listing') }}">Order Management</a></li>
    <li><a href="{{ url('order/sales/listing') }}">Order Listing</a></li>
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
                    <div class="panel panel-default">
                            <div class="panel-heading">
                                    <h3 class="panel-title">Sales Order Listing</h3>
                                    <div class="pull-right">
                                            <a href="{{url('print/docket-gdex') }} "  class="btn btn-warning">Print C/N</a>
                                   
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
                                                                 
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Start Date:</label>
                                                <div class="col-md-3">
                                                    <input type="text" id="min" name="min" class="form-control datepicker">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-3 control-label">End Date:</label>
                                                    <div class="col-md-3">
                                                        <input type="text" id="max" name="max" class="form-control datepicker">
                                                    </div>
                                                </div>
                                    </form>
                                    
                            </div>

                            <div class="panel-body">
                                <table  id="sales-order" class="table datatable"> 
                                        <thead>
                                                <tr>
                                        <th>Order Number</th>
                                        <th>Purchase Date</th>                                                                                                       
                                        <th>Agent Code</th>
                                        <th>Status</th>
                                        <th>Ship To</th>
                                        <th>Delivery Type</th> 
                                        <th>Action</th>
                                                </tr>
                                            </thead>

                                        <tbody>
                                            
                                            @foreach($agent_order as $order)
                                            <tr>
                                                <td>{{ $order->order_no }}</td>
                                                <td>{{ Carbon\Carbon::parse($order->purchase_date)->format('d/m/Y') }}</td>                                                
                                                <td>{{ isset($order->user->username) ? $order->user->username:"" }}</td>
                                                <td>{{ isset($order->globalstatus->description) ? $order->globalstatus->description:"" }}</td>
                                                <td>{{ isset($order->shipping_address->city) ? $order->shipping_address->city:"" }}</td>
                                                <td>{{ isset($order->deliveryType->type_description) ? $order->deliveryType->type_description:"" }}</td>
                                                <td><a href="{{ url('inventory/order/delivery/create/'.base64_encode($order->order_no)) }}" class="btn btn-info">Process Order</a>
                                                    {{-- <a href="{{ url('inventory/order/sales/view/'.$order->order_no) }}" class="btn btn-default">Invoice</a></td> --}}
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
        $.fn.datepicker.defaults.format = "dd/mm/yyyy";

         var d = new Date();
        var early_month = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +"01"
        var today = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +("0" + d.getDate()).slice(-2)



         $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {
                        var min = new Date($('#min').val()) ; //parseInt( $('#min').val(), 10 );
                        var max = new Date($('#max').val()); //parseInt( $('#max').val(), 10 );
                        var age = new Date(data[1]) || 0; //parseFloat( data[3] ) || 0; // use data for the age column
                
                        if ( ( isNaN( min ) && isNaN( max ) ) ||
                            ( isNaN( min ) && age <= max ) ||
                            ( min <= age   && isNaN( max ) ) ||
                            ( min <= age   && age <= max ) )
                        {
                            return true;
                        }
                        return false;
                    }
                );
                var t = $('.datatable').DataTable({})

                        
        $('#min').datepicker("update",new Date(early_month)).on('change',function(){t.draw()});
        $('#max').datepicker("update",new Date(today)).on('change',function(){t.draw()});
     // Event listener to the two range filtering inputs to redraw on input
     $('#min, #max').on('change', function() {
                    t.draw();
                } );
    });
</script>
   
@stop
