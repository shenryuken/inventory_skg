@extends('layouts.joli.app')
@section('title','Stock Report')
@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>
        <li class="active">Sales Report</li>
    </ul>
    <!-- END BREADCRUMB -->     
    
    <!-- PAGE CONTENT WRAPPER -->
    
    <div class="page-content-wrap">
        <div class="row">
            <div class="col-md-12">
               
                    <div class="panel panel-default">
                        <div class="panel-heading">

                                    <h1 class="panel-title">Sales Report</h1>

                                    <div class="btn-group pull-right">
                                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                                        <ul class="dropdown-menu">                                       
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'csv',formats:['csv'],fileName:'stock_balance_report',escape:'false'});"><img src='{{asset('themes/Joli/img/icons/csv.png')}}' width="24"/> CSV</a></li>
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'txt',escape:'false'});"><img src='{{asset('themes/Joli/img/icons/txt.png')}}' width="24"/> TXT</a></li>
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'pdf',escape:'false'});"><img src='{{asset('themes/Joli/img/icons/pdf.png')}}' width="24"/> PDF</a></li>
                                        </ul>
                                    </div>                 
                      
                        </div>
                        <div class="panel-body">
                                <p>Filter</p>      
                                <form class="form-horizontal" role="form">   
                                                             
                                        <div class="form-group">
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
                                        </div>
                                        <div class="form-group">
                                                <label class="col-md-2 control-label">Products:</label>
                                                <div class="col-md-2">
                                                    <select  id="product-select" class="form-control">
                                                    <option value="">All</option>
                                                        @foreach ($products as $product)
                                                    <option value="{{$product->code}}">{{$product->name}}</option>
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
                                       
                                                 <div class="table-responsive">
                                                     <table id="stock_bal_report" class="table table-bordered">
                                                         <thead>
                                                             <tr>
                                                                 <th class="hidden"></th>
                                                                 <th>Date</th>
                                                                 <th>SO#</th>
                                                                 @foreach($products as $product)
                                                                 <th>{{ $product->code }}</th>
                                                                 @endforeach
                                                                 <th>Total Quantity</th>                                                                                                                                 
                                                                 <th>Total Paid</th>
                                                                 <th>Order Status</th>
                                                                 
                                                             </tr>
                                                         </thead>
                                                         <tbody>
                                                             @if(count($reports) > 0)   
                                                             @foreach($reports as $report )                                                        
                                                                <tr>
                                                                    <td class="hidden">{{ isset($report->purchase_date) ? $report->purchase_date : ""}}</td>
                                                                    <td>{{ isset($report->purchase_date) ? $report->purchase_date : "" }}</td>
                                                                    <td>{{ isset($report->order_no) ? $report->order_no : "" }}</td>
                                                                    
                                                                    @foreach($products as $product)
                                                                    @php $sum = "";    @endphp 
                                                                    @if(isset($report->orderItems))
                                                                        @foreach($report->orderItems as $rep)
                                                                            @if($product->id != "")
                                                                                @if($product->id === $rep->product_id)
                                                                                @php $sum = $rep->product_qty;    @endphp 
                                                                                @endif                                                                           
                                                                            @endif     
                                                                        @endforeach
                                                                    @endif
                                                                    
                                                                        <td>{{ $sum }}</td>
                                                                    @endforeach
                                                                        
                                                                    
                                                                    <td>{{ $report->orderItems ? $report->orderItems->sum('product_qty') : ""  }}</td>                                                                    
                                                                    <td class="success">{{ isset($report->total_price) ?  $report->total_price : ""}}</td>
                                                                    <td>{{ isset($report->globalstatus->description) ? $report->globalstatus->description : "" }}</td>
                                                                    
                                                                </tr>
                                                             @endforeach
                                                             @else
                                                             <tr><td>No Data</td></tr>
                                                             @endif

                                                            </tbody>
                                                        {{-- <tfoot>
                                                            <tr style="background-color: mistyrose;">
                                                                <td  class="hidden"></td>
                                                                <td><strong>Total</strong></td>                                                              
                                                                @foreach($products as $product)
                                                                 <th> </th>
                                                                 @endforeach
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>                                                                
                                                            </tr>
                                                        </tfoot> --}}
                                                     </table>
                                                 </div>  
                        </div>
                    
            </div>
        </div>
    </div>
    </div>
@endsection

{{-- page level scripts --}}
@section('footer_scripts')
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-datepicker.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/tableExport.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/base64.js') }}"></script> 
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jquery.base64.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/html2canvas.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/sprintf.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/jspdf.js') }}"></script>


    {{-- <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script> 
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script> --}}

    







<script type="text/javascript">


    $(document).ready(function($) {
        $.fn.datepicker.defaults.format = "dd/mm/yyyy";
        var d = new Date();
        var early_month = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +"01"
        var today = d.getFullYear() + "-" + ("0"+(d.getMonth()+1)).slice(-2) + "-" +("0" + d.getDate()).slice(-2)

        var t = $('#stock_bal_report').DataTable({
                    "searching":false,
                    "order": [],
                    "paging":true,
                    "columnDefs": [
                                { targets: 'no-sort', orderable: false }
                                ]                    
                });

        
        $('#min').datepicker("update",new Date(today)).on('change',function(){t.draw()});
        $('#max').datepicker("update",new Date(today)).on('change',function(){t.draw()});
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


         $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {
                        var min = new Date($('#min').val()) ; //parseInt( $('#min').val(), 10 );
                        var max = new Date($('#max').val()); //parseInt( $('#max').val(), 10 );
                        var age = new Date(data[0]) || 0; //parseFloat( data[3] ) || 0; // use data for the age column

                         
                
                        if ( ( isNaN( min ) && isNaN( max ) ) ||
                            ( isNaN( min ) && age <= max ) ||
                            ( min <= age   && isNaN( max ) ) ||
                            ( min <= age   && age <= max ) )
                        {
                            return true;
                        }else{
                            
                        }
                        return false;
                    }
                );

        


        $(function () {
            $("[data-toggle='tooltip']").tooltip();
        });

    $(".click").on('click',function() {
            window.location = $(this).data("href");
        });

        $('#clear_filter').on('click',function(){
        
            $('#min').val("");
            $('#max').val("");

            $('#product-select').val("");
            t.draw();
        })
    });
    
    function fn_clear(){
        console.log("clear!");
    }

    
    
    </script>

@stop
