@extends('layouts.joli.app')

{{-- Page title --}}
@section('title')
    My Vault
    @parent
@stop

@section('content')
<?php $page_title = 'My Vault'; ?>

<div class="row">
    <div class="col-lg-12" style="">
        <div class="hpanel">
            <div class="panel-body">
                <h3>My Vault</h3>
            </div>
        </div>
    </div>
</div>
@if(Auth::check())
<div class="row">
    <div class="col-md-4" style="">
        <div class="hpanel hbggreen">
            <div class="panel-body">
                <div class="text-center">
                    <h3>Vault</h3>
                    <p class="text-big font-light">
                        {{ $wallet->vault or 0}}
                    </p>
                    <!-- <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small> -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4" style="">
        <div class="hpanel hbgblue">
            <div class="panel-body">
                <div class="text-center">
                    <h3>Available Advance</h3>
                    <p class="text-big font-light">
                        {{ $wallet->advance or 0}}
                    </p>
                    <!-- <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small> -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4" style="">
        <div class="hpanel hbgyellow">
            <div class="panel-body">
                <div class="text-center">
                    <h3>PTS</h3>
                    <p class="text-big font-light">
                        {{ $wallet->pv or 0}}{{-- 750 --}}
                    </p>
                    <!-- <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small> -->
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="col-md-3" style="">
        <div class="hpanel hbgred">
            <div class="panel-body">
                <div class="text-center">
                    <h3>SDO GPV</h3>
                    <p class="text-big font-light">
                        {{ $wallet->do_pv or 0}}{{-- 43 --}}
                    </p>
                </div>
            </div>
        </div>
    </div> -->
</div>
@endif
<div class="row">
    <div class="col-lg-12">
        @component('components.notifications.errors')
        @endcomponent

        @include('components.notifications.messages')
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">
                <h3 class="panel-title"><strong>Maintain Account (Own Account)</strong></h3>
            </div>
            <div class="panel-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Product Name</th>
                            <th>Available</th>
                            <th>Price/Unit</th>
                            <th>PTS/Unit</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $product)
                        <tr>
                            <td>{{ $product->product_name }}</td>
                            <td>{{ $product->price }}</td>
                            <td>{{ $product->pv }}</td>
                        </tr>
                        @endforeach
                    </tbody> 
                </table>
            </div>
        </div>
    </div>
</div>

@endsection
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
<!-- END THIS PAGE PLUGINS-->
<!-- END SCRIPTS -->
@stop