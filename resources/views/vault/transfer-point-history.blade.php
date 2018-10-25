@extends('layouts.joli.app')

{{-- Page title --}}
@section('title')
    Transfer Point History
    @parent
@stop

@section('content')
<?php $page_title = 'Transfer Point History'; ?>

@php
	$transaction_type ='Transfer';
@endphp

@if(Auth::guard('admin')->check())
<div class="row">
    <div class="col-md-12">
        
        <!-- START DATATABLE EXPORT -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Transfer Point History</h3>
                <div class="btn-group pull-right">
                    <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/json.png') }}" width="24"/> JSON
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false',ignoreColumn:'[2,3]'});">
                                <img src="{{ asset('themes/Joli/img/icons/json.png') }}" width="24"/> JSON (ignoreColumn)
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'true'});">
                                <img src="{{ asset('themes/Joli/img/icons/json.png')}}" width="24"/> JSON (with Escape)
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'xml',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/xml.png') }}" width="24"/> XML
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'sql'});">
                                <img src="{{ asset('themes/Joli/img/icons/sql.png') }}" width="24"/> SQL
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'csv',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/csv.png') }}" width="24"/> CSV
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'txt',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/txt.png') }}" width="24"/> TXT
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'excel',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/xls.png') }}" width="24"/> XLS
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'doc',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/word.png')}}" width="24"/> Word
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'powerpoint',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/ppt.png') }}" width="24"/> PowerPoint
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'png',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/png.png') }}" width="24"/> PNG
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'pdf',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/pdf.png') }}" width="24"/> PDF
                            </a>
                        </li>
                    </ul>
                </div>                                    
            </div>
            <div class="panel-body">
                <table id="customers2" class="table datatable">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Date</th>
                            <th>From User</th>
                            <th>To User</th>
                            <th>Total Point</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $row = 1;
                        ?>
                        @foreach($pointTransactions as $transaction)
                        <tr>
                            <td>
                                {{ $row++ }}
                            </td>
                            <td>
                                {{ $transaction->date_time_sent }}
                            </td>
                            <td>
                                {{ $transaction->pointTransactionable->username }}
                            </td>
                            <td>
                                {{ App\User::find($transaction->to_user_id)->username }}
                            </td>
                            <td>
                                {{ $transaction->point }}
                            </td>
                            <td>
                                {{ $transaction->status }}
                            </td>
                        </tr>
                        @endforeach()
                    </tbody>
                </table>
                    
            </div>
        </div>
        <!-- END DATATABLE EXPORT -->
    </div>
</div>
@elseif(Auth::check())
<div class="row">
    <div class="col-md-12">
        
        <!-- START DATATABLE EXPORT -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Transfer Point History</h3>
                <div class="btn-group pull-right">
                    <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i> Export Data</button>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/json.png') }}" width="24"/> JSON
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'false',ignoreColumn:'[2,3]'});">
                                <img src="{{ asset('themes/Joli/img/icons/json.png') }}" width="24"/> JSON (ignoreColumn)
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'json',escape:'true'});">
                                <img src="{{ asset('themes/Joli/img/icons/json.png')}}" width="24"/> JSON (with Escape)
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'xml',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/xml.png') }}" width="24"/> XML
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'sql'});">
                                <img src="{{ asset('themes/Joli/img/icons/sql.png') }}" width="24"/> SQL
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'csv',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/csv.png') }}" width="24"/> CSV
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'txt',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/txt.png') }}" width="24"/> TXT
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'excel',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/xls.png') }}" width="24"/> XLS
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'doc',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/word.png')}}" width="24"/> Word
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'powerpoint',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/ppt.png') }}" width="24"/> PowerPoint
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'png',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/png.png') }}" width="24"/> PNG
                            </a>
                        </li>
                        <li>
                            <a href="#" onClick ="$('#customers2').tableExport({type:'pdf',escape:'false'});">
                                <img src="{{ asset('themes/Joli/img/icons/pdf.png') }}" width="24"/> PDF
                            </a>
                        </li>
                    </ul>
                </div>                                    
            </div>
            <div class="panel-body">
                <table id="customers2" class="table datatable table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Date</th>
                            <th>Transaction Type</th>
                            <th>From User</th>
                            <th>To User</th>
                            <th>Total Point</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $row = 1;
                        ?>
                        @foreach($pointTransactions as $transaction)

                        @if(!is_null($transaction->pointTransactionable->username) && ($transaction->pointTransactionable->username == Auth::user()->username) )
                            @php 
	                            $transaction_type = "Transfer"; 
	                            $class = "danger";
                            @endphp
                        @else
                        	@php 
	                        	$transaction_type = "Receive"; 
	                        	$class = "success";
                        	@endphp
                    	@endif


                        <tr class="{{ $class }}">
                            <td>
                                {{ $row++ }}
                            </td>
                            <td>
                                {{ $transaction->date_time_sent }}
                            </td>
                            <td>
                            	{{ $transaction_type }}
                            </td>
                            <td>
                            	@if($transaction_type == "Transfer")
                            	
                            	@else
                            		{{ $transaction->pointTransactionable->username }}
                            	@endif
                            </td>
                            <td>
                            	@if($transaction_type == "Receive")
                            	
                            	@else
                                {{ App\User::find($transaction->to_user_id)->username }}
                                @endif
                            </td>
                            <td>
                                {{ $transaction->point }}
                            </td>
                            <td>
                                {{ $transaction->status }}
                            </td>
                        </tr>
                        @endforeach()
                    </tbody>
                </table>
                    
            </div>
        </div>
        <!-- END DATATABLE EXPORT -->
    </div>
</div>

@endif

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