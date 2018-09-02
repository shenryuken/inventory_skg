@extends('layouts.joli.app')
@section('title','Stock In Detail')

@section('content')
 <!-- START BREADCRUMB -->
<ul class="breadcrumb">
        <li><a href="{{ url('home') }}">Home</a></li>                    
        <li><a href="{{ url('stock/report/balance') }}">Stock In Detail</a></li>
    </ul>
    <!-- END BREADCRUMB -->  
    
    
<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    <div class="row">
        <div class="col-sm-12">
 @if(session("message"))        
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                {{ session("message") }}
            </div>
        </div>
 @endif
 @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
</div>
        <div class="row">
                <div class="col-md-12">
                        <div class="panel panel-default">
                                        <div class="panel-heading">
                                                        <div class="actions pull-right">
                                                                <a href="{{ url('inventory/stock/list') }}" class="btn btn-default  btn-sm btn-circle" title="Stock In" >
                                                                        <i class="fa fa-list"></i> Stock In List</a>
                                                        </div>
                                                        <h4><strong>Stock In No:</strong>  {{ $stock->stock_in_no }} </h4>
                                                        <h4><strong>Date:</strong>  {{ Carbon\Carbon::parse($stock->stock_date)->format('d/m/Y') }} </h4>
                                                        <h4><strong>Description:</strong>  {{ $stock->description }} </h4>
                                        </div>
                                <div class="panel-body">
                                    <div class="col-md-6">
                                            <div class="table-responsive">
                                                    <table class="table table-hover table-bordered datatable" >
                                                            <thead>
                                                                    <tr>
                                                                       <th>Product name</th>
                                                                       <th>Product Code</th>                                                                                              
                                                                       <th>Product S/N</th>
                                                                    </tr>
                                                            </thead>
                                                            <tbody>
                                                                    @foreach($stock_item as $item)
                                                                    <tr>
                                                                        
                                                                        <td>{{$item->products->name}}</td>
                                                                        <td>{{$item->products->code}}</td>
                                                                        <td>{{$item->barcode}}</td>
                                                                        
                                                                    </tr>
                                                                    @endforeach
                                                            </tbody>
                                                    </table>
                                            </div>
                                    </div>
                                
                            </div>
                        </div>
                </div>
            </div>
    

</div>
@endsection
@section('footer_scripts')
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>

@endsection
