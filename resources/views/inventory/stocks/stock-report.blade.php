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
                            <div class="row">
                                    <h3 class="panel-title">Stock Report as {{date('d/m/Y')}}</h3>
                                    <div class="actions pull-right">
                                            <a href="@" class="btn btn-default  btn-sm btn-circle" title="Donlod">
                                                <i class="fa fa-download"></i>Download</a>
                                    </div>
                            </div>
                            <div class="row">
                        
                        <form class="form-horizontal">
                       

                                <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Products</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                                <select class="form-control">
                                                        <option>1</option>
                                                    </select>                                            
                                            <span class="help-block">This is sample of text field</span>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                            <label class="col-md-3 col-xs-12 control-label">Date Start</label>
                                            <div class="col-md-6 col-xs-12">                                            
                                                <input type="date" class="form-control">                                          
                                                
                                            </div>
                                    </div>
                                    <div class="form-group">
                                            <label class="col-md-3 col-xs-12 control-label">Date End</label>
                                            <div class="col-md-6 col-xs-12">                                            
                                                <input type="date" class="form-control">                                          
                                                
                                            </div>
                                    </div>
                        </form>
                    </div>

                        
                    </div>
                    <form class="form-horizontal">
                        <div class="panel-body panel-body-table">
                            <div class="table-responsive">
                           
                                        <table class="table table-hover table-striped">
                                                <caption>
                                                  Supplier contacts
                                                </caption>
                                                
                                                <tr>
                                                  <td id="blank">&nbsp;</td>
                                                  @php $period = Carbon\CarbonPeriod::create('2018-06-14', '2018-06-20'); @endphp

                                                    @foreach ($period as $date) 
                                                    <th id="co1" headers="blank">{{ $date->format('d/m/Y') }}</th>
                                                    @endforeach
                                                    <th id="co1" headers="blank">Stock In</th>
                                                    <th id="co1" headers="blank">Stock Out</th>
                                                    <th id="co1" headers="blank">Total</th>
                                                </tr>

                                                @foreach($products as $product)
                                                        <tr>
                                                                <th id="c1" headers="blank">{{ $product['name'] }}</th>
                                                                @foreach ($period as $date) 
                                                                <td headers="co1 c1">0</td>
                                                                @endforeach
                                                        </tr>
                                                    
                                                    @endforeach
                                               
                                              </table>
                               
                            </div>
                        </div>
                    </div>
                </form>
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