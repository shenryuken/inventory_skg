<?php 
# Create by: Bhaihaqi		2018-02-27
# Modify by: Bhaihaqi		2018-02-28
if(isset($id) && $id > 0){
	// $wm_gst = $wm_aftergst = $em_gst = $em_aftergst = $staff_gst = $staff_aftergst = 0;
	// if($price_wm > 0){
		// $wm_gst = ($price_wm / 100) * $gstpercentage;
		// $wm_aftergst = $price_wm + $wm_gst;
	// }
	// if($price_em > 0){
		// $em_gst = ($price_em / 100) * $gstpercentage;
		// $em_aftergst = $price_em + $em_gst;
	// }
	// if($price_staff > 0){
		// $staff_gst = ($price_staff / 100) * $gstpercentage;
		// $staff_aftergst = $price_staff + $staff_gst;
	// }
}
?>

@extends('layouts.joli.app')
@section('title','Promotion: ' . $description)
@section('content')
<style>
	.panel-heading{ background-color: #ccffe6 !important; }
	.btn-default{ background-color: #99ffcc !important; }
	.btn-default:hover{ background-color: #80ffbf !important; }
	.bold{ font-weight: bold;}
</style>
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
	<li><a href="{{ url('home') }}">Home</a></li>                    
	<li ><a href="{{ url('inventory/product/promotion/listing') }}">Promotion Listing</a></li>
	<li class="active"> Promotion View </li>
</ul>
<!-- END BREADCRUMB -->
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
	@if(session("info"))
		<div class="row"><div class="col-sm-12">
			<div class="alert alert-success">
				<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				{{ session("info") }}
			</div>
		</div></div>
	@endif
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title"><strong>Promotion</strong> View </h3>
					<ul class="panel-controls">
					</ul>
					<?php if(isset($id) && $id > 0){ ?>
					<div class="actions pull-right">
					<a href="{{ url('inventory/product/promotion/form') }}" class="btn btn-default  btn-sm btn-circle" title="Add New Product" >
						<i class="fa fa-plus"></i> Product Promotion </a>
					<a href="{{ url('inventory/product/promotion/edit/' . $id) }}" class="btn btn-default  btn-sm btn-circle">
						<i class="fa fa-pencil"></i> Edit </a>
					</div>
					<?php } ?>
				</div>
				<div class="panel-body form-horizontal">
					<div class="row">
						<div class="col-md-12">
							<h3> Details </h3>
							<hr />
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label class="col-md-3 control-label"> Product / Package </label>
								<div class="col-md-7 control-label text-left">
								<a href="{{ url('inventory/product/view/' . $product_id) }}" class="" title="View Promotion {{ $productArr['code'] . ' (' . $productArr['description'] . ')' }}" >
								{{ $productArr['code'] . ' (' . $productArr['name'] . ')' }}</a>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label"> Description </label>
								<div class="col-md-7 control-label text-left">
									{{ $description }}
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label"> Status </label>
								<div class="col-md-7 control-label text-left">
									<?php echo isset($statusArr[$status]) ? $statusArr[$status] : ''; ?>
								</div>
							</div>
							<div class="form-group promotion">
								<label class="col-md-3 control-label"> Datetime Promotion </label>
								<div class="col-md-7 control-label text-left">
									{{ date('d/m/Y h:i A', strtotime($start)) . ' &nbsp; - &nbsp; '. date('d/m/Y h:i A', strtotime($end)) }}
								</div>
							</div>
						</div>
					</div>
					<br /> &nbsp;
					<div class="row">
						<div class="col-md-12">
							<h3> Gift </h3>
							<hr />
						</div>
						<div class="col-md-12">
							<table class="table table-striped">
								<thead>
									<tr>
										<th class="text-center">#</th>
										<th class="col-md-5"> Product Gift </th>
										<th class="col-md-2"> Quantity</th>
										<th class="col-md-4"> Description </th>
									</tr>
								</thead>
								<tbody class="tbody-gift">
									
									@if(isset($gift_list) && count($gift_list) > 0)
										@foreach($gift_list->all() as $key => $row)
										<tr class="">
											<td class="text-center">{{ ($key + 1) }}</td>
											<td><a href="{{ url('inventory/product/view/' . $row->product_id) }}" 
												title=" View {{ isset($productGiftArr[$row->product_id]) ? $productGiftArr[$row->product_id] : '' }}"
												class="">{{ isset($productGiftArr[$row->product_id]) ? $productGiftArr[$row->product_id] : '' }}</a></td>
											<td>{{ $row->quantity }}</td>
											<td>{{ $row->description }}</td>
										</tr>
										@endforeach
									@else
									<tr class="">
										<td class="text-center" colspan="4"> This promotion has no gift </td>
									</tr>
									@endif
								</tbody>
							</table>
						</div>
					</div>
					<br /> &nbsp;
					<div class="row">
						<div class="col-md-12">
							<h3> Promotion Sales </h3>
							<hr />
						</div>
						<div class="col-md-12">
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped" style="max-width: 800px;">
										<thead>
											<tr>
												<th class="col-md-2 text-right" ></th>
												<th class="col-md-2 text-right" >Price</th>
												<?php /* Remove GST on  2018-07-22
												<th class="col-md-2 text-right" >GST ({{ isset($gstpercentage) ? number_format($gstpercentage) : '0' }}%)</th>
												<th class="col-md-2 text-right" >After GST</th>
												*/ ?>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="text-right"> West Malaysia </th>
												<td class="text-right"> {{ isset($price_wm) && $price_wm > 0 ? 'RM ' . number_format($price_wm, 2, '.', '') : '-' }} </td>
												<?php /* Remove GST on  2018-07-22
												<td class="text-right"> {{ isset($wm_gst) && $wm_gst > 0 ? 'RM ' . number_format($wm_gst, 2, '.', '') : '-' }} </td>
												<td class="text-right"> {{ isset($wm_aftergst) && $wm_aftergst > 0 ? 'RM ' . number_format($wm_aftergst, 2, '.', '') : '-' }} </td>
												*/ ?>
											</tr>
											<tr>
												<th class="text-right"> East Malaysia </th>
												<td class="text-right"> {{ isset($price_em) && $price_em > 0 ? 'RM ' . number_format($price_em, 2, '.', '') : '-' }} </td>
												<?php /* Remove GST on  2018-07-22
												<td class="text-right"> {{ isset($em_gst) && $em_gst > 0 ? 'RM ' . number_format($em_gst, 2, '.', '') : '-' }} </td>
												<td class="text-right"> {{ isset($em_aftergst) && $em_aftergst > 0 ? 'RM ' . number_format($em_aftergst, 2, '.', '') : '-' }} </td>
												*/ ?>
											</tr>
											<tr>
												<th class="text-right"> Staff Price </th>
												<td class="text-right"> {{ isset($price_staff) && $price_staff > 0 ? 'RM ' . number_format($price_staff, 2, '.', '') : '-' }} </td>
												<?php /* Remove GST on  2018-07-22
												<td class="text-right"> {{ isset($staff_gst) && $staff_gst > 0 ? 'RM ' . number_format($staff_gst, 2, '.', '') : '-' }} </td>
												<td class="text-right"> {{ isset($staff_aftergst) && $staff_aftergst > 0 ? 'RM ' . number_format($staff_aftergst, 2, '.', '') : '-' }} </td>
												*/ ?>
											</tr>
										</tbody>
									</table>
								</div>
							</div>	
						</div>
					</div>
					<div class="row">
						<br /> &nbsp;
						<div class="col-md-12">
							<hr />
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="col-md-4 control-label"> Created by: </label>
								<div class="col-md-8 control-label text-left">{{ $created_by_name }}</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label"> Created at: </label>
								<div class="col-md-8 control-label text-left">{{ isset($created_at) && !in_array($created_at, array('0000-00-00','')) ? date('d/m/Y, h:i A', strtotime($created_at)) : '' }}</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label class="col-md-4 control-label"> Updated by: </label>
								<div class="col-md-8 control-label text-left">{{ $updated_by_name }}</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label"> Updated at: </label>
								<div class="col-md-8 control-label text-left">{{ isset($updated_at) && !in_array($updated_at, array('0000-00-00','')) ? date('d/m/Y, h:i A', strtotime($updated_at)) : '' }}</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					&nbsp;
				</div>
			</div>
		</div>
	</div>
</div>
<script>
</script>
@endsection