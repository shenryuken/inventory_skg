
@extends('layouts.joli.app')
@section('title','Product S/N Listing')
<style>
#table_listing{
    font-size: 1.2rem;
}
textarea {
   resize: none;
}
</style>
@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
	<li><a href="{{ url('home') }}">Home</a></li>                    
	<li><a href="{{ url('inventory/stock/list') }}">Product S/N Listing</a></li>
</ul>
<!-- END BREADCRUMB -->   

<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    <!-- START RESPONSIVE TABLES -->
    <div class="row"><div class="col-sm-12">
 @if(session("message"))        
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                {{ session("message") }}
            </div>
        </div>
 @endif
 @if(session("errorid"))
     <div class="col-sm-12">
         <div class="alert alert-danger">
             <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
             {{ session("errorid") }}
         </div>
     </div>
 @endif
    </div>

    <div class="row">
            <div class="col-md-12">

                    <div class="panel panel-default">
                            <div class="panel-heading">
                            <h3 class="panel-title">Product S/N Listing for <strong>{{$product->name}}</strong></h3>
                            </div>
                            
                            <div class="panel-body"> 
                                        <div class="table-responsive">
                                            <table class="table table-striped" id="table_listing">
                                                <thead>
                                                    <tr>
                                                        <th>Product S/N</th>                                                               
                                                        <th>Stock In Number</th>
                                                        <th>Stock In Date</th>                  
                                                                            
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                @if(count($barcodes) > 0)
                                                    @php $i = 1; @endphp
                                                    @foreach($barcodes as $barcode)          
                                                        <tr>
                                                            <td>{{ $barcode->barcode }} </td>                                                            
                                                            <td>{{ $barcode->stocks->stock_in_no }} </td>
                                                            <td data-order="{{ Carbon\Carbon::parse($barcode->stocks->stock_date)}}">{{ Carbon\Carbon::parse($barcode->stocks->stock_date)->format('d/m/Y') }} </td>
                                                            
                                                           
                                                            
                                                        </tr>
                                                    @endforeach
                                                @else
                                                @endif
                                                </tbody>
                                            </table>
                                        </div>
                            </div>
                    </div>
            </div>
    </div>



</div>
@endsection
{{-- page level scripts --}}
@section('footer_scripts')
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
      <script>
            $(document).ready(function() {

                var t = $('#table_listing').DataTable({
                    "order": [],
                    "columnDefs": [
                                { targets: 'no-sort', orderable: false }
                                ],
                    "oLanguage": {
                            "sSearch": "Search S/N"
                        }            
                });

                
            })
               

    

        
        </script>
@endsection
