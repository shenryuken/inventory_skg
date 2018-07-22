@extends('layouts.joli.app')
<?php $page_title = 'Process Order'; ?>
@section('content')

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
<input type="hidden" name="order_id" value="{{ $order->id }}">
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
		    <div class="panel-heading ui-draggable-handle">
		      <h3 class="panel-title"><strong>Delivery Pick-Up</strong></h3>
            </div>

            <div class="panel-body">		    	
                    <div class="form-group">
                      <label class="col-xs-2 control-label">Order No.</label>
                      <div class="col-xs-4">
                            <p class="form-control-static">{{ $order->order_no }}</p>
                          <input type="text" name="order_no" class="hidden" value="{{ $order->order_no }}" readonly>
                      </div>
                    </div>
    
                    <div class="form-group">
                            <label class="col-xs-2 control-label">Customer</label>
                            <div class="col-xs-4">
                                <p class="form-control-static">{{ $order->user->username }}</p>
                                <input class="hidden" value="{{ $order->user->id }}" readonly>
                            </div>
                    </div>

                    <div class="form-group">
                            <label class="col-xs-2 control-label">Shipping to</label>
                            <div class="col-xs-4">
                                <p class="form-control-static">{{ $order->shipping_address->street1 }},</p>
                                <p class="form-control-static">{{ $order->shipping_address->street2 }},</p>
                                <p class="form-control-static">{{ $order->shipping_address->poscode }},</p>
                                <p class="form-control-static">{{ $order->shipping_address->city }},</p>
                                <p class="form-control-static">{{ $order->shipping_address->state }}</p>

                                <input class="hidden" value="{{ $order->ship_address }}" readonly>
                            </div>
                    </div>

                    <div class="form-group">
                            <label class="col-xs-2 control-label">Billing to</label>
                            <div class="col-xs-4">
                                    <p class="form-control-static">{{ $order->billing_address->street1 }},</p>
                                    <p class="form-control-static">{{ $order->billing_address->street2 }},</p>
                                    <p class="form-control-static">{{ $order->billing_address->poscode }},</p>
                                    <p class="form-control-static">{{ $order->billing_address->city }},</p>
                                    <p class="form-control-static">{{ $order->billing_address->state }}</p>
                                <input class="hidden" value="{{ $order->bill_address }}" readonly>
                            </div>
                    </div>
    
             </div>
		    <div class="panel-body">

                <table class="table">
                    <thead>
                        <tr>
                            <th>
                                Item
                            </th>
                            <th>
                                Barcode
                            </th>
                            <th>
                                Quantity
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                            @foreach($items as $item)    
                            {{-- @for($x = 0; $x<$item->product_qty; $x++) --}}
                        <tr>
                            <td>
                                    {{ $item->products->name }}
                                <input type="hidden" name="item_id[]" value="{{ $item->products->id }}">
                            </td>
                            <td>
                                    <textarea class="form-control input_barcode" name="serial_no[]" >{{ old('serial_no[]') }}</textarea>
                            </td>
                            <td>
                                    <input class="form-control" name="quantity[]" value="{{ $item->product_qty }}" type="text">
                            </td>
                        </tr>
                            {{-- @endfor --}}
                            @endforeach
                    </tbody>
                </table>
	        <!-- /.box-body -->
	    	</div>
   		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
		    <div class="panel-heading ui-draggable-handle">
		      <h3 class="panel-title"><strong>Courier</strong></h3>
		      <ul class="panel-controls">
		        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
		      </ul>
            </div>
            
		    <div class="panel-body">
		    	
                <div class="form-group">
                  <label class="col-xs-2 control-label">Courier Service</label>
                  <div class="col-xs-4">
	                  <select class="form-control" name="courier_id">
	                  @foreach($couriers as $courier)
	                    <option value="{{ $courier->id}}">{{ $courier->courier_name }}</option>
	                  @endforeach
	                  </select>
	              </div>
                </div>

                <div class="form-group">
                  <label for="inputPassword3" class="col-xs-2 control-label">Consigment Note</label>

                  <div class="col-xs-4">
                    <input class="form-control" name="consignment_note" type="text">
                  </div>
                </div>

              </div>
              <div class="panel-footer">
	        {{-- <button class="btn btn-default">Clear Form</button> --}}
	       	<button type="submit" class="btn btn-default pull-right">Cancel</button>
            <button type="submit" class="btn btn-info pull-right">Save</button>
	      </div>
          </div>
          
	</div>
</div>
</form>
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


            $(".input_barcode").keyup(function(event) {
                if (event.keyCode === 13 || event.keyCode === 116) { 
                var inputcode = $(this);                   
                var value = $(this).val()
                //ajax
                let split_value = value.split(/\n/);
                let input = split_value[split_value.length-2]
                if(input != ''){
                    $.ajax({
                            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                            data:{barcode:input},	
                            url: "{{url('inventory/stock/adjustment/check_barcode')}}"
                            }).done(function(result){
                                console.log(result)
                                if(result.status == "01"){
                                   
                                }else{
                                    alert('Barcode Not Exist')
                                    if(split_value.length >= 3){
                                        inputcode.val(split_value[split_value.length-3])
                                    }else{
                                        inputcode.val("");
                                    }
                                    
                                }                                

                            });
                }
                
                console.log(split_value)
                event.preventDefault();
                }                     
            });



});

</script>

@stop