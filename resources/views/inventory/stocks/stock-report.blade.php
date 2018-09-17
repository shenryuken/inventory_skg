@extends('layouts.joli.app')
@section('title','Stock Report')
@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>
        <li><a href="#">Stock</a></li>
        <li class="active">Stock Report</li>
    </ul>
    <!-- END BREADCRUMB -->     
    
    <!-- PAGE CONTENT WRAPPER -->
    
    <div class="page-content-wrap">
        <div class="row">
            <div class="col-md-12">
               
                    <div class="panel panel-default">
                        <div class="panel-heading">

                                    <h1 class="panel-title">Stock Balance Report</h1>

                                    <div class="btn-group pull-right">
                                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                                        <ul class="dropdown-menu">
                                           
                                           
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'csv',escape:'false',consoleLog:'true'});"><img src='img/icons/csv.png' width="24"/> CSV</a></li>
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'txt',escape:'false'});"><img src='img/icons/txt.png' width="24"/> TXT</a></li>
                                            
                                            <li><a href="#" onClick ="$('#stock_bal_report').tableExport({type:'pdf',escape:'false'});"><img src='img/icons/pdf.png' width="24"/> PDF</a></li>
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
                                       
                                                 <div class="table-responsive">
                                                     <table id="stock_bal_report" class="table table-bordered">
                                                         <thead>
                                                             <tr>
                                                                 <th class="hidden"></th>
                                                                 <th>Date</th>
                                                                 <th>Product</th>
                                                                 <th>Product Code</th>
                                                                 <th>Supplier</th>
                                                                 <th>Supplier Code</th>
                                                                 <th>Description</th>
                                                                 <th>Stock In</th>
                                                                 <th>Stock Out</th>
                                                             </tr>
                                                         </thead>
                                                         <tbody>
                                                             @foreach($reports as $report )
                                                                <tr>
                                                                    <td class="hidden">{{ $report['server_date'] }}</td>
                                                                    <td>{{ $report['date'] }}</td>
                                                                    <td>{{ $report['product_name'] }}</td>
                                                                    <td>{{ $report['product_code'] }}</td>
                                                                    <td>{{ $report['supplier_name'] }}</td>
                                                                    <td>{{ $report['supplier_code'] }}</td>
                                                                    <td>{{ $report['description'] }}</td>								    
                                                                    <td>{{ $report['stock_in'] }}</td>
                                                                <td data-toggle="tooltip" data-original-title="{{ $report['adjustment_type'] }}" data-container="body" data-toggle="tooltip" data-placement="bottom" title="" title="">{{ $report['stock_out'] }}</td>
                                                                </tr>
                                                             @endforeach
                                                            </tbody>
                                                        <tfoot>
                                                            <tr style="background-color: Wheat;">
                                                                <td><strong>Total</strong></td>
                                                                <td class="hidden"></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td><strong>{{ $stock_in_total }}</strong></td>
                                                                <td><strong>{{ $stock_out_total }}</strong></td>
                                                            </tr>
                                                        </tfoot>
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
        "footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data;
 
            // Remove the formatting to get integer data for summation
            var intVal = function ( i ) {
                return typeof i === 'string' ?
                    i.replace(/[\$,]/g, '')*1 :
                    typeof i === 'number' ?
                        i : 0;
            };
 
            // Total over all pages
            total1 = api
                .column( 7   )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );

            total2 = api
            .column( 8 )
            .data()
            .reduce( function (a, b) {
                return intVal(a) + intVal(b);
            }, 0 );
 
            // Total over this page
            pageTotal1 = api
                .column( 7  , { page: 'current'} )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );

            pageTotal2 = api
                .column( 8, { page: 'current'} )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
 
            // Update footer
            $( api.column( 7     ).footer() ).html(
                '<strong>'+pageTotal1 +'</strong>'
            );

            $( api.column( 8 ).footer() ).html(
                '<strong>'+pageTotal2 + '</strong>'
            );
        },
                    "order": [],
                    // "scrollY":        "200px",
                    // "scrollCollapse": true,
                    "paging":false,
                    "columnDefs": [
                                { targets: 'no-sort', orderable: false }
                                ]                    
                });
        
        $('#min').datepicker("update",new Date(early_month)).on('change',function(){t.draw()});
        $('#max').datepicker("update",new Date(today)).on('change',function(){t.draw()});


         $.fn.dataTable.ext.search.push(
                    function( settings, data, dataIndex ) {
                        var min = new Date($('#min').val()) ; //parseInt( $('#min').val(), 10 );
                        var max = new Date($('#max').val()); //parseInt( $('#max').val(), 10 );
                        var age = new Date(data[0]) || 0; //parseFloat( data[3] ) || 0; // use data for the age column
                        console.log(age)
                
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

        

                // Event listener to the two range filtering inputs to redraw on input
                $('#min, #max').on('change', function() {
                    t.draw();
                } );

        $(function () {
            $("[data-toggle='tooltip']").tooltip();
        });

    $(".click").on('click',function() {
            window.location = $(this).data("href");
        });
    });
    
    function fn_clear(){
        console.log("clear!");
    }
    
    </script>

@stop
