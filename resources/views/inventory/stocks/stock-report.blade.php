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
                                                 <div class="table-responsive">
                                                     <table id="stock_bal_report" class="table datatable table-bordered">
                                                         <thead>
                                                             <tr>
                                                                 <th>Date</th>
								 <th>Product</th>
                                                                 <th>Description</th>
                                                                 <th>Stock In</th>
                                                                 <th>Stock Out</th>
                                                             </tr>
                                                         </thead>
                                                         <tbody>
                                                             @foreach($reports as $report )
                                                                <tr>
                                                                    <td>{{ $report['date'] }}</td>
								    <td></td>
                                                                    <td>{{ $report['description'] }}</td>								    
                                                                    <td>{{ $report['stock_in'] }}</td>
                                                                    <td>{{ $report['stock_out'] }}</td>
                                                                </tr>
                                                             @endforeach
                                                            </tbody>
                                                        <tfoot>
                                                            <tr style="background-color: gray;">
                                                                <td><strong>Total</strong></td>
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
 <script type='text/javascript' src="{{ asset('themes/Joli/js/plugins/icheck/icheck.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>
    
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
        var t = $('.datatable').DataTable({
                    "order": [],
                    // "scrollY":        "200px",
                    // "scrollCollapse": true,
                    "paging":false,
                    "columnDefs": [
                                { targets: 'no-sort', orderable: false }
                                ]                    
                });

        

    $(".click").click(function() {
            window.location = $(this).data("href");
        });
    });
    
    function fn_clear(){
        console.log("clear!");
    }
    </script>

@stop
