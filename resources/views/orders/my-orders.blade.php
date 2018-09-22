@extends('layouts.joli.app')
{{-- Page title --}}
@section('title')
	Orders List
	@parent
@stop

<?php $page_title = 'Orders List'; ?>
@section('content')
<div class="row">
	@if (count($errors) > 0)
	<div class="col-md-12" style="">
		<div class="alert alert-danger">
			<ul>
				@foreach ($errors->all() as $error)
				<li>{{ $error }}</li>
				@endforeach
			</ul>
		</div>
	</div>
	@endif
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Orders List
				<div class="btn-group pull-right">
                    <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                    <ul class="dropdown-menu">
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/json.png') }}" width="24"/> JSON</a></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false',ignoreColumn:'[2,3]'});"><img src="{{ asset('themes/Joli/img/icons/json.png') }}" width="24"/> JSON (ignoreColumn)</a></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'true'});"><img src="{{ asset('themes/Joli/img/icons/json.png')}}" width="24"/> JSON (with Escape)</a></li>
                        <li class="divider"></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'xml',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/xml.png') }}" width="24"/> XML</a></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'sql'});"><img src="{{ asset('themes/Joli/img/icons/sql.png') }}" width="24"/> SQL</a></li>
                        <li class="divider"></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'csv',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/csv.png') }}" width="24"/> CSV</a></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'txt',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/txt.png') }}" width="24"/> TXT</a></li>
                        <li class="divider"></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'excel',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/xls.png') }}" width="24"/> XLS</a></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'doc',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/word.png')}}" width="24"/> Word</a></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'powerpoint',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/ppt.png') }}" width="24"/> PowerPoint</a></li>
                        <li class="divider"></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'png',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/png.png') }}" width="24"/> PNG</a></li>
                        <li><a href="#" onClick ="$('#customers2').tableExport({type:'pdf',escape:'false'});"><img src="{{ asset('themes/Joli/img/icons/pdf.png') }}" width="24"/> PDF</a></li>
                    </ul>
                </div>        
			</div>
			<div class="panel-body">

                <div class="col-md-3" style="margin-bottom: 10px;">
                    <p><span id="form-title"> Mall Type </span></p>
                    <div class="form-group">
                        <div class="col-md-12" id="">        
                            <select class="form-control mall-type">
                                <option value="SKG_STORE" >SKG Mall</option>
                                <option value="AGENT_STORE" >Agent Mall</option>
                            </select>
                        </div>
                    </div>
                </div>   
                            
				<table id="customer2" class="table datatable">
					<thead>
						<!-- <tr>
							<th>No.</th>
							<th>Order By {{-- Username --}}</th>
							<th>Invoice No</th>
							<th>DO No</th>
							<th>Status</th>
							<th>Date</th>
							<th>Action</th>
						</tr> -->
						<tr>
							<th>No.</th>
							<!-- <th hidden>Id</th> -->
							<th>Order No.</th>
							<th>Invoice No.</th>
							<th>Total Items</th>
							<th>Total Price</th>
							<th>Delivery Type</th>
							<th>Purchase Date</th>
							<th>Status</th>
							<th>View Status</th>
							<!-- <th hidden></th> -->
						</tr>
					</thead>
					<tbody id="list-item">
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
@endsection
{{-- page level scripts --}}
@section('footer_scripts')
<!-- START SCRIPTS -->
   
    <!-- START THIS PAGE PLUGINS-->        
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

		var t = $('.datatable').DataTable();
		var baseUrl = window.location.origin;

		$(document).ready(function(){

			// console.log($('.mall-type').val());
			var mall_type = $('.mall-type').val()

			fn_get_order_list(mall_type);

		});

		

		// $('.view-status').click(function(){
		// 	// var order_no = $(this).closest('tr').eq(0).find('td').eq(2).text();
		// 	var order_no = $(this).data('code');
		// 	window.location.href = "{{ url('shop/get-delivery-status') }}"+"/"+order_no;
		// });


		 $('.mall-type').on('change',function(){

		 	// console.log($(this).val());
		 	var mall_type = $(this).val();
		 	fn_get_order_list(mall_type);
		 })

		function fn_get_order_list(mall_type){

			// console.log(mall_type)
			// window.location.href = "url('orders/my-orders-list')/"+mall_type;
			// var t = $('.datatable').DataTable();
			var data = {

				data : mall_type
			};

			$.ajax({

	            url     : baseUrl+"/orders/my-orders-list",
	            type    : "GET",
	            data    : data,
	            dataType: "json",

	        }).done(function(response){

	        	console.log(response);

	        	var data = response.orders;
	        	var tag = "";
	        	t.clear().draw();
	        	if(data != ""){
	        		for(var i=0; i<data.length; i++){

	        			// tag += "<tr>";
	        			// tag += "<td>"+(i+1)+"</td>";
	        			// tag += "<td hidden>"+data[i].agent_id+"</td>";
	        			// tag += "<td>"+data[i].order_no+"</td>";
	        			// tag += "<td>"+data[i].invoice_no+"</td>";
	        			// tag += "<td>"+data[i].total_items+"</td>";
	        			// tag += "<td>RM"+data[i].total_price+"</td>";
	        			// tag += "<td>"+data[i].type_description+"</td>";
	        			// tag += "<td>"+data[i].purchase_date+"</td>";
	        			// tag += "<td>"+data[i].description+"</td>";
	        			// tag += "<td><a href='javascript:;' title='view status' data-code='"+data[i].order_no+"'class='btn btn-primary btn-rounded view-status'><span class='fa fa-eye'></span></a></td>";
	        			// tag += "</tr>";
	        			t.row.add([
                            (i+1),
                            // data[i].agent_id,
                            data[i].order_no,
                            data[i].invoice_no,
                            data[i].total_items,
                            "RM"+data[i].total_price,
                            data[i].type_description,
                            data[i].purchase_date,
                            data[i].description,
                            "<a href='javascript:;' title='view status' data-code='"+data[i].order_no+"'class='btn btn-primary btn-rounded' id='view-status'><span class='fa fa-eye'></span></a>"
                        ]).draw(false);
	        		}
	        	}

	        	$('tbody#list-item').html(tag);
	        	// console.log(tag)
	        	t.draw()

	        }).fail(function(response){

	        })
		}

		// $('#view-status').click(function(){
		// 	// var order_no = $(this).closest('tr').eq(0).find('td').eq(2).text();
		// 	var order_no = $(this).data('code');
		// 	console.log(order_no);
		// 	window.location.href = "{{ url('shop/get-delivery-status') }}"+"/"+order_no;
		// });

		$('.datatable tbody').on('click','a', function () {

			// console.log($(this).closest('tr'))
	        // var data = t.cells().data();
	        // alert( data[0] +"'s salary is: "+ data[ 5 ] );
	        // console.log($(this).closest('tr').parents().find('#view-status').data('code'))
	        console.log($(this).data('code'))
	        // console.log(data)

	        var order_no = $(this).data('code');
	        window.location.href = "{{ url('shop/get-delivery-status') }}"+"/"+order_no;
	    } );

	</script>       
    <!-- END THIS PAGE PLUGINS-->  

    <!-- END SCRIPTS -->       
@stop