@extends('layouts.joli.app')
@section('title','Config - Stock Adjustment')
<?php
# Create by: Bhaihaqi		2018-02-18 Monday
# Modify by: Bhaihaqi		2018-02-22 Friday
?>
@section('content')
<style>
	select{cursor:pointer;}
	.required{ color: #ff0000;}
	.font-orange{ color: #ff9900 }
	.font-darkblue{ color: #6666ff }
	.bold{ font-weight: bold;}
</style>
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
	<li><a href="{{ url('home') }}">Home</a></li>                    
	<li><a href="{{ url('inventory/setting/stockadjustment') }}">Config - Stock Adjustment</a></li>
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
					<h3 class="panel-title">Setting - Stock Adjustment Type</h3>
					<div class="actions pull-right">
						<a href="javascript:;" class="btn btn-default  btn-sm btn-circle addnewadjustment" title="Add New Stock Adjustment" >
					<i class="fa fa-plus"></i> New Stock Adjustment Type</a>
					</div>
				</div>
				<div class="panel-body panel-body-table">
					<form id="form_search" class="form-horizontal" method="POST" action="{{ url('inventory/setting/stockadjustment/form_search') }}" >
						{{ csrf_field() }}
						<div class="panel-body">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-3 control-label"> Search </label>
										<div class="col-md-9">        
											<input type="text" class="form-control adjustment-search" name="search" 
											placeholder=" Adjustment / Remarks " value="{{ isset($search) ? $search : '' }}" />									
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="col-md-4 control-label"> Status </label>
										<div class="col-md-8">        
											<select class="form-control adjustment-status" name="search_status" >
												<option value=""> All </option>
												<option value="1" {{ isset($search_status) && $search_status == '1' ? "selected" : "" }}> Active </option>
												<option value="0" {{ isset($search_status) && $search_status == '0' ? "selected" : "" }}> Inactive </option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-1">
									<button type="submit" class="btn btn-primary">Search</button>
								</div>
								<div class="col-md-1">
									<a href="{{ url('inventory/setting/stockadjustment') }}" class="btn btn-danger">Reset</a>
								</div>
							</div>
						</div>
					</form>
					<div class="panel-body">
					&nbsp; Total Stock Adjustment type: <b>{{ $countadjustment }}</b>
					<div class="table-responsive">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th ></th>
									<th class="col-md-3">Adjustment</th>
									<th class="col-md-4">Remarks</th>
									<th class="col-md-1 text-center">Status</th>
									<th class="col-md-1 text-center">Operator</th>
									<th class="col-md-3">Created at</th>
									<th ></th>
									<th ></th>
								</tr>
							</thead>
							<tbody>
							@if(count($adjustmentArr) > 0)
								
								@foreach($adjustmentArr->all() as $key => $row)
									<?php
										$rowarr = array('selectid' => $row->id,'search' => Request::segment(4));
										$base64data = trim(base64_encode(serialize($rowarr)), "=.");
									?>
									<tr>
										<td>{{ $key + $adjustmentArr->firstItem() }}</td>
										<td>{{ $row->adjustment }}</td>
										<td>{{ $row->remarks }}</td>										
										<td class="text-center"><?php echo isset($status[$row->status]) ? $status[$row->status] : 'Active'; ?></td>
										<td class="text-center"><?php echo isset($OperatorArr[$row->operation]) ? $OperatorArr[$row->operation] : ''; ?></td>
										<td>{{ !in_array($row->created_at, array('0000-00-00','','null')) ? date('d/m/Y, h:i A', strtotime($row->created_at)) : '' }}</td>
										<td class="text-center">
											<a href="javascript:;" data-base64="{{ $base64data }}" data-adjustment="{{ $row->adjustment }}"
												data-remarks="{{ $row->remarks }}" data-status="{{ $row->status }}" data-operator="{{ $row->operation }}"
											title=" Edit {{ $row->adjustment }}"
											class="editadjustment" ><span class="fa fa-edit text-info"></span></a>
										</td>
										<td class="text-center">
											<a href="javascript:;" data-base64="{{ $base64data }}" data-adjustment="{{ $row->adjustment }}"
											title=" Remove {{ $row->adjustment }}"
											class="confirm-delete" ><span class="glyphicon glyphicon-trash text-danger"></span></a>
										</td>
									</tr>
								@endforeach
							@else
							<tr>
								<td colspan="9" class="text-center"> No Data Found <br />
								<a href="javascript:;" class="addnewadjustment"><span class="fa fa-plus"></span> New Stock Adjustment</a></td>
							</tr>
							@endif
							</tbody>
						</table>
					</div>
					{{ $adjustmentArr->links() }}
					</div>
				</div>
			</div>                                                

		</div>
	</div>
	<!-- END RESPONSIVE TABLES -->
	
	<!-- Modal -->
	<div class="modal fade" id="adjusmentModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">setting - Stock Adjustment Form</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<form id="submit_form" class="form-horizontal" method="POST" action="{{ url('inventory/setting/stockadjustment/save') }}" >
								{{ csrf_field() }}
								<input type="hidden" class="form-control base64" name="base64" value="" />
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-md-3 control-label"> Adjustment type<span class="required">*</span></label>
										<div class="col-md-9">								
											<input type="text" class="form-control adjustment" name="adjustment" value="" />
										</div>
									</div>
								</div>
								<br /> &nbsp;
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-md-3 control-label"> Remarks </label>
										<div class="col-md-9">        
											<input type="text" class="form-control remarks" name="remarks" value="" />
										</div>
									</div>
								</div>
								<br /> &nbsp;
								<div class="col-md-12">
										<div class="form-group">
											<label class="col-md-3 control-label"> Operator </label>
											<div class="col-md-9">        
												<select class="form-control operator" name="operator" >
													<option value="-" > Minus </option>
													<option value="+" > Add </option>
												</select>
											</div>
										</div>
									</div>
									<br /> &nbsp;
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-md-3 control-label"> Status </label>
										<div class="col-md-9">        
											<select class="form-control status" name="status" >
												<option value="1" > Active </option>
												<option value="0" > Inactive </option>
											</select>
										</div>
									</div>
								</div>
								<br /> &nbsp;
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-md-3 control-label"></label>
										<div class="col-md-9">        
											
										</div>
									</div>
								</div>
							
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary submit-button btn-block">Save</button>
				</div>
			</form>
			</div>
		</div>
	</div>

</div>
<!-- END PAGE CONTENT WRAPPER --> 
@stop
{{-- page level scripts --}}
@section('footer_scripts')
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/jquery.noty.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/layouts/topCenter.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/layouts/topLeft.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/layouts/topRight.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/themes/default.js') !!}" ></script>
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/jquery-validation/jquery.validate.js') !!}" ></script> 
<script>
var jvalidate = $("#submit_form").validate({
	errorPlacement: function(error,element) { return true;},
	ignore: [],
	rules: { adjustment: { required: true,},}
});
$(function() {
	$('.table').on('click', '.confirm-delete', function(){
		var base64data = $(this).data('base64');
		var adjustment = $(this).data('adjustment');
		noty({
			text: 'Are you sure to remove <br /> ' + adjustment + ' ?',
			layout: 'topRight',
			buttons: [
					{addClass: 'btn btn-success btn-clean', text: 'Ok', onClick: function($noty) {
						$noty.close();
						window.location.href = "{{ url('inventory/setting/stockadjustment/delete') }}/" + base64data;
					}
					},
					{addClass: 'btn btn-danger btn-clean', text: 'Cancel', onClick: function($noty) {
						$noty.close();
						}
					}
				]
		})
	});
	
	$('body').on('click', '.addnewadjustment', function(){
		// set new 
		$('#adjusmentModal').find('.base64').val('');
		$('#adjusmentModal').find('.adjustment').val('');
		$('#adjusmentModal').find('.remarks').val('');
		$('#adjusmentModal').find('.operator').val('');
		$('#adjusmentModal').find('.status').val('1');
		$('#adjusmentModal').find('.submit-button').html('Submit');
		
		$('#adjusmentModal').modal('show');
	});
	
	$('body').on('click', '.editadjustment', function(){
		$('#adjusmentModal').find('.base64').val($(this).data('base64'));
		$('#adjusmentModal').find('.adjustment').val($(this).data('adjustment'));
		$('#adjusmentModal').find('.operator').val($(this).data('operator'));
		$('#adjusmentModal').find('.remarks').val($(this).data('remarks'));
		$('#adjusmentModal').find('.status').val($(this).data('status'));
		$('#adjusmentModal').find('.submit-button').html('Save');
		
		$('#adjusmentModal').modal('show');
	});
});
</script>
@stop