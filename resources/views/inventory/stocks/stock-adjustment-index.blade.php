@extends('layouts.joli.app')
@section('title','New Stock Adjustment')
@section('content')
<!-- START BREADCRUMB -->
    <ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>                    
        <li><a href="{{ url('stock/adjustment') }}">New Stock Adjustment</a></li>
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
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
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
                                    <h2>Stock Adjustment Form</h2>
                                    <p>Stock Keeper : {{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }}</p>
                                    
                                </div>
                            <form  id="create_adjustment" method="POST" class="form-horizontal" action="{{url('inventory/stock/adjustment/store')}}">
                        <div class="panel-body">
                            
                                {{ csrf_field() }}
                                        <div class="form-group">
                                                <label for="stock_in_date" class="col-md-3 col-xs-12 control-label">Adjustment Date</label> 
                                                <div class="col-md-6 col-xs-12">                       
                                                        <input type="input" name="adjustment_date" class="form-control datepicker"  value="{{old('adjustment_date')}}"> 
                                                </div>
                                        </div>

                                        <div class="form-group">
                                                <label for="product" class="col-md-3 col-xs-12 control-label">Product</label> 
                                                <div class="col-md-6 col-xs-12">                       
                                                        <select class="form-control" name="product" id="product">
                                                                <option value=""></option>
                                                                @foreach($products as $product)
                                                                @if (old('product') == $product->id)
                                                                    <option value="{{ $product->id }}" selected>{{$product->code}}({{$product->name}})</option>
                                                                @else
                                                                    <option value="{{ $product->id }}">{{$product->code}}({{$product->name}})</option>
                                                                @endif

                                                                @endforeach
                                                        </select> 
                                                </div>
                                        </div>

                                        <div class="form-group">
                                                <label for="adjustment_type" class="col-md-3 col-xs-12 control-label">Adjustment Type</label> 
                                                <div class="col-md-6 col-xs-12">                       
                                                        <select class="form-control" name = "adjustment_type" id="adjustment_type">
                                                                <option value=""></option>
                                                                @foreach($stockadjustment_type as $adjustment)
                                                                        <option   value="{{ $adjustment->id }}">{{$adjustment->adjustment}}</option>
                                                                    @endforeach
                                                            </select>
                                                </div>
                                        </div>

                                        <div class="form-group">
                                                <label for="description" class="col-md-3 col-xs-12 control-label">Notes</label> 
                                                <div class="col-md-6 col-xs-12">                       
                                                        <textarea class="form-control" name="description" style="resize: none;" value="{{old('description')}}"></textarea>
                                                </div>
                                        </div>

                                        <input type="text" name="serial_number_scan_json" id="serial_number_scan_json" hidden  value="{{old('serial_number_scan_json')}}">
                                       
                        
                    </div>

                    <div class="panel-body">    
                        <div class="form-horizontal">
                            
                                <div class="form-group">
                                        <div class="col-md-12">
                                                <p class="text-warning"> Please use appropriate input (Once) </p>
                                        </div>
                                        <div class="col-md-4">
                                                <div class="has-success has-feedback">
                                                <label for="Barcode"><input type="radio" name="optradio" checked>Product S/N</label>                        
                                                <input type="text" class="form-control" id="input_barcode">
                                                <span class="glyphicon glyphicon-barcode form-control-feedback"></span>
                                            </div>
                                        </div>    
                                        <div class="col-md-4">
                                                <div class="has-warning">
                                                <label for="Quantity"><input type="radio" name="optradio">Quantity</label>                        
                                                <input type="number" class="form-control" id="input_quantity">
                                                </div>
                                        </div>
                                        <div class="col-md-4 hide">
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
                                            <th></th>                                      
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                    </div>
                    <div class="panel-body">  
                        <div class="col-md-6">
                        <table class="table">
                            <thead>
                                <h5>Stock Info</h5>
                                <tr>
                                    <th>In Stocks</th>
                                    <th>Adjusting</th>
                                    <th>Will Remain</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td id="instock_table"></td>
                                    <td id="adjusting_table"></td>
                                    <td id="remain_table"></td>
                                </tr>
                            </tbody>
                        </table>  
                    </div>
                    </div>
                    <div class="panel-footer">
                            {{-- <input type="button" id="clearBtn" class="btn btn-default hide" value="Clear Form"> --}}
                            <input type="button" id="modal_open" data-toggle="modal" data-target="#modal_basic" class="btn btn-primary pull-right" value="Save">
                    </div>
                    <div class="modal" id="modal_basic" tabindex="-1" role="dialog" aria-labelledby="defModalHead" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                        <h4 class="modal-title" id="defModalHead">Confirmation</h4>
                                    </div>
                                    <div class="modal-body">
                                        Are you sure to make this adjustment?
                                    </div>
                                    <div class="modal-footer">
                                            <input type="button" id="save" class="btn btn-primary pull-right" value="Ok">
                                            <input type="button" class="btn btn-default pull-left" data-dismiss="modal" value="cancel">
                                    </div>
                                </div>
                            </div>
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
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-datepicker.js') }}"></script>
    <script type="text/javascript" src="//cdn.datatables.net/plug-ins/1.10.19/api/sum().js"></script>
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
        $('#create_adjustment').submit();
        
    })

    //deletion
    $('#table_listing tbody').on( 'click', '.glyphicon-remove-sign', function () {
        t
            .row( $(this).parents('tr') )
            .remove()
            .draw();
            getSerialNumber()
    } );
    
    //quantiy
    $("#input_quantity").keyup(function(event) {
                    if (event.keyCode === 13 || event.keyCode === 116) {
                        var input = $('#input_quantity').val();

                        if(input!=''){
                            
                                t.row.add( [
                                    counter,
                                    "",
                                    input,
                                    ' <span class="glyphicon glyphicon-remove-sign" style="color:red;"></span>'
                                ] ).draw( false );
                                counter++;
                                $("#input_barcode").prop('disabled', true);
                            
                        }else{
                            alert('Input cannot be empty')
                        }
                        $('#input_quantity').val('');             
                    }

                    calcTotal()                     
                });
    //barcode
    $("#input_barcode").keyup(function(event) {
                    if (event.keyCode === 13 || event.keyCode === 116) {
                        var input = $('#input_barcode').val();

                        if(input!=''){
                            //Check Barcode exist
                            $.ajax({
                            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            data:{barcode:input},	
                            url: "adjustment/check_barcode"
                            }).done(function(result){
                                console.log(result)
                                if(result.status == "01"){
                                    if(checkIfArrayIsUnique(input) == true){
                                t.row.add( [
                                    counter,
                                    input,
                                    1,
                                    ' <span class="glyphicon glyphicon-remove-sign" style="color:red;"></span>'
                                ] ).draw( false );
                                counter++;
                                $("#input_quantity").prop('disabled', true);
                                }else{
                                    alert('Duplicate Product S/N')
                                }
                                }else{
                                    alert('Product S/N Not Exist')
                                }
                                calcTotal()     
                                

                            });
                            
                        }else{
                            alert('Input cannot be empty')
                        }
                        $('#input_barcode').val('');             
                    }   

                                 
                }); 


    
    $( "#product" ).change(function() {
        var product_input;
        $( "#product option:selected" ).each(function() {
        product_input = $( this ).val();
        console.log(product_input)
        
        });

        var data = {
			product_id : product_input
		};

        $.ajax({
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
		data:data,	
		url: "adjustment/stock_product"
		}).done(function(result){
            console.log(result)
            $('#instock_table').text(result)

		});

        });
            });

    function calcTotal(){
        var qty = t
                        .columns( 2 )
                        .data()
                        .eq( 0 )      // Reduce the 2D array into a 1D array of data
                        .sort()       // Sort data alphabetically
                        // .unique()     // Reduce to unique values
                        .join( '\n' )
        var qty = qty.split("\n")
        total = 0;
        qty.forEach(function(value){
            total += parseInt(value);
        });
        $('#adjusting_table').text(total);   

        // 
        let stock = $('#instock_table').text();
        let remain = stock - total;

        $('#remain_table').text(remain || 0) 
    }

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
       
        total = 0;
        //sort to each qty
        for(let x = 0; x < barcode_arr.length;x++){

            post_array.push({
                barcode : barcode_arr[x],
                quantity : qty[x]
            })
            total += qty[x];
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