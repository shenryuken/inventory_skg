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
                                    <p>Stock Keeper : {{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}</p>
                                     
                                    <button class="btn btn-info pull-right hide">New Supplier</button>
                                    <button class="btn btn-default pull-right hide">New Product</button>
                                    
                                </div>
                            <form  id="create_stock" method="POST" class="form-horizontal" action="{{url('inventory/stock/in/store')}}">
                        <div class="panel-body">
                            
                                {{ csrf_field() }}
                        
                                    
                                        <div class="form-group">
                                            <div class="col-md-4">
                                                    <label for="stock_in_date">Stock Date</label>                        
                                                    <input type="date" name="stock_date" class="form-control"> 
                                            </div>
                        
                                            <div class="col-md-4">
                                                    <label for="stock_in_date">Product</label>                        
                                                    <select class="form-control" name="product" id="product">
                                                            <option value=""></option>
                                                            @foreach($products as $product)
                                                                <option value="{{ $product->id }}">{{$product->code}}({{$product->name}})</option>
                                                            @endforeach
                                                    </select>
                                            </div>
                        
                                            <div class="col-md-4">
                                                    <label for="stock_in_date">Supplier</label>                        
                                                    <select class="form-control" name="supplier" id="supplier">
                                                            <option value=""></option>
                                                            @foreach($suppliers as $supplier)
                                                                    <option  value="{{ $supplier->id }}">{{$supplier->supplier_code}}</option>
                                                                @endforeach
                                                        </select>
                                            </div>
                                        </div>  
                                        <div class="form-group">
                                                 
                                                <div class="col-md-12">
                                                        <label for="remarks">Remarks</label>                        
                                                        <textarea class="form-control" name="description"></textarea>
                                                </div>      
                                        </div>
                                        <input type="text" name="serial_number_scan_json" id="serial_number_scan_json" hidden>
                                       
                        
                    </div>

                    <div class="panel-body">    
                        <div class="form-horizontal">
                                <div class="form-group">
                                        <div class="col-md-12">
                                        <p class="text-warning"> Please use appropriate input </p>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="has-success has-feedback">
                                                <label for="Barcode">Product S/N</label>                        
                                                <input type="text" class="form-control" id="input_barcode">
                                                <span class="glyphicon glyphicon-barcode form-control-feedback"></span>

                                        </div>
                                        </div>    
                                        <div class="col-md-4">
                                            <div class="has-warning">
                                                <label for="Quantity">Quantity</label>                        
                                                <input type="number" class="form-control" id="input_quantity">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                                <label for="Barcode">Upload</label>                        
                                                <input type="file" class="btn-danger" name="csv" id="inputCsv" data-filename-placement="inside" title="File name goes inside" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" />
                                        </div>    
                                </div>
                        </div>
                               
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
                            <input type="button" id="save"class="btn btn-primary pull-right" value="Save">
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
    
<script  type="text/javascript" >
$(document).ready(function() {
    //Init datatable
    window.t = $('.datatable').DataTable();
    //init counter
    window.counter = 1;

    $(document).on('click','#save',function(){
        getSerialNumber();
        $('#create_stock').submit();
        
    })
    
    //quantiy
    $("#input_quantity").keyup(function(event) {
                    if (event.keyCode === 13 || event.keyCode === 116) {
                        var input = $('#input_quantity').val();

                        if(input!=''){
                            
                                t.row.add( [
                                    counter,
                                    "",
                                    input
                                ] ).draw( false );
                                counter++;
                                $("#input_barcode").prop('disabled', true);
                            
                        }else{
                            alert('Input cannot be empty')
                        }
                        $('#input_quantity').val('');             
                    }                     
                });
    //barcode
    $("#input_barcode").keyup(function(event) {
                    if (event.keyCode === 13 || event.keyCode === 116) {
                        var input = $('#input_barcode').val();

                        if(input!=''){
                            if(checkIfArrayIsUnique(input) == true){
                                t.row.add( [
                                    counter,
                                    input,
                                    1
                                ] ).draw( false );
                                counter++;
                                $("#input_quantity").prop('disabled', true);
                            }else{
                                alert('Duplicate Serial Number')
                            }
                        }else{
                            alert('Input cannot be empty')
                        }
                        $('#input_barcode').val('');             
                    }                     
                }); 
            });

    function checkIfArrayIsUnique(input) {        
        var myArray = getSerialNumber();
        myArray.push(input)        
        return myArray.length === new Set(myArray).size;
    }

    function getSerialNumber(){
        
        // var t = $('.datatable').DataTable();
        var data = t
                        .columns( 1 )
                        .data()
                        .eq( 0 )      // Reduce the 2D array into a 1D array of data
                        .sort()       // Sort data alphabetically
                        // .unique()     // Reduce to unique values
                        .join( '\n' )

        var qty = t
                        .columns( 2 )
                        .data()
                        .eq( 0 )      // Reduce the 2D array into a 1D array of data
                        .sort()       // Sort data alphabetically
                        // .unique()     // Reduce to unique values
                        .join( '\n' )
        var barcode_arr = data.split("\n")
        var qty = qty.split("\n")
        var post_array = [];
        
        //sort to each qty
        for(let x = 0; x < barcode_arr.length;x++){
            post_array.push({
                barcode : barcode_arr[x],
                quantity : qty[x]
            })
        }
		// var temp = [];

		// for(let i of barcode_arr)
		// 	i && temp.push(i); // copy each non-empty value to the 'temp' array

		// barcode_arr = temp;
		// delete temp; 
		$('#serial_number_scan_json').val(JSON.stringify(post_array));		
		return barcode_arr;
    }
</script>

@stop