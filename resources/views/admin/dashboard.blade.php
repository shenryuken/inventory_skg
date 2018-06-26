@extends('layouts.joli.app')
{{-- Page title --}}
@section('title')
    Dashboard
    @parent
@stop
@section('content')
<?php $page_title = 'Admin Dashboard'; ?>

              


@endsection
@section('footer_scripts')
<!-- START THIS PAGE PLUGINS-->        
<script type='text/javascript' src="{{ asset('themes/Joli/js/plugins/icheck/icheck.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>

<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/morris/raphael-min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/morris/morris.min.js') }}"></script>
<!-- END THIS PAGE PLUGINS-->    

@stop