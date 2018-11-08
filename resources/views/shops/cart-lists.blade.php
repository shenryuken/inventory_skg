@extends('layouts.joli.app')
@include('shops.css.agent_css')
@section('title','Cart Items')
@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
    <li><a href="javascript:;">Home</a></li>                    
    <li class="{{ url('agent') }}">Mall</li>
    <li class="{{ url('agent') }}">Cart List</li>
</ul>
<!-- END BREADCRUMB -->
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="horizontal">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Cart List</strong> </h3>
                        <ul class="panel-controls">
                        </ul>
                    </div>
                </div>
                <div class="panel-body form-horizontal">
                    <div class="row">
                        <div class="col-md-11">
                            <div class="col-md-2 col-md-offset-5">
                                <p><span id="form-title"> </span></p>
                            </div>
                        </div>
                        @if(session('message'))
                        <div class="alert alert-danger" role="alert">
                            <button type="button" class="close" data-dismiss="alert">
                                <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                            </button>
                            <strong>{!! session('message') !!}</strong>
                        </div>
                        @endif
                        <div class="container cart-list" style="margin-top:0px;">
                            <div class="row cart-row">
                                <div class="col-sm-12 col-md-9">
                                    <table class="table table-actions table-cart-item" id="item-table">
                                        <thead class="">
                                            <tr>
                                                <th class="col-md-5">Product</th>
                                                <th class="col-md-3">Quantity</th>
                                                <th class="">Point</th>
                                                <th class="col-md-2">Unit Price</th>
                                                <th class="col-md-2">Total</th>
                                                <th class=""><input type="hidden" id="agent_id" value="{{ $returnData['agent_id'] }}"></th>
                                            </tr>
                                        </thead>
                                        <tbody class="item-body">
                                            @if(count($cartItems) > 0)
                                            @foreach($cartItems as $key => $value)
                                            <tr class="row-cart-item">
                                                <td class="column-cart-item">
                                                    <div class="media cart-content">
                                                        <input type="hidden" id="id" value="{{ $value['id'] }}">
                                                        <input type="hidden" id="produt_id" value="{{ $value['product_id'] }}">
                                                        <a class="thumbnail pull-left img-content" href="#"> <img class="media-object" src="{{ $value['image'] == '' ? asset('invalid_image.png') : asset('storage/'.$value['image']) }}" style="width: 72px; height: 72px;"> </a>
                                                        <div class="media-body product-name">
                                                            <h6 class="media-heading"><a href="#">{{ $value['name'] }}</a></h6>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="quantity-item">
                                                    <div class="input-group col-md-12 qty" style="text-align: center;">
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-danger btn-minus" type="button">-</button>
                                                        </span>
                                                        <input type="text" class="form-control quantity" id="quantity" value="{{ $value['total_quantity'] }}" min="1" max="200">
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-danger btn-plus" type="button">+</button>
                                                        </span>
                                                    </div>
                                                    
                                                </td>
                                                <td>
                                                   <div style="font-size: 11px;">
                                                        <strong>{{ $value['point'] }}</strong>
                                                    </div> 
                                                </td>
                                                @if(Auth::guard('admin')->check() == true)
                                                <td class=""><strong>RM{{ $value['price_staff'] }}</strong></td>
                                                <td class="tot-price-staff"><strong>WM RM{{ $value['total_price_staff'] }}</strong></td>
                                                @else
                                                <td class="unt-price" ><strong>WM RM{{ $value['price_wm'] }}<br>EM RM{{ $value['price_em'] }}</strong></td>
                                                <td class="tot-price"><strong>WM RM{{ $value['total_price_wm'] }}<br>EM RM{{ $value['total_price_em'] }}</strong></td>
                                                @endif
                                                <td class="col-sm-1 col-md-1">
                                                    <button type="button" class="btn btn-danger remove-item">
                                                        <i class="glyphicon glyphicon-trash"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                            @endforeach
                                            @else
                                            <tr>
                                                <td colspan="5" class="active" align="center">No Item</td>
                                            </tr>
                                            @endif
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-md-12 col-md-3">
                                   <div class="row" id="form-field">
                                        <div class="col-md-12">
                                            <div class="col-md-8">
                                                <p><span id="form-title"> Delivery Type </span></p>
                                                <div class="form-group">
                                                    <div class="col-md-12" id="">        
                                                        <select class="form-control delivery-type">
                                                            @foreach($deliveryType as $key => $value)
                                                            <option data-code="{{ $value['id'] }}" value="{{ $value['code'] }}" >{{ $value['description'] }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <p><span id="form-title"> Payment Type </span></p>
                                                <div class="form-group">
                                                    <div class="col-md-12" id="">        
                                                        <select class="form-control payment-type">
                                                            @foreach($paymentType as $key => $value)
                                                            <option data-code="{{ $value['id'] }}" value="{{ $value['code'] }}" >{{ $value['description'] }}</option>
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <table class="col-md-12" id="total-price">
                                        <tbody>
                                           <!--  <tr id="row-shipping">
                                                <td><h5>Shipping Fee</h5></td>
                                                <td id="col-shipping"><h5>RM{{ $returnData['shippingPrice'] }}</h5></td>
                                            </tr> -->
                                            <tr id="row-total-price">
                                                <td><h5>Total Price</h5></td>
                                                @if(Auth::guard('admin')->check() == true)
                                                <td id="col-total-price-staff">
                                                    <h5>RM{{ $returnData['totalPrice_staff'] }}</h5>
                                                </td>
                                                @else
                                                <td id="col-total-price"><h5>
                                                    WM RM{{ $returnData['totalPrice_wm'] }}
                                                    <br>
                                                    EM RM{{ $returnData['totalPrice_em'] }}</h5>
                                                </td>
                                                @endif
                                            </tr>
                                            <tr>
                                                <td colspan="2"><hr></td>
                                            </tr>
                                            <!-- <tr id="row-grand-total">
                                                <td><h4>Grand Total</h4></td>
                                                <td id="col-grand-total"><h4>WM RM{{ $returnData['grandTotalPrice_wm'] }}<br>EM RM{{ $returnData['grandTotalPrice_em'] }}</h4></td>
                                            </tr> -->
                                            <tr>
                                                <td>
                                                    <button type="button" class="btn btn-default continue-shopping">
                                                        Go Shopping <i class="glyphicon glyphicon-shopping-cart"></i>
                                                    </button>
                                                </td>
                                                <td>
                                                    <button type="button" class="btn btn-success checkout-item">
                                                        Checkout <i class="glyphicon glyphicon-ok"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
@section('footer_scripts')
<script type="text/javascript">

    var baseUrl = window.location.origin;
    var cartItems = {!! json_encode($cartItems) !!};

    $(".btn-minus").on("click",function(){
        console.log($(this).closest('.qty').find('input.quantity').val())
        var now = $(this).closest('.qty').find('input.quantity').val();
        var productid = $(this).closest('.row-cart-item').children('.column-cart-item').children('.cart-content').find('input#produt_id').val();
        // console.log(productid)

        if ($.isNumeric(now)){
            if (parseInt(now) -1 > 0){ now--;}
            $(this).closest('.qty').find('input.quantity').val(now);
            fn_calculate_order($(this).closest('.row-cart-item'),now,productid);
        }else{
            $(this).closest('.qty').find('input.quantity').val("1");
        }
    });
    $(".btn-plus").on("click",function(){
        // console.log($(this).closest('.qty').find('input.quantity').val())
        var now = $(this).closest('.qty').find('input.quantity').val();
        var max = $(this).closest('.qty').find('input.quantity').attr('max');
        var productid = $(this).closest('.row-cart-item').children('.column-cart-item').children('.cart-content').find('input#produt_id').val();
        // console.log(productid)

        if(now == max){
             $(this).closest('.qty').find('input.quantity').val(max);
        }
        else{
            if ($.isNumeric(now)){
                now = parseInt(now)+1;
                $(this).closest('.qty').find('input.quantity').val(parseInt(now));
                fn_calculate_order($(this).closest('.row-cart-item'),now,productid);
            }else{
                $(this).closest('.qty').find('input.quantity').val("1");
            }
        }
    });

    $('.quantity').keyup(function(){
        var value = $(this).val();
        value = value.replace(/[^\d]/g, '');
        $(this).val(value);
    });

    $('.quantity').on('change',function(){

        var val = $(this).val();
        var min = $(this).attr('min');
        var max = $(this).attr('max');
        // console.log(val,max)

        if(parseFloat(val) == 0 || val == ""){
            $(this).val(min);
        }
        else if(parseFloat(val) > parseFloat(max)){
            $(this).val(max);
        }
        

        var now = $(this).val();
        var productid = $(this).closest('.row-cart-item').children('.column-cart-item').children('.cart-content').find('input#produt_id').val();
        // console.log(productid,now)
        fn_calculate_order($(this).closest('.row-cart-item'),now,productid);
    });

    function fn_calculate_order(table,quantity,productid){

        // var cartItems = {!! json_encode($cartItems) !!};

        var newTotal_staff = 0.00;
        var newTotal_wm = 0.00;
        var newTotal_em = 0.00;
        quantity = parseInt(quantity);
        console.log(quantity)

        for(var i=0;i<cartItems.length;i++){
            if(cartItems[i].product_id == productid){

                newTotal_staff = parseFloat(cartItems[i].price_staff) * parseInt(quantity);
                newTotal_wm = parseFloat(cartItems[i].price_wm) * parseInt(quantity);
                newTotal_em = parseFloat(cartItems[i].price_em) * parseInt(quantity);
                
                newTotal_staff = newTotal_staff.toFixed(2);
                newTotal_wm = newTotal_wm.toFixed(2);
                newTotal_em = newTotal_em.toFixed(2);

                cartItems[i].total_price_staff = newTotal_staff;
                cartItems[i].total_price_wm = newTotal_wm;
                cartItems[i].total_price_em = newTotal_em;
                quantity = quantity.toString();
                
                newTotal_staff = newTotal_staff.replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
                newTotal_wm = newTotal_wm.replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
                newTotal_em = newTotal_em.replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
                cartItems[i].total_quantity = quantity;

                table.children('.tot-price-staff').html('<strong>WM RM'+newTotal_staff);
                table.children('.tot-price').html('<strong>WM RM'+newTotal_wm+'<br>EM RM'+newTotal_em+'</strong>');
                break;
            }
        }

        // console.log(table.children('.column-tot-price'),cartItems)
        
        var newTotal_price_staff = 0.00;
        var newTotal_price_wm = 0.00;
        var newTotal_price_em = 0.00;
        console.log(cartItems)
        for(var i=0;i<cartItems.length;i++){

            newTotal_price_staff = newTotal_price_staff + parseFloat(cartItems[i].total_price_staff.replace(",",""));
            newTotal_price_wm = newTotal_price_wm + parseFloat(cartItems[i].total_price_wm.replace(",",""));
            newTotal_price_em = newTotal_price_em + parseFloat(cartItems[i].total_price_em.replace(",",""));
        }

        newTotal_price_staff = newTotal_price_staff.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
        newTotal_price_wm = newTotal_price_wm.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
        newTotal_price_em = newTotal_price_em.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, '$1,');

        console.log($('#total-price').children('tbody').children('tr#row-total-price').children('td#col-total-price-staff').html('<h5>RM'+newTotal_price_staff+'</h5>'))
        console.log($('#total-price').children('tbody').children('tr#row-total-price').children('td#col-total-price').html('<h5>WM RM'+newTotal_price_wm+'<br>EM RM'+newTotal_price_em+'</h5>'))
        console.log($('#total-price').children('tbody').children('tr#row-grand-total').children('td#col-grand-total').html('<h4>WM RM'+newTotal_price_wm+'<br>EM RM'+newTotal_price_em+'</h4>'))
    }
    
    $('.remove-item').on('click', function () {
        console.log($(this).closest('.row-cart-item').find('input#id').val())
        var id = $(this).closest('.row-cart-item').find('input#id').val();

        var data = {

            _token : "{!! csrf_token() !!}",
            item   :  id
        };

        $.ajax({

            url : baseUrl+"/shop/delete-cart-item",
            dataType : "json",
            type : "POST",
            data: JSON.stringify(data),
            contentType : "application/json"

        }).done(function(response){

            if(response.return.status == "01"){
                document.location.reload();
            }

            console.log(response)

        }).fail(function(){


        });
    });

    // $('.qty').find('.quantity').change(function(){
    // $('.qty').children('input.quantity, select').each(function() {
    //     $(this).change(function() {
    //         console.log('fuck')
    //         var id = $(this).closest('.row-cart-item').find('input#id').val();
    //         var quantity = $(this).closest('.quantity-item').find('.qty').find('input.quantity').val();
    //         console.log(quantity)
    //         // console.log($(this).closest('.quantity-item').find('.quantity').val())

    //         var data = {

    //             _token : "{!! csrf_token() !!}",
    //             id   :  id,
    //             quantity : quantity
    //         };

    //         $.ajax({

    //             url : "/agent/update_quantity_item",
    //             dataType : "json",
    //             type : "POST",
    //             data: JSON.stringify(data),
    //             contentType : "application/json"

    //         }).done(function(response){

    //             if(response.return.status == "01"){
    //                 // document.location.reload();
    //             }

    //             console.log(response)

    //         }).fail(function(){

    //         });
    //     });
    // });

    $('.continue-shopping').click(function(){
        
        window.location.href = "{{ url('shop/skg-mall') }}";
    })

    $('.checkout-item').click(function(){
       
        var agent_id = $('#agent_id').val();
        var table_item = $('.table-cart-item').find('.row-cart-item');
        var delivery_type = $('.delivery-type').val();
        var delivery_id = $('.delivery-type').children('option').data('code');

        // window.location.href = "{{ url('agent/get_place_order_items') }}"+"/"+agent_id+"/"+delivery_type;

        console.log($(this).closest('.cart-row').children('.table-cart-item'))
        console.log(table_item)

        var lv_data = [];
        for(var i=0;i<table_item.length;i++){

            var product_id = table_item.eq(i).find('td.column-cart-item').find('.cart-content').children('input').eq(1).val();
            var quantity = table_item.eq(i).find('td.quantity-item').find('.qty').children('input').val();

            lv_data.push({

                product_id : product_id,
                quantity : quantity
            });
        }

        fn_update_quantity(lv_data,agent_id,function(status){

            if(status == "01"){
                window.location.href = "{{ url('shop/checkout-items') }}"+"/"+agent_id+"/"+delivery_type
            }
        });

    });

    function fn_update_quantity(quantity,agent_id,callback){
        console.log(baseUrl)
        var data = {

            _token : "{!! csrf_token() !!}",
            agent_id   :  agent_id,
            quantity : quantity
        };

        $.ajax({

            url : baseUrl+"/shop/update-quantity-items",
            dataType : "json",
            type : "POST",
            data: JSON.stringify(data),
            contentType : "application/json"

        }).done(function(response){

            // if(response.return.status == "01"){
            //     // document.location.reload();
            // }
            callback(response.return.status);

            console.log(response)

        }).fail(function(){

        });
    }

    $('.alert').delay(3000).fadeOut(300).hide(0); 

</script>
@endsection