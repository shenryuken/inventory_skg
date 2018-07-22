@extends('layouts.joli.app')
@include('shops.css.agent_css')
@include('shops.modal_dialog_package_list')
@include('shops.modal_dialog_gift_list')
@section('title','Product Listing')
@section('content')


<span hidden="">{{ $id }}</span>
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
	<li><a href="javascript:;">Home</a></li>                    
	<li class="{{ url('agent') }}">Mall</li>
	<li class="{{ url('agent') }}">Product List</li>
</ul>
<!-- END BREADCRUMB -->
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="horizontal">
					<div class="panel-heading">
						<h3 class="panel-title"><strong>Shopping Cart</strong></h3>
						<ul class="panel-controls pull-right">
							<a href="{{ url('shop/get-cart-items') }}/{{ $id }}" style="font-size: 30px;" title="Cart List">
								<i class="glyphicon glyphicon-shopping-cart cart"></i>
							</a>
							<span class="informer informer-danger" id="itemCount"></span>
						</ul>
					</div>
				</div>
				<div class="panel-body form-horizontal">
					<div class="row">	
						<div class="col-md-12">
							<div class="col-md-2">
								<p><b><span id="form-title">{{ isset($user) ? $user->username : 'SKG' }} Store</span><b></p>
							</div>
						</div>
						<!-- <div class="col-md-1 ">
							<a href="{{ url('agent/get_checkout_items') }}" style="font-size: 50px;">
								<i class="glyphicon glyphicon-shopping-cart shopping-cart"></i>
							</a>
							<span id="itemCount"></span>
						</div> -->
						<div class="alert alert-danger" role="alert">
						    <button type="button" class="close" data-dismiss="alert">
						    	<span aria-hidden="true">×</span><span class="sr-only">Close</span>
						    </button>
						    <strong></strong>
						</div>
						<div class="container" style="margin-top:50px; width: 100%;">
							<div class='row'>
								@foreach($product as $key => $value)
								<div class="col-md-3" style="width: 250px; min-width:260px;">
									<div class="panel panel-default item-content offer-info">
										<div class="shape" {{ $value['promotion_status'] }}>
											<div class="shape-text">
												Promotion								
											</div>
										</div>
								        <div class="panel-heading">
								            <div class="media clearfix" style="height: 20px; word-wrap: break-word;">
								                <h3 class="font-bold" style="font-size: 15px;">{{ $value['name'] }}</h3>
								            </div>
								        </div>
								        <div class="panel-image detail">
								            <img class="img-responsive" src="{{ isset($value['image_path']) ? asset('storage/'.$value['image_path']) : asset('invalid-image.png') }}" style="width:100%; height: 200px;" alt="">
								        </div>
								        <div class="panel-body detail">
								       		<!-- <table>
								       			<tr>
								       				<td><h4 class="font-bold price-text-color">WM </h4></td>
								    				<td><h4 class="font-bold price-text-color">: RM{{ $value['wm_aftergst'] }}</h4></td>
								       			</tr>
								       			<tr>
							       					<td><h4 class="font-bold price-text-color">EM</h4></td>
							       					<td><h4 class="font-bold price-text-color">: RM{{ $value['em_aftergst'] }}</h4></td>
								       			</tr>
								       		</table> -->
										</div>		
								        <div class="panel-footer">
								        	<div class="col-md-12" style="">
								        		<div class="row">
								        			<div class="col-md-7" style="margin-left:-10px;">
								        				<input type="hidden" name="promotion_id" id="promotion_id" value="{{ isset($value['promotion_id']) ? $value['promotion_id'] : '' }}">
									        			@if(Auth::guard('admin')->check() == true)
									        			@if(isset($value['ori_staff_aftergst']))
								        				<span class="ori-price">
									       				<del>RM{{ $value['ori_staff_aftergst'] }}</del>
										       			</span>
										       			@endif
									        			@else
									        			@if(isset($value['ori_wm_aftergst']) && isset($value['ori_em_aftergst']))
										       			<span class="ori-price">
										       				WM :<del>RM{{ $value['ori_wm_aftergst'] }}</del>
										       				<br>
										       				EM :<del>RM{{ $value['ori_em_aftergst'] }}</del>
										       			</span>
										       			@endif
										       			@endif
										       		</div>
										       		<div class="col-md-5">
										       			<div style="margin-top: 0px;" id="popup">
											       			<span {{ $value['gift_status'] }}>
												       			<a class="popper btn btn-secondary gift-list" data-popbox="pop1" style="font-size: 10px;">
												       				<font font size="3" color="green">Gift</font>
												       			</a>
												       		</span>
												       		
											       		</div>
										       		</div>
								        		</div>
								        		<div class="row">
													<!-- <div class="col-md-7" style="">
														<div class="info">
											                <table style="/*margin-top: 20px;*/ margin-left:-10px;">
											                	@if(Auth::guard('admin')->check() == true)
											                	<tr>
												    				<td><h4 class="font-bold price-text-color">RM{{ $value['staff_aftergst'] }}</h4></td>
												       			</tr>
											                	@else
												       			<tr>
												       				<td><h4 class="font-bold price-text-color">WM </h4></td>
												    				<td><h4 class="font-bold price-text-color">: RM{{ $value['wm_aftergst'] }}</h4></td>
												       			</tr>
												       			<tr>
											       					<td><h4 class="font-bold price-text-color">EM</h4></td>
											       					<td><h4 class="font-bold price-text-color">: RM{{ $value['em_aftergst'] }}</h4></td>
												       			</tr>
												       			@endif
												       		</table>
												       	</div>
											       	</div> -->
											       	<div class="col-md-7" style="margin-left:-10px;">
								        				<input type="hidden" name="promotion_id" id="promotion_id" value="{{ isset($value['promotion_id']) ? $value['promotion_id'] : '' }}">
									        			@if(Auth::guard('admin')->check() == true)
									        			@if(isset($value['staff_aftergst']))
								        				<span class="ori-price">
									       				<text class="font-bold price-text-color">RM{{ $value['staff_aftergst'] }}</text>
										       			</span>
										       			@endif
									        			@else
									        			@if(isset($value['wm_aftergst']) && isset($value['em_aftergst']))
										       			<span class="ori-price">
										       				WM :<text class="font-bold price-text-color">RM{{ $value['wm_aftergst'] }}</text>
										       				<br>
										       				EM :<text class="font-bold price-text-color">RM{{ $value['em_aftergst'] }}</text>
										       			</span>
										       			@endif
										       			@endif
										       		</div>
											       	<div class="col-md-5">
											       		<div style="margin-top: 0px;">
											       			<span {{ $value['package_status'] }}>
												       			<a class="popper btn btn-secondary pack-list" data-popbox="pop2" style="font-size: 10px;">
												       				<font font size="3" color="red">Package</font>
												       			</a>
												       		</span>
											       		</div>
											       	</div>
											    </div>
								                <form action="javascript:;" class="save-item" style="">
													<input type="hidden" name="id" id="id" value="{{ $value['id'] }}">
													<div class="row item-row">
														<div class="col-md-8 info" style="margin: 5px; margin-top: -1em">
															<div class="form-group info-detail">
												                <label class="control-label">Quantity</label>
												                <div class="input-group col-md-12 qty">
																	<span class="input-group-btn">
																        <button class="btn btn-secondary btn-minus" type="button">-</button>
																    </span>
																	<input type="text" class="form-control quantity" name="quantity" id="quantity" min="1" max="200" step="1" value="1">
																	<span class="input-group-btn">
																	  	<button class="btn btn-secondary btn-plus" type="button">+</button>
																	</span>
																</div>
											                </div>
														</div>
													</div>
													<button type="submit" class="btn btn-block btn-danger add-to-cart">Add to cart</button>
												</form>
											</div>
								        </div>
								    </div>
							    </div>
							    @endforeach
							    <div class="pagination-body">
									
								</div>
							</div>
						</div>
					</div> 
				</div>
			</div>
		</div>
	</div>
</div>

<!-- <div class="message-box animated fadeIn open promo-advs" id="message-box-default" hidden>
    <div class="mb-container">
    	<div class="mb-header"><i class="fa fa-times-circle-o pull-right mb-control-close" style="font-size: 30px;"></i></div>
        <div class="mb-middle">
            <div class="mb-title"><span class="fa fa-globe"></span> Some <strong>Title</strong></div>
            <div class="mb-content">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at tellus sed mauris mollis pellentesque nec a ligula. Quisque ultricies eleifend lacinia. Nunc luctus quam pretium massa semper tincidunt. Praesent vel mollis eros. Fusce erat arcu, feugiat ac dignissim ac, aliquam sed urna. Maecenas scelerisque molestie justo, ut tempor nunc.</p>                    
            </div>
            <div class="mb-footer">
            </div>
        </div>
    </div>
</div> -->

<div id="pop1" class="popbox">
     <h2>Gift</h2>
     <div class="content">
     </div>
</div>

<div id="pop2" class="popbox">
     <h2>Promotion</h2>
     <div class="content">
     </div>
</div>

<!-- @if(Auth::guard('admin')->check())
@php $order_type = 'staff' @endphp
@else
@php $order_type = 'agent' @endphp
@endif -->
@endsection
@section('footer_scripts')
<script type="text/javascript">

	var baseUrl = window.location.origin;

	$(document).ready(function(){

	 $(".btn-minus").on("click",function(){
	 		console.log($(this).closest('.qty').find('input.quantity').val())
	 		var now = $(this).closest('.qty').find('input.quantity').val();
            // var now = $(".quantity").val();
            if ($.isNumeric(now)){
                if (parseInt(now) -1 > 0){ now--;}
                $(this).closest('.qty').find('input.quantity').val(now);
            }else{
                $(this).closest('.qty').find('input.quantity').val("1");
            }
        })            
        $(".btn-plus").on("click",function(){
        	// console.log($(this).closest('.qty').find('input.quantity').val())
        	var now = $(this).closest('.qty').find('input.quantity').val();
        	var max = $(this).closest('.qty').find('input.quantity').attr('max');
        	// console.log(max)
            // var now = $(".quantity").val();
            if(now == max){
            	 $(this).closest('.qty').find('input.quantity').val(max);
            }
            else{
	            if ($.isNumeric(now)){
	                $(this).closest('.qty').find('input.quantity').val(parseInt(now)+1);
	            }else{
	                $(this).closest('.qty').find('input.quantity').val("1");
	            }
	        }
        });


        $('.quantity').on('change',function(){
        	var val = $(this).val();
        	var max = $(this).attr('max');
        	console.log(val,max)
        	if(parseFloat(val) > parseFloat(max)){
        		$(this).val(max);
        	}
        });

		var count = '{!! $count !!}';
		console.log(count);
		if(count != 0){
			$('#itemCount').html(count).css('display', 'block' ); 
		}
		else{
			$('#itemCount').html(count).css('display', 'none' ); 
		}

		$('.alert-danger').hide();

		$('.promo-advs').css('display','none')

	});

	$(document).on('click','div.detail', function(){

		var product_id = $(this).closest('.item-content').find('input#id').val();
		console.log(product_id)
		// window.location.href = "{{ url('agent/get_product_details') }}"+"/"+product_id;
	});

	$(document).on('click','a.pack-list', function(){

		var product_id = $(this).closest('.item-content').find('input#id').val();
		console.log(product_id)
		// window.location.href = "{{ url('agent/get_product_package') }}"+"/"+product_id;
		var data = {

			_token : "{!! csrf_token() !!}",
			product_id : product_id
		};

		$.ajax({

			url 	: baseUrl+"/shop/get-product-package",
			type 	: "GET",
			data 	: data,
			dataType: "json",
			contentType: "application/json",

		}).done(function(respone){

			if(respone.return.status == "01"){

				var package1 = respone.package;
				var tag = "";	
				console.log(package1);

				tag += "<table class='col-md-12 table-package'>";
				tag += "<thead class='thead-package'>";
				tag += "<tr class='tr-package'>";
				tag += "<th colspan='2' class='th-package'>";
				tag += "Product";
				tag += "</th>";
				tag += "<th class='th-package'>";
				tag += "Quantity";
				tag += "</th>";
				tag += "</tr>";
				tag += "</thead>";
				tag += "<tbody class='tbody-package'>";
				Object.keys(package1).forEach(function(el){
					// console.log("el",el);
					var urlimg = "{!!asset('')!!}";
					var img = package1[el].image;
					tag += "<tr class='tr-package'>";
					tag += "<td style='width:150px;' class='td-package'>";
					tag += "<img class='media-object' src='"+urlimg+"storage/"+img+"' style='height: 150px; margin-bottom:10px;'>";
					tag += "</td>";
					tag += "<td style='' class='td-package'>";
					tag += "<h4 style='margin-left:5px;'>"+package1[el].name+"</h4>";
					tag += "</td>";
					tag += "<td style='width:150px;' class='td-package'>";
					tag += "<h4 style='margin-left:5px;'>"+package1[el].package_quantity+"</h4>";
					tag += "</td>";
					tag += "</tr>";
				});
				tag += "</tbody>";
				tag += "</table>";

				console.log(tag)
				$('div.package-list').html(tag);
			}
			setTimeout(function(){
	            $("#PackageList").modal();
	        },500);

		}).fail(function(respone){

		});

		if (!($("a.popper").hasClass("show"))) {
	        $(target).hide();
	    }
	});
	
	// var itemCount = 0;

	$('button.add-to-cart').on('click', function () {
		console.log("masuk sini")
		var imgtodrag = $(this).closest(".panel").children(".panel-image").find("img").eq(0);
		var cart = $('.cart');
		// console.log($(this).closest('form.save-item').children('.info').children('.info-detail').find('select#quantity').val())
		var product_id = $(this).closest('form.save-item').find('input#id').val();
		var quantity = $(this).closest('form.save-item').children('.item-row').children('.info').children('.info-detail').children('div.qty').find('input.quantity').val();
		// var agent_id = $(this).closest('form.save-item').find('input#agent_id').val();
		// var _token = $(this).closest('form.save-item').find('input#_token').val();
		var agent_id = "{{ $id }}";
		// var order_type = "{{ $order_type }}";
		// console.log(id)
		var item = [];
		// console.log(order_type)


		if(quantity > 0 || quantity != ""){

			item ={

				// order_type : order_type,
				product_id : product_id,
				agent_id : agent_id,
				quantity : quantity
			};

			var data = {

				_token : "{!! csrf_token() !!}",
				item : item
			};

			$.ajax({

				url 	: baseUrl+"/shop/add-cart-items",
				type 	: "POST",
				data 	: JSON.stringify(data),
				dataType: "json",
				contentType: "application/json",

			}).done(function(respone){

				console.log(respone)
				if(respone.return.status == "01"){

					// fn_get_cart_items(respone.data.product_id,respone.data.agent_id);
			        if (imgtodrag) {
			            var imgclone = imgtodrag.clone().offset({
			               top: imgtodrag.offset().top,
			                left: imgtodrag.offset().left
			            }).css({
			                'opacity': '0.5',
			                'position': 'absolute',
			                'height': '150px',
			                'width': '150px',
			                'z-index': '100'
			            }).appendTo($('body')).animate({
			                'top': cart.offset().top + 10,
			                'left': cart.offset().left + 10,
			                'width': 75,
			                'height': 75
			            }, 1000, 'easeInOutExpo');
			            
			            setTimeout(function () {
			                cart.effect("shake", {
			                    times: 2
			                }, 200);
			      //           itemCount ++;
			  				$('#itemCount').html(respone.count).css('display', 'block'); 
			            }, 1500);

			            imgclone.animate({
			                'width': 0,
			                'height': 0
			            }, function () {
			                $(this).detach()
			            });
			        }

			        setTimeout(function () {
			        }, 1500);
		    	}
		    	else if(respone.return.status == "03"){

		    		$('.alert-danger').show();
		    		$('.alert-danger').children('strong').html(respone.return.message);

		    	}

			}).fail(function(XHR, textStatus, errorThrown){
				var errorText = JSON.parse(XHR.responseText);
			  	console.log(errorText);
			});
		}
		else{

			$(this).closest('form.save-item').find('.quantity').css('border','2px solid red');
		}	
    });

    $('.quantity').change(function(){
    	$(this).closest('form.save-item').find('.quantity').css('border','none');
    })

function fn_get_cart_items(product_id,agent_id){

	var data = {

		_token : "{!! csrf_token() !!}",
		agent_id : agent_id,
		product_id : product_id
	};

	$.ajax({

		url : "/agent/get_cart_items",
		type : "GET",
		dataType : "json",
		data : data

	}).done(function(respone){

		if(respone.return.status == "01"){
	  		$('#itemCount').html(respone.count).css('display', 'block'); 
		}


	}).fail(function(XHR, textStatus, errorThrown){

	});
}

$('a.gift-list').on('click',function(){

	var product_id = $(this).closest('.item-content').find('input#id').val();
	var promotion_id = $(this).closest('.item-content').find('input#promotion_id').val();
	console.log(product_id,promotion_id)
	// window.location.href = "{{ url('agent/get_product_package') }}"+"/"+product_id;
	var data = {

		_token : "{!! csrf_token() !!}",
		product_id : product_id,
		promotion_id : promotion_id
	};

	$.ajax({

		url 	: baseUrl+"/shop/get-promotion-gift",
		type 	: "GET",
		data 	: data,
		dataType: "json",
		contentType: "application/json",

	}).done(function(respone){

		if(respone.return.status == "01"){

			var gift = respone.gift;
			var tag = "";	
			console.log(gift);

			tag += "<table class='col-md-12 table-gift'>";
			tag += "<thead class='thead-gift'>";
			tag += "<tr class='tr-gift'>";
			tag += "<th colspan='2' class='th-gift'>";
			tag += "Product";
			tag += "</th>";
			tag += "<th class='th-gift'>";
			tag += "Quantity";
			tag += "</th>";
			tag += "</tr>";
			tag += "</thead>";
			tag += "<tbody class='tbody-gift'>";
			Object.keys(gift).forEach(function(el){
				// console.log("el",el);
				var urlimg = "{!!asset('')!!}";
				var img = gift[el].image;
				tag += "<tr class='tr-gift'>";
				tag += "<td style='width:150px;' class='td-gift'>";
				tag += "<img class='media-object' src='"+urlimg+"storage/"+img+"' style='height: 150px; margin-bottom:10px;'>";
				tag += "</td>";
				tag += "<td style='' class='td-gift'>";
				tag += "<h4 style='margin-left:5px;'>"+gift[el].description+"</h4>";
				tag += "</td>";
				tag += "<td style='width:150px;' class='td-gift'>";
				tag += "<h4 style='margin-left:5px;'>"+gift[el].quantity+"</h4>";
				tag += "</td>";
				tag += "</tr>";
			});
			tag += "</tbody>";
			tag += "</table>";

			console.log(tag)
			$('div.promotion-gift-list').html(tag);
		}
		setTimeout(function(){
            $("#GiftList").modal();
        },500);

	}).fail(function(respone){

	});

	if (!($("a.popper").hasClass("show"))) {
        $(target).hide();
    }
});

var positionX = 0;

$( document ).on( "mousemove", function( event ) {
	positionX = event.pageX
});

var moveLeft = 0;
var moveDown = 0;

$('a.popper').hover(function (e) {

    var target = '#' + ($(this).attr('data-popbox'));
    $(target).show();
    moveLeft = $(this).outerWidth();
    moveDown = ($(target).outerHeight() / 2);
}, function () {
    var target = '#' + ($(this).attr('data-popbox'));
    if (!($("a.popper").hasClass("show"))) {
        $(target).hide();
    }
});


$('a.popper').mouseover(function (e) {

    var target = '#' + ($(this).attr('data-popbox'));

    leftD = e.pageX + parseInt(moveLeft);
    maxRight = leftD + $(target).outerWidth();
    windowLeft = $(window).width();
    windowRight = 0;
    maxLeft = e.pageX - (parseInt(moveLeft) + $(target).outerWidth() + 20);

    if (maxRight > windowLeft && maxLeft > windowRight) {
    	// leftD = maxLeft;
        positionX = maxLeft - 180;
    }
    else{
    	positionX = positionX - 180;
    }

    // console.log("page",e.pageX,"move left",moveLeft,"max right",maxRight,"max left",maxLeft,"leftD",leftD)
    // console.log("window left",windowLeft)

    topD = e.pageY - parseInt(moveDown);
    maxBottom = parseInt(e.pageY + parseInt(moveDown) + 20);
    windowBottom = parseInt(parseInt($(document).scrollTop()) + parseInt($(window).height()));
    maxTop = topD;
    windowTop = parseInt($(document).scrollTop());
    if (maxBottom > windowBottom) {
        topD = windowBottom - $(target).outerHeight() - 20;
    } else if (maxTop < windowTop) {
        topD = windowTop + 20;
    }

    console.log("id ", target)
    if(target == "#pop1"){
    	var product_id = $(this).closest('.item-content').find('input#id').val();
		var promotion_id = $(this).closest('.item-content').find('input#promotion_id').val();
    	fn_get_gift_desc(product_id,promotion_id,function(status){});
    }
    else if(target == "#pop2"){
    	var product_id = $(this).closest('.item-content').find('input#id').val();
    	fn_get_promotion_desc(product_id,function(status){});
    }
    
    $(target).css('top', topD).css('left',positionX);
    if (!($(this).hasClass("show"))) {
        $(target).fadeIn(200).show();
    }
});

// $('a.popper').mouseleave(function (e) {
//     var target = '#' + ($(this).attr('data-popbox'));
//     if (!($("a.popper").hasClass("show"))) {
//         $(target).hide();
//     }
//     $(target).delay(1000).fadeOut(300).hide();
// });

function fn_get_gift_desc(product_id,promotion_id,callback){

	var data = {

		// _token : "{!! csrf_token() !!}",
		product_id : product_id,
		promotion_id : promotion_id
	};

	$.ajax({

		url 	: baseUrl+"/shop/get-promotion-gift",
		type 	: "GET",
		data 	: data,
		dataType: "json",
		contentType: "application/json",

	}).done(function(respone){

		if(respone.return.status == "01"){

			var gift = respone.gift;
			var tag = "";	
			console.log(gift);

			tag += "<table class='col-md-12'>";
			tag += "<thead>";
			tag += "<tr>";
			tag += "<th>";
			tag += "Product";
			tag += "</th>";
			tag += "<th>";
			tag += "Quantity";
			tag += "</th>";
			tag += "</tr>";
			tag += "</thead>";
			tag += "<tbody>";
			Object.keys(gift).forEach(function(el){
				// console.log("el",el);
				var urlimg = "{!!asset('')!!}";
				var img = gift[el].image;
				tag += "<tr>";
				tag += "<td>";
				tag += "<h4>"+gift[el].description+"</h4>";
				tag += "</td>";
				tag += "<td style='width:150px;'>";
				tag += "<h4>"+gift[el].quantity+"</h4>";
				tag += "</td>";
				tag += "</tr>";
			});
			tag += "</tbody>";
			tag += "</table>";

			// console.log(tag)
			$('div.content').html(tag);
			callback(respone.return.status);
		}

	}).fail(function(respone){

	});
}

function fn_get_promotion_desc(product_id){

	var data = {

		// _token : "{!! csrf_token() !!}",
		product_id : product_id
	};

	$.ajax({

		url 	: baseUrl+"/shop/get-product-package",
		type 	: "GET",
		data 	: data,
		dataType: "json",
		contentType: "application/json",

	}).done(function(respone){

		if(respone.return.status == "01"){

			var package1 = respone.package;
			var tag = "";	
			console.log(package1);

			tag += "<table class='col-md-12'>";
			tag += "<thead>";
			tag += "<tr>";
			tag += "<th>";
			tag += "Product";
			tag += "</th>";
			tag += "<th>";
			tag += "Quantity";
			tag += "</th>";
			tag += "</tr>";
			tag += "</thead>";
			tag += "<tbody>";
			Object.keys(package1).forEach(function(el){
				// console.log("el",el);
				var urlimg = "{!!asset('')!!}";
				var img = package1[el].image;
				tag += "<tr>";
				tag += "<td>";
				tag += "<h4>"+package1[el].name+"</h4>";
				tag += "</td>";
				tag += "<td style='width:150px;'>";
				tag += "<h4>"+package1[el].package_quantity+"</h4>";
				tag += "</td>";
				tag += "</tr>";
			});
			tag += "</tbody>";
			tag += "</table>";

			// console.log(tag)
			$('div.content').html(tag);
		}

	}).fail(function(respone){

	});

}

</script>

@endsection