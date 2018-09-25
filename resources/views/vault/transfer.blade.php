@extends('layouts.joli.app')

{{-- Page title --}}
@section('title')
    User Lists
    @parent
@stop

@section('content')
<?php $page_title = 'User Lists'; ?>

<div class="row">
    <div class="col-lg-12" style="">
        <div class="hpanel">
            <div class="panel-body">
                <h3>My Wallet</h3>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-3" style="">
        <div class="hpanel hbggreen">
            <div class="panel-body">
                <div class="text-center">
                    <h3>Current PV</h3>
                    <p class="text-big font-light">
                        {{ $wallet->current_pv or 0}}
                    </p>
                    <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3" style="">
        <div class="hpanel hbgblue">
            <div class="panel-body">
                <div class="text-center">
                    <h3>Available PV</h3>
                    <p class="text-big font-light">
                        {{ $wallet->pv or 0}}
                    </p>
                    <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3" style="">
        <div class="hpanel hbgyellow">
            <div class="panel-body">
                <div class="text-center">
                    <h3>DO GPV</h3>
                    <p class="text-big font-light">
                        {{ $wallet->do_pv or 0}}{{-- 750 --}}
                    </p>
                    <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3" style="">
        <div class="hpanel hbgred">
            <div class="panel-body">
                <div class="text-center">
                    <h3>SDO GPV</h3>
                    <p class="text-big font-light">
                        {{ $wallet->do_pv or 0}}{{-- 43 --}}
                    </p>
                    <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Tranfer Point
            </div>
            <div class="panel-body">
                <form class="form-horizontal" method="post" action="{{ url('vault/tranfer-point') }}">
                	{{csrf_field()}}
    
      				@include('components.forms.transfer-point')

                </form>
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