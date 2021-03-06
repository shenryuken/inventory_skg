@extends('layouts.joli.app')
@section('title','Product Listing')

@section('content')
<style>
	select{cursor:pointer;}
	.table-hover2 tr:hover{ background-color:red !important;}
	.font-orange{ color: #ff9900 }
	.font-darkblue{ color: #6666ff }
	.bold{ font-weight: bold;}
</style>
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
	<li><a href="{{ url('home') }}">Home</a></li>                    
	<li><a href="{{ url('inventory/product/listing') }}">Product Listing</a></li>
</ul>
<!-- END BREADCRUMB -->                       

<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
	 <!-- START RESPONSIVE TABLES -->
	@if(session("info"))
		<div class="row"><div class="col-sm-12">
			<div class="alert alert-success">
				<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				{{ session("info") }}
			</div>
		</div></div>
	@endif
	@if(session("errorid"))
		<div class="row"><div class="col-sm-12">
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				{{ session("errorid") }}
			</div>
		</div></div>
	@endif
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">

				<div class="panel-heading">
					<h3 class="panel-title">Product Listing</h3>
					<div class="actions pull-right">
						<a href="{{ url('inventory/product/package_form') }}" class="btn btn-default  btn-sm btn-circle" title="Add New Product" >
							<i class="fa fa-plus"></i> Product Package </a>
						<a href="{{ url('inventory/product/form') }}" class="btn btn-default  btn-sm btn-circle" title="Add New Product" >
							<i class="fa fa-plus"></i> Product </a>
					</div>
				</div>
				<div class="panel-body panel-body-table">
					<form id="form_search" class="form-horizontal" method="POST" action="{{ url('inventory/product/form_search') }}" >
						{{ csrf_field() }}
						<div class="panel-body">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label class="col-md-2 control-label"> Search </label>
										<div class="col-md-10">        
											<input type="text" class="form-control product-code" name="search" 
											placeholder=" Code / Name " value="{{ isset($search) ? $search : '' }}" />									
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="col-md-4 control-label"> Type </label>
										<div class="col-md-8">        
											<select class="form-control product-type" name="type" >
												<option value=""> All </option>
												<option value="1" {{ isset($type) && $type == 1 ? "selected" : "" }}> Product Item </option>
												<option value="2" {{ isset($type) && $type == 2 ? "selected" : "" }}> Product Package </option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="col-md-4 control-label"> Category </label>
										<div class="col-md-8">        
											<select class="form-control product-category" name="category" >
												<option value=""> All </option>
												@if(count($categoryArr) > 0)
													@foreach($categoryArr as $categoryid => $categoryname)
														<option value="{{ $categoryid }}" {{ isset($category) && $category == $categoryid ? "selected" : "" }}>{{ $categoryname }}</option>
													@endforeach
												@endif
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<button type="submit" class="btn btn-primary" style="padding: 4px 8px;">Search</button>
									<a href="{{ url('inventory/product/listing') }}" class="btn btn-danger" style="padding: 4px 8px;">Reset</a>
								</div>
							</div>
						</div>
					</form>
					<div class="panel-body">
					&nbsp; Total Product: <b>{{ $countproduct }}</b>
					<div class="table-responsive">
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr>
									<th ></th>
									<th class='text-center'>Id</th>
									<th class="col-md-1">Code</th>
									<th class="col-md-5">Name</th>
									<th class="text-center col-md-1">Type</th>
									<th class="col-md-2">Category</th>
									<th class="text-center col-md-1">Status</th>
									<th ></th>
									<th ></th>
									<th ></th>
								</tr>
							</thead>
							<tbody>
							@if(count($productArr) > 0)
								
								@foreach($productArr->all() as $key => $row)
									<?php
										$rowarr = array('delete' => 'product','deleteid' => $row->id,'search' => Request::segment(3));
										$base64data = trim(base64_encode(serialize($rowarr)), "=.");
									?>
									<tr>
										<td class='text-center'>{{ $key + $productArr->firstItem() }}</td>
										<td class='text-center'>{{ $row->id }}</td>
										<td>
											<a href="{{ url('inventory/product/view/' . $row->id) }}" 
											title=" View {{ $row->code.' ('.$row->name.')' }}"
											class="">{{ $row->code }}</a>
										</td>
										<td>
											<a href="{{ url('inventory/product/view/' . $row->id) }}" 
											title=" View {{ $row->code.' ('.$row->name.')' }}"
											class="">{{ $row->name }}</a>
										</td>
										<td class='text-center'><?php echo isset($typeArr[$row->type]) ? $typeArr[$row->type] : ''; ?></td>
										<td>{{ isset($categoryArr[$row->category]) ? $categoryArr[$row->category] : '' }}</td>
										<td class='text-center'><?php echo isset($statusArr[$row->status]) ? $statusArr[$row->status] : ''; ?></td>
										<td class="text-center">
											<a href="{{ url('inventory/product/view/' . $row->id) }}" 
											title=" View {{ $row->code.' ('.$row->name.')' }}"
											class=""><span class="fa fa-eye text-secondary"></span></a>
										</td>
										<td class="text-center">
											<a href="{{ url('inventory/product/edit/' . $row->id) }}" 
											title=" Edit {{ $row->code.' ('.$row->name.')' }}"
											class="" ><span class="fa fa-edit text-info"></span></a>
										</td>
										<td class="text-center">
											<a href="javascript:;" data-base64="{{ $base64data }}" data-code="{{ $row->code }}" data-name="{{ $row->name }}"
											title=" Remove {{ $row->code.' ('.$row->name.')' }}"
											class="confirm-delete" ><i class="glyphicon glyphicon-trash text-danger"></i></a>
										</td>
									</tr>
								@endforeach
							@else
							<tr>
								<td colspan="10" class="text-center"> No Data Found <br />
								<a href="{{ url('inventory/product/form') }}"><span class="fa fa-plus bold"></span> Add new product</a></td>
							</tr>
							@endif
							</tbody>
						</table>
					</div>
					{{ $productArr->links() }}
					</div>
				</div>
			</div>                                                

		</div>
	</div>
	<!-- END RESPONSIVE TABLES -->

</div>
<!-- /.row -->
@stop
{{-- page level scripts --}}
@section('footer_scripts')
<!-- END PAGE CONTENT WRAPPER -->  
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/jquery.noty.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/layouts/topCenter.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/layouts/topLeft.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/layouts/topRight.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/themes/default.js') !!}" ></script>

<script>
$(function() {
	$('.table').on('click', '.confirm-delete', function(){
		var base64data = $(this).data('base64');
		var code = $(this).data('code');
		var name = $(this).data('name');
		noty({
			text: 'Are you sure to remove <br /> ' + code + ' ( ' + name + ' ) ?',
			layout: 'topRight',
			buttons: [
					{addClass: 'btn btn-success btn-clean', text: 'Ok', onClick: function($noty) {
						$noty.close();
						window.location.href = "{{ url('inventory/product/delete') }}/" + base64data;
					}
					},
					{addClass: 'btn btn-danger btn-clean', text: 'Cancel', onClick: function($noty) {
						$noty.close();
						}
					}
				]
		})
	});
});
</script>
@stop