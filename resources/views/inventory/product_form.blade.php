<?php 
# Create by: Bhaihaqi		2018-02-02 Friday
# Modify by: Bhaihaqi		2018-02-26 Monday

$formurl = "insert";
$clearurl = "form";
$titlehead = "New Product";
if(isset($id) && $id > 0){
	#set update
	$formurl = "update/" . $id;
	$clearurl = "edit/" . $id;
	$titlehead = "Edit Product";
	
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
@section('title',$titlehead)
@section('content')
<style>
.mask_decimal, .mask_number, .mask_percentage, .tax-gst, .aftergst-info, .gst-info, .mask_year{max-width:150px;}
.uppercase{text-transform: uppercase;}
.view-picture{ height: 250px; width: 100%; display: inline-block; position: relative; }
.view-picture img { max-height: 98%; max-width: 98%; width: auto; height: auto; position: absolute;
		top: 0; bottom: 0; left: 0; right: 0; margin: auto; }
select, .checkbox-label{cursor:pointer;}
.required, .price-required{ color: #ff0000;}
</style>
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
	<li><a href="{{ url('home') }}">Home</a></li>                    
	<li ><a href="{{ url('inventory/product/listing') }}">Product Listing</a></li>
	<li class="active">{{ $titlehead }}</li>
</ul>
<!-- END BREADCRUMB -->
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
	<div class="row">
		@if(count($errors) > 0)
			@foreach($errors->all() as $row_error)
				<div class="col-md-12  alert alert-danger">
					<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					{{ $row_error }}
				</div>
			@endforeach
		@endif
		@if(session("info"))
			<div class="row"><div class="col-sm-12">
				<div class="alert alert-success">
					<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					{{ session("info") }}
				</div>
			</div></div>
		@endif
	</div>
	<div class="row">
		<div class="col-md-12">
		<div class="panel panel-default tabs">                            
			<ul class="nav nav-tabs" role="tablist">
				<li class="{{ $tabform }}"><a href="#tab-form" role="tab" data-toggle="tab"> Form </a></li>
				<?php if(isset($id) && $id > 0){ ?>
					<li class="{{ $tabgallery }}" ><a href="#tab-gallery" role="tab" data-toggle="tab"> Gallery </a></li>
					<div class="actions pull-right">
						<a href="{{ url('inventory/product/view/' . $id) }}" class="btn btn-default  btn-sm btn-circle">
					<i class="fa fa-eye"></i> View </a>
					</div>
				<?php } ?>
			</ul>
			<div class="panel-body tab-content">
				<div class="tab-pane {{ $tabform }}" id="tab-form">
						<form id="submit_form" class="form-horizontal" method="POST" action="{{ url('inventory/product/' . $formurl) }}" enctype="multipart/form-data" >
						{{ csrf_field() }}
						<h3 class="panel-title"><strong>Product</strong> Form </h3>
						<div class="panel-body">
							<div class="alert alert-danger alert-dismissable alert_modal" hidden>
								already exists
							</div>
							<div class="row">
								<div class="col-md-12">
									<h3> Product info </h3>
									<hr />
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-4 control-label"> Code <span class="required">*</span></label>
										<div class="col-md-8">        
											<input type="text" class="form-control product-code uppercase" name="code" value="{{ isset($code) ? $code : '' }}" />  
											<span class="help-block">Minimum 3 characters.</span>									
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"> Name <span class="required">*</span></label>
										<div class="col-md-8">
											<input type="text" class="form-control product-name" name="name" value="{{ isset($name) ? $name : '' }}" />   
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"> Category <span class="required">*</span></label>
										<div class="col-md-8">        
											<select class="form-control product-category" name="category" >
											<option value="" ></option>
											@if(count($dataproductcategory) > 0)
												@foreach($dataproductcategory->all() as $key => $row)
													<option value="{{ $row->id }}" {{ isset($category) && $category == $row->id ? "selected" : "" }}>{{ $row->category }}</option>
												@endforeach
											@endif
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"> Weight (g) </label>
										<div class="col-md-8">
											<input type="text" class="form-control mask_decimal product-weight" name="weight" value="{{ isset($weight) && $weight > 0 ? number_format($weight, 2, '.', '') : '' }}" />   
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label class="col-md-4 control-label"> Status <span class="required">*</span></label>
										<div class="col-md-8">        
											<select class="form-control product-status" name="status" >
												<option value="1" {{ isset($status) && $status == 1 ? "selected" : "" }}> Active </option>
												<option value="0" {{ isset($status) && $status == 0 ? "selected" : "" }}> Inactive </option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"> Qty Type <span class="required">*</span></label>
										<div class="col-md-8">        
											<select class="form-control product-qtytype" name="qtytype_id" >
											<option value="" ></option>
											@if(count($dataquantitytype) > 0)
												@foreach($dataquantitytype->all() as $key => $row)
													<option value="{{ $row->id }}" {{ isset($qtytype_id) && $qtytype_id == $row->id ? "selected" : "" }}>{{ $row->type }}</option>
												@endforeach
											@endif
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"> Year </label>
										<div class="col-md-3">        
											<input type="text" class="form-control product-year mask_year" name="year" placeholder="2000" value="{{ isset($year) && $year > 1900 ? $year : '' }}" />								
										</div>
										<div class="col-md-5">  
										<select class="form-control product-month" name="month" >
											@if(count($monthArr) > 0)
												@foreach($monthArr as $key => $monthstr)
													<option value="{{ $key }}" {{ isset($month) && $month == $key ? "selected" : "" }}>{{ $monthstr }}</option>
												@endforeach
											@endif
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-4 control-label"> Point </label>
										<div class="col-md-8">
											<input type="text" class="form-control mask_number product-point" name="point" value="{{ isset($point) && $point > 0 ? $point : '' }}" />   
										</div>
									</div>
								</div>
							</div>
							<br /> &nbsp;
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label class="col-md-2 control-label"> Description </label>
										<div class="col-md-10">        
											<textarea name="description" class="form-control product-description" rows="8" style="resize: none;" >{{ isset($description) ? $description : '' }}</textarea>							
										</div>
									</div>
								</div>
							</div>
							<br /> &nbsp;
							<div class="row">
								<div class="col-md-6">
									<div class="col-md-12">
										<h3> Sales Info </h3>
										<hr />
									</div>
									<div class="form-group">
										<div class="col-md-3">
										</div>
										<label class="col-md-9 checkbox-label">
											<input type="checkbox" class="icheckbox product-notforsale" name='notforsale' value='1' {{ isset($notforsale) && $notforsale == 1 ? 'checked' : '' }} />  &nbsp; Not For Sale 
										</label>
									</div>
									<div class="form-group">
										<label class="col-md-6 control-label"><br /> West Malaysia <span class="price-required">*</span></label>
										<div class="col-md-4">
											<span class="help-block"> Price </span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<input type="text" class="sales-info form-control product-price_wm mask_decimal" placeholder="0.00" name="price_wm" value="{{ isset($price_wm) ? number_format($price_wm, 2, '.', '') : '' }}" />
											</div>
										</div>
										<?php /* Remove GST on  2018-07-22
										<div class="col-md-3">
											<span class="help-block"> GST {{ $gstpercentage }} %</span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<div class="gst-info form-control text-right" >
													{{ isset($wm_gst) ? number_format($wm_gst, 2, '.', '') : '0.00' }}
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<span class="help-block">After GST </span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<input type="text" class="aftergst-info form-control mask_decimal" placeholder="0.00" 
												value="{{ isset($wm_aftergst) ? number_format($wm_aftergst, 2, '.', '') : '' }}" />
											</div>
										</div>
										*/ ?>
									</div>
									<div class="form-group">
										<label class="col-md-6 control-label"><br /> East Malaysia <span class="price-required">*</span></label>
										<div class="col-md-4">
											<span class="help-block"> Price </span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<input type="text" class="sales-info form-control product-price_em mask_decimal" placeholder="0.00" name="price_em" value="{{ isset($price_em) ? number_format($price_em, 2, '.', '') : '' }}" />
											</div>
										</div>
										<?php /* Remove GST on  2018-07-22
										<div class="col-md-3">
											<span class="help-block"> GST {{ $gstpercentage }} %</span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<div class="gst-info form-control text-right" >
													{{ isset($em_gst) ? number_format($em_gst, 2, '.', '') : '0.00' }}
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<span class="help-block">After GST </span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<input type="text" class="aftergst-info form-control mask_decimal" placeholder="0.00" 
												value="{{ isset($em_aftergst) ? number_format($em_aftergst, 2, '.', '') : '' }}" />
											</div>
										</div>
										*/ ?>
									</div>
									<div class="form-group">
										<label class="col-md-6 control-label"><br /> Staff Price </label>
										<div class="col-md-4">
											<span class="help-block"> Price </span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<input type="text" class="sales-info form-control product-price_staff mask_decimal" placeholder="0.00" 
												name="price_staff" value="{{ isset($price_staff) ? number_format($price_staff, 2, '.', '') : '' }}" />
											</div>
										</div>
										<?php /* Remove GST on  2018-07-22
										<div class="col-md-3">
											<span class="help-block"> GST {{ $gstpercentage }} %</span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<div class="gst-info form-control text-right" >
													{{ isset($staff_gst) ? number_format($staff_gst, 2, '.', '') : '0.00' }}
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<span class="help-block">After GST </span>
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<input type="text" class="aftergst-info form-control mask_decimal" placeholder="0.00" 
												value="{{ isset($staff_aftergst) ? number_format($staff_aftergst, 2, '.', '') : '' }}" />
											</div>
										</div>
										*/ ?>
									</div>
								</div>
								<div class="col-md-6">
									<div class="col-md-12">
										<h3> Purchasing Info </h3>
										<hr />
									</div>
									<div class="form-group">
										<label class="col-md-6 control-label"> Last Purchase Price </label>
										<div class="col-md-6">
											<div class="input-group">
												<span class="input-group-addon">RM</span>
												<input type="text" class="form-control product-last_purchase mask_decimal" placeholder="0.00" 
												name="last_purchase" value="{{ isset($last_purchase) && $last_purchase > 0 ? number_format($last_purchase, 2, '.', '') : '' }}" />
											</div>
										</div>
									</div>
									<br /> &nbsp;
									{{-- <div class="col-md-12">
										<h3> Inventory </h3>
										<hr />
									</div> --}}
									{{-- <div class="form-group">
										<label class="col-md-6 control-label"> Stock Reminder </label>
										<div class="col-md-6">
											<div class="input-group ">
												<span class="input-group-addon"><i class="glyphicon glyphicon-bookmark"></i></span>
												<input type="text" class="form-control product-quantity_min mask_number" placeholder="0" name="quantity_min" value="{{ isset($quantity_min) ? $quantity_min : '' }}" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-6 control-label"> Stock Quantity</label>
										<div class="col-md-6">
											<div class="input-group ">
												<span class="input-group-addon"><i class="glyphicon glyphicon-bookmark"></i></span>
												<div class="form-control mask_number text-right" >{{ isset($inventorytotal) ? $inventorytotal : '0' }}</div>		
											</div>
										</div>
									</div> --}}
								</div>
							</div>
						</div>
						<div class="panel-footer">
							<a class="btn btn-default" href="{{ url('/inventory/product/' . $clearurl ) }}">{{ isset($id) && $id > 0 ? 'Reset' : 'Clear Form' }}</a>                                    
							<button type="submit" class="btn btn-primary pull-right">{{ isset($id) && $id > 0 ? 'Save' : 'Submit' }}</button>
						</div>
						</form>
				</div>
				<?php if(isset($id) && $id > 0){ ?>
				<div class="tab-pane {{ $tabgallery }}" id="tab-gallery">
					<form id="submit_image" class="form-horizontal" method="POST" action="{{ url('/inventory/product/upload_image/' . $id ) }}" enctype="multipart/form-data" >
						{{ csrf_field() }}
							<div class="col-md-12 image" >
								<div class="col-md-12">
									<h3> Picture</h3>
									<hr />
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label"></label>
									<div class="col-md-8">
										<div class="form-control view-picture pull-center">
										</div>
									</div>							
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label"> </label>
									<div class="col-md-8 button-browse">
										<input type="file" class="fileinput upload-picture" name="upload_image" id="filename1" accept="image/*" />
									</div>								
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label"></label>
									<div class="col-md-8">
										<input type="text" class="form-control image-description" placeholder="description of image" name="description" value="" />   
									</div>						
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label"> </label>
									<div class="col-md-8">
										<div class="progress">
											<div class="progress-bar progress_upload" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
										</div>
										<button id="button-upload" type="button" class="btn btn-primary pull-right" disabled >Upload</button>
									</div>								
								</div>
							</div>
					</form>
					<br /> &nbsp;
					<div class="col-md-12 image" >
						<div class="col-md-12">
							<h3> Gallery</h3>
							<hr />
						</div>
						<div class="col-md-12 ajax-reloadimage">
							<div class="gallery text-center" id="links">
								No Image found
							</div>
						</div>
					</div>
					<!-- BLUEIMP GALLERY -->
					<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
						<div class="slides"></div>
						<h3 class="title"></h3>
						<a class="prev">‹</a>
						<a class="next">›</a>
						<a class="close">×</a>
						<a class="play-pause"></a>
						<ol class="indicator"></ol>
					</div>      
					<!-- END BLUEIMP GALLERY -->

				</div>
				<?php } ?>
			</div>
			<div class="panel-footer">
			</div>
		</div> 
		</div>
	</div>
</div>
 <!-- END PAGE CONTENT WRAPPER -->
@stop
{{-- page level scripts --}}
@section('footer_scripts')
<script type="text/javascript" src="{!! asset('themes/Joli/js/jquery.form.js') !!}" ></script> 
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/inputmask/jquery.inputmask.bundle.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/bootstrap/bootstrap-file-input.js') !!}"></script>
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/dropzone/dropzone.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/fileinput/fileinput.min.js') !!}"></script> 
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/jquery-validation/jquery.validate.js') !!}" ></script>
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/icheck/icheck.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') !!}"></script>
<script type="text/javascript" src="{!! asset('themes/Joli/js/plugins/blueimp/jquery.blueimp-gallery.min.js') !!}"></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/jquery.noty.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/layouts/topCenter.js') !!}" ></script>
<script type='text/javascript' src="{!! asset('themes/Joli/js/plugins/noty/themes/default.js') !!}" ></script>

<script>
var baseurl = '{{ url('') }}';
var baseid = '{{ isset($id) && $id > 0 ? $id : 0 }}';
var gstpercentage = '{{ $gstpercentage }}';
var jvalidate = $("#submit_form").validate({
errorPlacement: function(error,element) { return true;},
ignore: [],
rules: {                                            
		code: { required: true, minlength: 3,},
		name: { required: true,},
		category: { required: true,},
		qtytype_id: { required: true,},
	}                                        
});
function setnumber_decimal(numberd){
	if(numberd > 0){
		v = parseFloat(numberd);
		return v.toFixed(2);
	}
	return 0.00;
}

function reload_image(baseid){
	$.ajax({
		url: baseurl +'/inventory/product/reload_image/'+baseid,
		success: function(result){
			$('.ajax-reloadimage').html(result);
		},
		error: function (textStatus, errorThrown) {
		}
	}).done(function(){
	});
}
$(function() {
	if($(this).find('.product-notforsale').is(':checked'))
		$('.price-required').hide();
	else
		$('.price-required').show();
			
	$( ".checkbox-label").click(function() {
		if($(this).find('.product-notforsale').is(':checked'))
			$('.price-required').show();
		else{
			$('.product-price_em').closest('.form-group').removeClass('has-error');
			$('.product-price_wm').closest('.form-group').removeClass('has-error');
			$('.price-required').hide();
		}
	});
	
	$('.product-code').inputmask({
		"mask": "*",
		"repeat": 30,
		"greedy": false
	});
	
	
	$(".mask_year").inputmask({
		"mask": "9",
		"repeat": 4,
		'rightAlign': true,
		"greedy": false
	});
	
	$(".mask_number").inputmask({
		"mask": "9",
		"repeat": 10,
		'rightAlign': true,
		"greedy": false
	});
	
	$(".mask_decimal").inputmask({
		'mask':"9{0,14}.9{0,2}", 
		'alias': 'decimal',
		'digits':'2',
		'rightAlign': true,
		'autoGroup': true,
	});
	
	$(".mask_percentage").inputmask({
		'mask':"9{0,3}.9{0,2}", 
		'alias': 'decimal',
		'digits':'2',
		'rightAlign': true,
		'autoGroup': true,
	});
	
	$('body').on('change', '.product-weight, .product-last_purchase', function(){
		var numberd = $(this).val();
		if(numberd > 0){
			$(this).val(setnumber_decimal(numberd));
		}
		else{
			$(this).val('');
		}
	});
	
	$('body').on('change', '.sales-info', function(){
		var numberd = $(this).val();
		var gst = 0;
		var aftergst = 0;
		if(numberd > 0){
			$(this).val(setnumber_decimal(numberd));
			gst = (parseFloat(numberd) / 100) * gstpercentage;
			aftergst = parseFloat(numberd) + parseFloat(gst);
			$(this).closest('.form-group').find('.gst-info').html(setnumber_decimal(gst));
			$(this).closest('.form-group').find('.aftergst-info').val(setnumber_decimal(aftergst));
		}
		else{
			$(this).val('');
			$(this).closest('.form-group').find('.gst-info').html('');
			$(this).closest('.form-group').find('.aftergst-info').val('');
		}
	});
	
	$('body').on('change', '.aftergst-info', function(){
		var numberd = $(this).val();
		var gst = 0;
		var beforegst = 0;
		if(numberd > 0){
			$(this).val(setnumber_decimal(numberd));
			gst = (parseFloat(numberd) / (parseFloat(100) + parseFloat(gstpercentage))) * gstpercentage;
			beforegst = parseFloat(numberd) - parseFloat(gst);
			$(this).closest('.form-group').find('.gst-info').html(setnumber_decimal(gst));
			$(this).closest('.form-group').find('.sales-info').val(setnumber_decimal(beforegst));
		}
		else{
			$(this).val('');
			$(this).closest('.form-group').find('.gst-info').html('');
			$(this).closest('.form-group').find('.sales-info').val('');
		}
	});
	
	$('#submit_form').on('change', 'input, select', function(){
		$(this).closest('.form-group').removeClass('has-error');
	});
	
	$("#submit_form").submit(function(){
		if(!$(this).find('.product-notforsale').is(':checked')){
			errorprice = 0;
			price_wm = $('.product-price_wm').val();
			price_em = $('.product-price_em').val();
			if(price_wm == 0 || price_wm == ''){
				errorprice = 1;
				$('.product-price_wm').closest('.form-group').addClass('has-error');
			}
			if(price_em == 0 || price_em == ''){
				errorprice = 1;
				$('.product-price_em').closest('.form-group').addClass('has-error');
			}
			if(errorprice == 1)
				return false;
		}
		productcode = $(".product-code").val().trim();
		code_exist = 0;
		$.ajax({
			url: baseurl + '/inventory/product/check_existcode',
			method: "POST",
			data: {'code': productcode,'id': baseid, '_token': '{{ csrf_token() }}',} ,
			async: false,
			success: function(result){
				if(result == 1 || result == true)
					code_exist = 1;
			}
		});
		if(code_exist == 1){
			$(".product-code").focus();
			$("#submit_form").find(".alert_modal").html(" Product Code <b>"+productcode.toUpperCase()+"</b> already exists . ");
			$("#submit_form").find(".alert_modal").show();
			return false;
		}
	});
	
	// SET OUTPUT IMAGE 
	$(".upload-picture").change(function(e) {
		$(".progress_upload").removeClass('progress-bar-success');
		$(".progress_upload").css("width", "0");
		$(".progress_upload").html("");
		$(".image-description").val("");
		if(typeof this.files[0] != 'undefined'){
			var filename = this.files[0].name;
			filename = filename.split('.')[0];
			fileType = this.files[0].type;
			var ValidImageTypes = ["image/gif", "image/jpeg", "image/png", "image/x-icon"];
			if ($.inArray(fileType, ValidImageTypes) < 0) {
				$(this).closest('.image').find(".view-picture").find('img').remove();
				$('#button-upload').prop('disabled', false);
			}
			else{
				for (var i = 0; i < e.originalEvent.srcElement.files.length; i++) {

					var file = e.originalEvent.srcElement.files[i];

					var img = document.createElement("img");
					var reader = new FileReader();
					reader.onloadend = function() {
						 img.src = reader.result;
					}
					reader.readAsDataURL(file);
					$(".image-description").val(filename);
					$(this).closest('.image').find(".view-picture").html(img);
					$('#button-upload').prop('disabled', false);
				}
			}
		}
		else{
			$('#button-upload').prop('disabled', true);
			$(this).closest('.image').find(".view-picture").find('img').remove();
		}
	});
	
	// remove image
	$('#submit_form').on('click', '#remove-picture', function(){
		$(this).closest('.image').find(".view-picture").find('img').remove();
		$(this).closest('.button-remove').hide();
		$(this).closest('.image').find('.button-browse').show();
		$(this).closest('.image').find('#upload_status').val(1);
	});
	
	reload_image(baseid);
	$('body').on('click', '#button-upload', function(){
		var submit = $(this).closest('#tab-gallery').find("#submit_image");
		var i = $(this).closest('.modal').find(".num_row").val();
		var type = $(this).closest('.modal').find(".content_type_modal").val();
		var read_data = $(".read_data_"+i);
		$("#button-upload").prop('disabled', true);
		$(submit).ajaxSubmit({
			dataType: "json",
			beforeSend:function(){
				$(".progress_upload").css("width", "0");
			},
			uploadProgress:function(event,position,total,percentComplete){
				$(".progress_upload").css("width", percentComplete+"%");
				$(".progress_upload").html(percentComplete+"%");
			},
			error: function (){
				$(".progress_upload").css("width", "");
				$(".progress_upload").html("");
			},
			success:function(data){
				var status = data["status"];
				if(status == "Fail"){
					$(".progress_upload").css("width", "");
					$(".progress_upload").html("");
					alert("Fail " + data["remarks"]);
				}
				else{
					$(".progress_upload").addClass('progress-bar-success');
					$(".progress_upload").html("Success Uploaded");
					reload_image(baseid);
				}
			}
		});
	});
	
	$('body').on('click', '.delete-image', function(){
		var base64data = $(this).data('base64');
		noty({
			text: 'Are you sure to remove this Image ?',
			layout: 'topCenter',
			buttons: [
					{addClass: 'btn btn-success btn-clean', text: 'Ok', onClick: function($noty) {
						$noty.close();
						$.ajax({
							url: baseurl +"/product/delete_image/"+base64data,
							success: function(result){
								reload_image(baseid);
							},
							error: function (textStatus, errorThrown) {
							}
						}).done(function(){
						});
					}
					},
					{addClass: 'btn btn-danger btn-clean', text: 'Cancel', onClick: function($noty) {
						$noty.close();
						}
					}
				]
		})
		return false;
	});
	
	$('body').on('click', '.set-mainimage', function(){
		var imageid = $(this).data('imageid');
		var product_id = $(this).data('product_id');
		$.ajax({
			url: baseurl + '/inventory/product/set_mainimage',
			method: "POST",
			data: {'imageid': imageid,'product_id': product_id, '_token': '{{ csrf_token() }}',} ,
			async: false,
			success: function(result){
				reload_image(baseid);
			}
		});
		return false;
	});
	
	$('body').on('click', '.set-mainimage2', function(){
		return false;
	});
});
</script>
@stop