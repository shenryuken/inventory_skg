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
                                    <h3 class="panel-title">Sales Order</h3>
                                    <div class="pull-right">
                                            {{-- <a href="{{url('print/docket-gdex') }} "  class="btn btn-warning">Print C/N</a> --}}
                                            
                                            <form action="{{url('print/docket-gdex')}}" method="post" target="_blank" id="docket_form">
                                                {{ csrf_field() }}
                                                <input type="text" name="so" id="so" hidden>
                                                <a href="#" id="docket-btn" class="btn btn-warning"><i class="glyphicon glyphicon-print"></i>Print C/N</a>

                                            </form>
                                   
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
                                                <label class="col-md-3 control-label">Purchase Date From:</label>
                                                <div class="col-md-3">
                                                        <div class="input-group">
                                                    <input type="text" id="min" name="min" class="form-control datepicker"  data-date="" data-date-format="dd-mm-yyyy" data-date-viewmode="years">
                                                    <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                    <label class="col-md-3 control-label">Purchase Date To:</label>
                                                    <div class="col-md-3">
                                                            <div class="input-group">
                                                        <input type="text" id="max" name="max" class="form-control datepicker">
                                                        <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="form-group">
                                                    <label class="col-md-3 control-label">Agent Code:</label>
                                                    <div class="col-md-3">
                                                            <div class="input-group">
                                                        <input type="text" id="agent_code_filter" name="agent_code_filter" class="form-control">
                                                        <span class="input-group-addon"><span class="fa fa-smile-o"></span></span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="form-group">
                                                    <label class="col-md-3 control-label">Delivery Type:</label>
                                                    <div class="col-md-3">
                                                            <div class="input-group">
                                                        <input type="text" id="delivery_type_filter" name="delivery_type_filter" class="form-control">
                                                        <span class="input-group-addon"><span class="fa fa-circle"></span></span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="form-group">
                                                    <label class="col-md-3 control-label">Ship To:</label>
                                                    <div class="col-md-3">
                                                            <div class="input-group">
                                                        <input type="text" id="ship_to_filter" name="ship_to_filter" class="form-control">
                                                        <span class="input-group-addon"><span class="fa fa-map-marker""></span></span>
                                                            </div>
                                                    </div>
                                            </div>
                                    </form>
                                    
                            </div>

                            <div class="panel-body">
                                <table  id="sales-order" class="table"> 
                                        <thead>
                                                <tr>
                                        <th>Sales Order#</th>                                                                                                                                       
                                        <th>Agent Code</th>
                                        <th>Status</th>
                                        <th>Ship To</th>
                                        <th>Delivery Type</th>
                                        <th>Purchase Date</th>
                                        <th class="hidden"></th>         
                                        <th>Action</th>
                                                </tr>
                                            </thead>

                                        <tbody>
                                            
                                            @foreach($agent_order as $order)
                                            <tr>
                                                <td>{{ $order->order_no }}</td>                                                                                                
                                                <td>{{ isset($order->user->username) ? $order->user->username:"" }}</td>
                                                <td>{{ isset($order->globalstatus->description) ? $order->globalstatus->description:"" }}</td>
                                                <td>{{ isset($order->shipping_address->city) ? $order->shipping_address->city:"" }}</td>
                                                <td>{{ isset($order->deliveryType->type_description) ? $order->deliveryType->type_description:"" }}</td>
                                                <td data-order="{{ Carbon\Carbon::parse($order->purchase_date)}}">{{ Carbon\Carbon::parse($order->purchase_date)->format('d/m/Y') }}</td>
                                                <td class="hidden" data-order="{{ Carbon\Carbon::parse($order->purchase_date)}}">{{ $order->purchase_date }}</td>
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
     var t;
    $(document).ready(function() {     

        var d = new Date();
        var early_month = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +"01"
        var today = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +("0" + d.getDate()).slice(-2)

        t = $('#sales-order').DataTable({
            "oLanguage": {
                            "sSearch": "Search Sales Order"
                        }
        })
        
        $.fn.datepicker.defaults.format = "dd/mm/yyyy";
            $('#min').datepicker("update",new Date(early_month)).on('change',function(){t.draw()});
            $('#max').datepicker("update",new Date(today)).on('change',function(){t.draw()});

            $('#agent_code_filter').on('blur',function(){t.draw()});
            $('#delivery_type_filter').on('blur',function(){t.draw()});
            $('#ship_to_filter').on('blur',function(){t.draw()});
        
            //search date
        $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {
                        
                        var min = new Date($('#min').val()) ; //parseInt( $('#min').val(), 10 );
                        var max = new Date($('#max').val()); //parseInt( $('#max').val(), 10 );

                        var dateString = data[5] || {{ date('d/m/Y') }};
                        var dateParts = dateString.split("/");
                        var age = new Date(data[6]) || new Date()

                        if ( ( isNaN( min ) && isNaN( max ) ) ||
                            ( isNaN( min ) && age <= max ) ||
                            ( min <= age   && isNaN( max ) ) ||
                            ( min <= age   && age <= max ) )
                        {
                            return true;
                        }
                        return false;
                    } );
        //search detail
        $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {
                        var agent = $('#agent_code_filter').val().toLowerCase();
                        var delivery_type = $('#delivery_type_filter').val().toLowerCase();
                        var ship_to = $('#ship_to_filter').val().toLowerCase();               

                        if( ((data[1].toLowerCase().indexOf(agent) !== -1 ) || agent == "") && 
                            ((data[4].toLowerCase().indexOf(delivery_type) !== -1 )  || delivery_type == "") &&
                            ((data[3].toLowerCase().indexOf(ship_to) !== -1 ) || ship_to == "")){
                            return true;
                        }
                        return false;
                    });
        
        
        
        //Docket
        function getSerialNumber(){
        
        var data = t
                        .columns( 0 ,{ filter : 'applied'})
                        .data()
                        .eq( 0 )      // Reduce the 2D array into a 1D array of data
                        .sort()       // Sort data alphabetically
                        // .unique()     // Reduce to unique values
                        .join( '\n' )


        var barcode_arr = data.split("\n")

        var post_array = [];

        //sort to each qty
        for(let x = 0; x < barcode_arr.length;x++){

            post_array.push({
                barcode : barcode_arr[x]
            })
        }
	
		return barcode_arr;
    }

        

    $('#docket-btn').on('click',function(){
        var so = getSerialNumber();
        $('#so').val(JSON.stringify(so));
        $('#docket_form').submit();
    })
        

    });

    
</script>
   
@stop
