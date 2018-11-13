@extends('layouts.joli.app')
@section('title','Delivery Status')
@section('content')
<!-- <script src="{!! asset('joli/js/plugins/smartwizard/jquery.smartWizard-2.0.min.js') !!}"></script>  -->
<!-- START BREADCRUMB -->
<ul class="breadcrumb">
    <li><a href="javascript:;">Home</a></li>                    
    <li class="{{ url('agent') }}">Mall</li>
    <li class="{{ url('agent') }}">Delivery Status</li>
</ul>
<!-- END BREADCRUMB -->
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="horizontal">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Order Status</strong> </h3>
                        <ul class="panel-controls">
                        </ul>
                    </div>
                </div>
                <div class="panel-body form-horizontal">
                    <div class="row">
                        <div class="col-md-11">
                            <div class="col-md-6">
                                
                                <p><span id="form-title"><h4>Delivery Type : {{ $orderHdr->type_description }} </h4></span></p>
                                <p><span id="form-title">Purchase Order No. : {{ $orderHdr->order_no }} </span></p>
                                <p><span id="form-title">Purchase Date : {{ $orderHdr->purchase_date }} </span></p>
                                <p><span id="form-title">Name. : {{ $orderHdr->name }} </span></p>
                                <p><span id="form-title">Contact Number : {{ $orderHdr->contect_no }} </span></p>
                            </div>
                        </div>
                        <div class="container cart-list col-md-12" style="margin-top:0px;">
                            <div class="row cart-row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="wizard" style="margin-bottom: 3cm;">
                                        <ul class="steps_{{ count($data) }} anchor">
                                            @foreach($data as $k => $v)
                                            <li>
                                                <a href="#step-1" class="" id="status-{{ $v['status'] }}" isdone="1" rel="{{ $v['sequence'] }}">
                                                    <span class="stepNumber">1</span>
                                                    <span class="stepDesc">{{ $v['description'] }}<br><small>{{ $v['sequence'] }} </small></span>
                                                </a>
                                            </li>
                                            @endforeach
                                            <!-- <li>
                                                <a href="#step-1" class="" id="status-one" isdone="1" rel="1">
                                                    <span class="stepNumber">1</span>
                                                    <span class="stepDesc">In Process<br><small>Step 1 description</small></span>
                                                </a>
                                            </li>
                                            @if($orderHdr->delivery_type == 1)
                                            <li>
                                                <a href="#step-2" class="" id="status-two" isdone="0" rel="2">
                                                    <span class="stepNumber">2</span>
                                                    <span class="stepDesc">Shipping<br><small>Step 2 description</small></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#step-3" class="" id="status-three" isdone="0" rel="3">
                                                    <span class="stepNumber">3</span>
                                                    <span class="stepDesc">Delivery<br><small>Step 3 description</small></span>                   
                                                </a>
                                            </li>
                                            @elseif($orderHdr->delivery_type == 2)
                                            <li>
                                                <a href="#step-3" class="" id="status-three" isdone="0" rel="3">
                                                    <span class="stepNumber">3</span>
                                                    <span class="stepDesc">Collect<br><small>Step 3 description</small></span>                   
                                                </a>
                                            </li>
                                            @endif
                                            <li>
                                                <a href="#step-4" class="" id="status-four" isdone="0" rel="4">
                                                    <span class="stepNumber">4</span>
                                                    <span class="stepDesc">Complete<br><small>Step 4 description</small></span>                   
                                                </a>
                                            </li> -->
                                        </ul>
                                        
                                        <div class="stepContainer" style="height: 54px; display: none;">
                                            <div id="step-1" class="content" style="display: none;">   
                                                <h4>Step 1 Content</h4>
                                                <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                                            </div>
                                            <div id="step-2" class="content" style="display: none;">
                                                <h4>Step 2 Content</h4>
                                                <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                                            </div>
                                            <div id="step-3" class="content" style="display: none;">
                                                <h4>Step 3 Content</h4>
                                                <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                                            </div>
                                            <div id="step-4" class="content" style="display: none;">
                                                <h4>Step 4 Content</h4>
                                                <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                                            </div>
                                        </div>
                                        <div class="actionBar" style="display: none;">
                                            <div class="loader">Loading</div>
                                            <a href="#" class="btn btn-primary pull-right disabled">Finish</a>
                                            <a href="#" class="btn btn-default pull-right">Next</a>
                                            <a href="#" class="btn btn-default pull-left disabled">Previous</a>
                                        </div>
                                    </div>
                                </div>
                                <div id="ordered-items">
                                    <span><b>Ordered Items</b></span>
                                    <table id="" class="table datatable" style="margin-top: 0.2cm;">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th hidden>Id</th>
                                                <th>Product Name</th>
                                                <th>Quantity</th>
                                                <th>Price/Unit</th>
                                                <th>Total Price</th>
                                                <th>Point</th>
                                                <th>Total Point</th>
                                            </tr>
                                        </thead>
                                        <tbody id="list-item">
                                            @foreach($OrderItem as $key => $value)
                                            <tr>
                                                <td>{{ $key+1 }}</td>
                                                <td hidden></td>
                                                <td>{{ $value['product_name'] }}</td>
                                                <td>{{ $value['product_qty'] }}</td>
                                                <td>{{ $value['price'] }}</td>
                                                <td>{{ $value['total_price'] }}</td>
                                                <td>{{ $value['pv'] }}</td>
                                                <td>{{ $value['total_point'] }}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>/
            </div>
        </div>
    </div>
</div>
@endsection
{{-- page level scripts --}}
@section('footer_scripts')
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script type="text/javascript">

    $(document).ready(function(){

        $('.actionBar').css('display','none');

        var orderHdr = {!! $orderHdr !!};
        var status = {!! json_encode($data) !!};
        console.log(orderHdr,status)

        // $('a.orderstatus').each(function(i){
        //     console.log(i)
        //     $(this).addClass()
        // });
        setTimeout(function(){
             for(var j=0;j<status.length;j++){

                if(status[j].status <= orderHdr.status){
                    if(status[j].status == "01"){

                        $('#status-01').addClass('selected');
                        // $('a.orderstatus').addClass('selected');
                    }
                    if(status[j].status == "02"){
                        console.log(status[j].status)
                        console.log(orderHdr.status)
                        $('#status-02').addClass('selected');
                        // $('a.orderstatus').addClass('disabled');
                    }
                    if(status[j].status == "03"){

                        $('#status-03').addClass('selected');
                        // $('a.orderstatus').addClass('disabled');
                    }
                    if(status[j].status == "04"){

                        $('#status-04').addClass('selected');
                        // $('a.orderstatus').addClass('disabled');
                    }
                     if(status[j].status == "05"){

                        $('#status-05').addClass('selected');
                        // $('a.orderstatus').addClass('disabled');
                    }
                }
                else{
                    break;
                }
            }
        },10);

       
    });

</script>

@endsection