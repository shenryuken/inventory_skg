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
<form class="form-horizontal" method="post" action="{{ url('orders/process')}}">
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
                          <input type="text"  class="hidden" value="{{ $order->order_no }}" readonly>
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
                            @for($x = 0; $x<$item->product_qty; $x++)
                        <tr>
                            <td>
                                    {{ $item->products->name }}
                                <input type="hidden" name="item_id[]" value="{{ $item->products->id }}">
                            </td>
                            <td>
                                    <input class="form-control" name="serial_no[]" value="" type="text">
                            </td>
                            <td>
                                    <input class="form-control" name="quantity[]" value="1" type="text">
                            </td>
                        </tr>
                        @endfor
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