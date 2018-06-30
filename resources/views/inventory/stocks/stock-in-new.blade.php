@extends('layouts.joli.app')
@section('title','New Stock In')
@section('content')
<!-- START BREADCRUMB -->
    <ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>                    
        <li><a href="{{ url('stock/listing') }}">New Stock In</a></li>
    </ul>
<!-- END BREADCRUMB -->   
    
    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <!-- START RESPONSIVE TABLES -->
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

{{-- 
    @component('components.notifications.errors')
    @endcomponent

    @include('components.notifications.messages') --}}


    <div class="row">
        <div class="col-md-12">
                <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h2>Stock In Form</h2>
                                    <button class="btn btn-info pull-right">New Supplier</button>
                                    <button class="btn btn-default pull-right">New Product</button>
                                </div>
                            <form action="create" method="POST" class="form-horizontal">
                        <div class="panel-body">
                            
                                {{ csrf_field() }}
                        
                                    
                                        <div class="form-group">
                                            <div class="col-md-4">
                                                    <label for="stock_in_date">Stock Date</label>                        
                                                    <input type="date" name="stock_date" class="form-control"> 
                                            </div>
                        
                                            <div class="col-md-4">
                                                    <label for="stock_in_date">Product</label>                        
                                                    <select class="form-control" name="product_code" id="product">
                                                            <option value=""></option>
                                                            @foreach($products as $product)
                                                                <option value="{{ $product->id }}">{{$product->code}}({{$product->name}})</option>
                                                            @endforeach
                                                    </select>
                                            </div>
                        
                                            <div class="col-md-4">
                                                    <label for="stock_in_date">Supplier</label>                        
                                                    <select class="form-control" name="supplier_code" id="supplier">
                                                            <option value=""></option>
                                                            @foreach($suppliers as $supplier)
                                                                    <option value="{{ $supplier->id }}">{{$supplier->supplier_code}}</option>
                                                                @endforeach
                                                        </select>
                                            </div>
                                        </div>  
                                        <div class="form-group">
                                                <div class="col-md-12">
                                                        <label for="remarks">Remarks</label>                        
                                                        <textarea class="form-control"></textarea>
                                                </div>      
                                        </div>
                                       
                        
                    </div>

                    <div class="panel-body">                             
                        <h5>Barcode:</h5>
                                <button type="button" class="btn btn-md  btn-default"  data-toggle="modal" data-target="#uploadModal"><i class="fa fa-upload"></i>Upload CSV</button>
                                <button type="button"  class="btn btn-md  btn-default"  data-toggle="modal" data-target="#scannerModal"><i class="fa fa-barcode"></i>Scanner</button>
                                <button type="button"  class="btn btn-md  btn-default"  data-toggle="modal" data-target="#scannerModal">Add Quantity</button>  
                        <div class="table-responsive">
                                <table class="table datatable" id="table_listing">
                                    <thead>
                                        <tr>
                                            <th width="5px"></th>
                                            <th>Serial Number</th> 
                                            <th>Quantity</th>                                     
                                                                                        
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                    </div>
                    <div class="panel-footer">
                            <input type="button" id="clearBtn" class="btn btn-default" value="Clear Form">
                            <input type="button" id="saveDialogBtn"class="btn btn-primary pull-right" value="Save">
                    </div>
                        </form>
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
@stop