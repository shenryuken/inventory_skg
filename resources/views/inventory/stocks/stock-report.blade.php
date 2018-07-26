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
                      
                        </div>

                        <div class="panel-body">
                                                 <div class="table-responsive">
                                                     <table class="table datatable">
                                                         <thead>
                                                             <tr>
                                                                 <th>Date</th>
                                                                 <th>Description</th>
                                                                 <th>Stock In</th>
                                                                 <th>Stock Out</th>
                                                             </tr>
                                                         </thead>
                                                         <tbody>
                                                             @foreach($reports as $report )
                                                                <tr>
                                                                    <td>{{ $report['date'] }}</td>
                                                                    <td>{{ $report['description'] }}</td>
                                                                    <td>{{ $report['stock_in'] }}</td>
                                                                    <td>{{ $report['stock_out'] }}</td>
                                                                </tr>
                                                             @endforeach
                                                            </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <td><strong>Total</strong></td>
                                                                <td></td>
                                                                <td>{{ $stock_in_total }}</td>
                                                                <td>{{ $stock_out_total }}</td>
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
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jquery.base64.js"') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/html2canvas.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/sprintf.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/jspdf.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/base64.js') }}"></script> 

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