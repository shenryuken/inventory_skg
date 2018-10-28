@extends('layouts.joli.app')
@section('content')
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>
        <li><a href="#">Order Management</a></li>
        <li><a href="{{ url('inventory/order/sales') }}">Sales Order</a></li>
        <li  class="active">Generate DO</li>
    </ul>
    <!-- END BREADCRUMB --> 
    
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
        <!-- START RESPONSIVE TABLES -->
<!-- form start -->
@if (count($errors) > 0)
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif
@if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
@endif
@if ($message = Session::get('fail'))
    <div class="alert alert-danger">
        <p>{{ $message }}</p>
    </div
@endif
<form class="form-horizontal" id="form" method="post" action="{{ url('inventory/order/delivery/store')}}">
{{ csrf_field() }}
@if($order)
<input type="hidden" name="order_id" value="{{ $order->id }}">
<input type="text" name="order_no" class="hidden" value="{{ isset($order->id) ?  $order->id : "" }}" readonly>   
<input class="hidden" value="{{ isset($order->user->id) ?  $order->user->id : "" }}" readonly>

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
		    <div class="panel-heading ui-draggable-handle">
                    <div class="panel-title-box">
                            <h3><strong>Create Delivery for SO: #{{ isset($order->order_no) ?  $order->order_no : "" }} </strong></h3>
                            <span>Packer's Name: {{ isset(Auth::user()->name) ? Auth::user()->name : Auth::user()->email }} </span>
                        </div>
            </div>

            <div class="panel-body">		 
                    <div class="row">                                        
                            <div class="col-md-4">
                                    <div class="form-group"> 
                                            <label class="col-md-2 control-label">Referer</label>
                                            <div class="col-md-4">
                                                <p class="form-control-static">{{ isset($order->user->username) ?  $order->user->username : "" }}</p>
                                            </div>
                                        </div>
                            </div>

                            <div class="col-md-4">
                                    <div class="form-group"> 
                                            <label class="col-md-2 control-label">Customer</label>
                                            <div class="col-md-4">
                                                <p class="form-control-static">{{ isset($order->name) ?  $order->name : "" }}</p>
                                            </div>
                                        </div>
                            </div>

                            <div class="col-md-4">
                                    <div class="form-group"> 
                                            <label class="col-md-2 control-label">Tel</label>
                                            <div class="col-md-4">                                
                                                <p class="form-control-static">{{ isset($order->contect_no) ?  $order->contect_no : "" }}</p>
                                            </div>
                                        </div>
                            </div>
                    </div>

                   

                    <div class="row">                                        
                            <div class="col-md-4">
                                    <div class="form-group"> 
                                            <label class="col-md-2 control-label">Ship to</label>
                                            <div class="col-md-4">
                                                <p class="form-control-static">{{ isset($order->shipping_address->street1) ?  $order->shipping_address->street1 : ""}},</p>
                                                <p class="form-control-static">{{ isset($order->shipping_address->street2) ?  $order->shipping_address->street2 : "" }},</p>
                                                <p class="form-control-static">{{ isset($order->shipping_address->poscode) ?  $order->shipping_address->poscode : "" }},</p>
                                                <p class="form-control-static">{{ isset($order->shipping_address->city) ?  $order->shipping_address->city : "" }},</p>
                                                <p class="form-control-static">{{ isset($order->shipping_address->state) ?  $order->shipping_address->state : "" }}</p>
                
                                                <input class="hidden" value="{{ $order->ship_address }}" readonly>
                                            </div>
                                        </div>
                            </div>

                            <div class="col-md-4">
                                    <div class="form-group"> 
                                            <label class="col-md-2 control-label">Bill to</label>
                                        <div class="col-md-4">
                                                <p class="form-control-static">{{ isset($order->billing_address->street1) ?  $order->billing_address->street1 : "" }},</p>
                                                <p class="form-control-static">{{ isset($order->billing_address->street2) ?  $order->billing_address->street2 : "" }},</p>
                                                <p class="form-control-static">{{ isset($order->billing_address->poscode) ?  $order->billing_address->poscode : "" }},</p>
                                                <p class="form-control-static">{{ isset($order->billing_address->city) ?  $order->billing_address->city : "" }},</p>
                                                <p class="form-control-static">{{ isset($order->billing_address->state) ?  $order->billing_address->state : "" }}</p>
                                            <input class="hidden" value="{{ isset($order->bill_address) ?  $order->bill_address : "" }}" readonly>
                                        </div>
                                        </div>
                            </div>

                    </div>
    
             </div>

             <div class="panel-heading">   
                    <h3 class="panel-title"><strong>Ordered Items</strong></h3>              
             </div>
             <div class="panel-body scroll" style="height: 150px;"> 
                   
                            
                    @foreach($items as $item)   
                    @if($item->product->type == '1' || $item->product->type == '3')
                    <p>{{ isset($item->product->code) ? $item->product->code : "" }}
                    {{ isset($item->product->name) ? $item->product->name : "" }}
                    x {{ isset($item->product_qty) ? $item->product_qty : "" }}</p>
                    @elseif($item->product->type == '2')   
                        <p>{{ isset($item->product->code) ? $item->product->code : "" }}</p>      
                        <ul>                   
                            @foreach($item->product->packages as $package)
                            <li>{{ isset($package->products->code) ? $package->products->code : "" }}
                                    {{ isset($package->products->name) ? $package->products->name : "" }}
                                    x {{ isset($item->product_qty) ? $item->product_qty : "" }}</li>
                            @endforeach
                        </ul>
                    @endif
                    @endforeach      
                    </div>

                    <div class="panel-heading ui-draggable-handle">
                            <h3 class="panel-title"><strong>Courier</strong></h3>
                          </div>
                          <div class="panel-body">
                            
                                <div class="form-group">
                                  <label class="col-xs-2 control-label">Courier Service</label>
                                  <div class="col-xs-2">
                                      <select class="form-control" name="courier_id">
                                      @foreach($couriers as $courier)
                                      <option value=""></option>
                                        <option value="{{ $courier->id}}">{{ $courier->courier_name }}</option>
                                      @endforeach
                                      </select>
                                  </div>
                                {{-- </div>
                
                                <div class="form-group"> --}}
                                  <label for="inputPassword3" class="col-xs-2 control-label">Consigment Note (C/N)</label>
                
                                  <div class="col-xs-2">
                                    <input class="form-control" name="consignment_note" type="text">
                                  </div>
                                {{-- </div>
                
                                <div class="form-group"> --}}
                                        <label class="col-md-2 control-label">Fee (RM)</label>
                                        <div class="col-md-2">                                    
                                                <input class="form-control" name="shipping_fee" value="{{isset($order->shipping_fee) ?  $order->shipping_fee : ""}}"" type="text">
                                        </div>  
                                </div>
                
                              </div>

                              <div class="panel-heading ui-draggable-handle">
                                    <h3 class="panel-title"><strong>Add Item(s) for delivery</strong></h3>
    
                                  </div>
                              <div class="panel-body">    
                                    <div class="form-horizontal"> 
                                            <div class="form-group">
                                                    <div class="col-md-6">
                                                <p>Please choose either one input.</p>
                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                    <div class="col-md-6">
                                                        <div class="has-success has-feedback">
                                                            <label for="Barcode"><input type="radio" name="optradio" checked class="hidden">Scan Product S/N</label>                        
                                                            <input type="text" class="form-control" id="input_barcode">
                                                            <span class="glyphicon glyphicon-barcode form-control-feedback"></span>
                                                    </div>
                                                    </div>  
                                                </div>
                                                <div class="form-group">  
                                                        <div class="col-md-12" style="background-color:dimgray;color:white;">
                                                        <span >For no S/N products</span> 
                                                        </div>   
                                                </div>
                                        <div class="form-group">  
                                                                              
                                            <div class="col-md-2">    
                                                <label class="col-md-2">Products</label>                                                                            
                                                <select class="form-control select" data-live-search="true" id="input_product">
                                                    @foreach($products as $product)
                                                    <option value="{{$product->code}}" >{{$product->name}}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                            <div class="col-md-2">
                                                    <div class="has-warning">
                                                        <label for="Quantity"><input type="radio" name="optradio" class="hidden">Quantity</label>                        
                                                        <input type="number" class="form-control" id="input_quantity" min="0">
                                                    </div>
                                                </div> 
                                                <div class="col-md-2 push-up-20">                                                   
                                                        <button class="btn btn-primary" id="add_item" type="button"> <i class="fa fa-plus-circle" ></i>
                                                            Add item
                                                            </button>    
                                                </div>
                                        </div>
                                    
                                        <div class="form-group" >                                        
                                                <div class="col-md-12">    
                                    <div class="table-responsive">
                                            <table class="table" id="table_listing">
                                                <thead>
                                                    <tr>
                                                        {{-- <th width="5px"></th> --}}
                                                        <th>Serial Number</th> 
                                                        <th>Product Code</th>
                                                        {{-- <th>Product Name</th> --}}
                                                        <th>Quantity</th>
                                                        <th></th>                                     
                                                                                                    
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                </tbody>
                                            </table>
                                        </div>
                                                </div>
                                        </div>
                                    </div>
                                        <textarea style="resize: none;" class="form-control hidden" name="serial_number_scan_json" id="serial_number_scan_json" >{{ old('serial_number_scan_json') }}</textarea>
                                </div>

                                <div class="panel-footer">
                                        {{-- <button class="btn btn-default">Clear Form</button> --}}
                                        <a href="{{url('/inventory/order/sales')}}" type="button" class="btn btn-default pull-right"> Cancel</a>
                                        <button type="submit" class="btn btn-info pull-right" id="save-btn">Save</button>
                                      </div>
            </div>
    </div>
</div>
</form>
</div>
@else
<div class="page-content-wrap">
                
        <div class="row">
            <div class="col-md-12">

                <div class="error-container">
                    <div class="error-code">Order not found</div>
                    <div class="error-text"></div>
                    <div class="error-subtext">Kindly check the order exist or not.</div>
                    <div class="error-actions">                                
                        <div class="row">
                            <div class="col-md-6">
                                <div class="btn btn-info btn-block btn-lg" onClick="document.location.href = '{{ url("inventory/order/sales") }}';">Back to dashboard</div>
                            </div>
                            <div class="col-md-6">
                                <div class="btn btn-primary btn-block btn-lg" onClick="history.back();">Previous page</div>
                            </div>
                        </div>                                
                    </div>
                </div>

            </div>
        </div>
        
                                                            
    </div>                
    <!-- END PAGE CONTENT WRAPPER -->   
@endif

      <div class="alert" role="alert" id="result"></div>

@endsection
{{-- page level scripts --}}
@section('footer_scripts')
 <script type='text/javascript' src="{{ asset('themes/Joli/js/plugins/icheck/icheck.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>
    
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/tableExport.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jquery.base64.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/html2canvas.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/sprintf.js') }}"></script>
	<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/jspdf.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/base64.js') }}"></script> 
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-select.js') }}"></script>

    
<script  type="text/javascript" >
$(document).ready(function() {
    $(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });

    //Init datatable
    window.t = $('#table_listing').DataTable({
        "bLengthChange": false,
        "searching":false,
        "columnDefs": [
                        { "orderable": false, "targets": [0,1,2,3] }
                        ]
    });
    //init counter
    window.counter = 1;


    //deletion
    $('#table_listing tbody').on( 'click', '.glyphicon-remove-sign', function () {
        t
            .row( $(this).parents('tr') )
            .remove()
            .draw();
            getSerialNumber()
    } );

    //redraw
    if($('#serial_number_scan_json').val() !== ""){
        var json_serial = JSON.parse($('#serial_number_scan_json').val()); 
        if(json_serial.length > 1 && json_serial[0].barcode != ""){
            json_serial.reverse(); 
            for(var x=0;x<json_serial.length;x++)
            {
                t.row.add( [
                        // counter,
                        json_serial[x].barcode,
                        json_serial[x].product_code,
                        json_serial[x].quantity,
                        ' <span class="glyphicon glyphicon-remove-sign" style="color:red;"></span>'
                    ] ).draw( false );
                    counter++;
            }            
        }
    }
    
    
    //quantity
    $("#input_quantity__").keyup(function(event) {
                    if (event.keyCode === 13 || event.keyCode === 116) {
                        var input = $('#input_quantity').val();

                        if(input!=''){
                            
                            
                                t.row.add( [
                                    counter,
                                    "",
                                    input,
                                    "",
                        "",
                                    ' <span class="glyphicon glyphicon-remove-sign" style="color:red;"></span>'
                                ] ).draw( false );
                                counter++;
                                $("#input_barcode").prop('disabled', true);
                            
                        }else{
                            alert('Input cannot be empty')
                        }
                        $('#input_quantity').val('');             
                    }                     
    });

    $("#add_item").on('click',function() {
                        t.row.add( [
                                    "",
                                    $('#input_product').val(),
                                    $('#input_quantity').val(),                                    
                                    ' <span class="glyphicon glyphicon-remove-sign" style="color:red;"></span>'
                                ] ).draw( false );
    })

    //barcode
    $("#input_barcode").keyup(function(event) {
                    if (event.keyCode === 13 || event.keyCode === 116) {
                        var input = $('#input_barcode').val();

                        if(input!=''){
                            if(checkIfArrayIsUnique(input) == true){
                                $.ajax({
                            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            data:{barcode:input},	
                            url: "{{url('inventory/stock/adjustment/check_barcode')}}"
                            }).done(function(result){
    
                                if(result.status == "01"){
                                //    inputcode.val(result.serial_number)
                                t.row.add( [
                                    result.serial_number,
                                    result.product_code,
                                    // result.product_name,
                                    1,
                                    ' <span class="glyphicon glyphicon-remove-sign" style="color:red;"></span>'
                                ] ).draw( false );
                                counter++;
                                }else{
                                    alert('Product S/N Not Exist')
                                    
                                }                                

                            });                                
                                counter++;
                            }else{
                                alert('Duplicate Serial Number')
                            }
                        }else{
                            alert('Input cannot be empty')
                        }
                        $('#input_barcode').val('');             
                    }                     
                }); 
            

    function checkIfArrayIsUnique(input) {        
        var myArray = getSerialNumber();
        //clean without blank 
        var noBlankArray = [];
        for(var x=0;x<myArray.length;x++)
        {
            if(myArray[x].barcode_arr  != "")
            noBlankArray.push({
                barcode : myArray[x].barcode_arr,
                quantity : myArray[x].qty,
                product_code : myArray[x].product_code
            })
        }
        noBlankArray.push(input)        
        return noBlankArray.length === new Set(noBlankArray).size;
    }

    function getSerialNumber(){
        
        var data = t
                        .columns( 0 )
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
        
        var product_code = t
                        .columns( 1 )
                        .data()
                        .eq( 0 )      // Reduce the 2D array into a 1D array of data
                        .sort()       // Sort data alphabetically
                        // .unique()     // Reduce to unique values
                        .join( '\n' )

        var barcode_arr = data.split("\n")
        var qty = qty.split("\n")
        var product_code = product_code.split("\n")
        var post_array = [];
        
        //sort to each qty
        for(let x = 0; x < barcode_arr.length;x++){
            post_array.push({
                barcode : barcode_arr[x],
                quantity : qty[x],
                product_code : product_code[x]
            })
        }
		$('#serial_number_scan_json').val(JSON.stringify(post_array));		
		return barcode_arr;
    }

    $(document).on('click','#save-btn',function(){
        getSerialNumber();
        $('#form').submit();
        
    })

});

</script>

@stop
