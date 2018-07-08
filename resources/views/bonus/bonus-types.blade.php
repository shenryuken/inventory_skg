@extends('layouts.homer.app')


{{-- Page title --}}
@section('title')
Bonus Types
@parent
@stop

@section('header_styles')
<link rel="stylesheet" href="{{ asset('themes/Homer/vendor/datatables.net-bs/css/dataTables.bootstrap.min.css') }}" type="text/css" />
@stop

<?php $page_title = 'Bonus Types'; ?>

@section('content')
<div class="row">
	<div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Bonus History
            </div>
            <div class="panel-body">
	      <table id="example1" class="table table-bordered table-striped">
	        <thead>
		        <tr>
		          <th>No.</th>
		          <th>Name</th>
		          <th>Value</th>
		          <th>Rank</th>
		          <th>Term</th>
		          <th>Duration</th>
		          <th>Duration Type</th>
		          <th>Description</th>
		          <th>Action</th>
		        </tr>
	        </thead>
	        <tbody>
	        <?php
	        	$row = 1;
	        ?>

		        @foreach($bonus_types as $btype)
		        <tr>
		          <td>{{ $row++ }}</td>
		          <td>
		            {{ $btype->name }}
		          </td>
		          <td>
		            {{ $btype->value }}
		          </td>
		          <td>
		            {{ $btype->rank }}
		          </td>
		          <td>
		            {{ $btype->term }}
		          </td>
		          <td>
		            {{ $btype->duration }}
		          </td>
		          <td>
		            {{ $btype->duration_type }}
		          </td>
		          <td>
		            {{ $btype->description }}
		          </td>
		          <td>
				  	<a href="{{ url('bonus/'.$btype->id.'/edit-bonus-type') }}">Edit</a>	
		          </td>
		        </tr>
		    	@endforeach()
	    	
	        </tbody>
	        <tfoot>
		        <tr>
		          <th>No.</th>
		          <th>Name</th>
		          <th>Value</th>
		          <th>Rank</th>
		          <th>Term</th>
		          <th>Duration</th>
		          <th>Duration Type</th>
		          <th>Description</th>
		          <th>Action</th>
		        </tr>
	        </tfoot>
	      </table>
	    </div>
	    <!-- /.box-body -->
	  </div>
	  <!-- /.box -->
	  @if ($message = Session::get('success'))

			<div class="alert alert-success alert-block">

				<button type="button" class="close" data-dismiss="alert">×</button>

			        <strong>{{ $message }}</strong>

			</div>
			
			<img src="{{ asset( Session::get('file') ) }}">

	   @endif
	</div>
	<!-- /.col -->
	</div>
	<!-- /.row -->
@stop
{{-- page level scripts --}}
@section('footer_scripts')
<!-- DataTables -->
<script src="{{ asset('themes/Homer/vendor/datatables/media/js/jquery.dataTables.min.js')}}"></script>
<script src="{{ asset('themes/Homer/vendor/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
<!-- DataTables buttons scripts -->
<script src="{{ asset('themes/Homer/vendor/pdfmake/build/pdfmake.min.js')}}"></script>
<script src="{{ asset('themes/Homer/vendor/pdfmake/build/vfs_fonts.js')}}"></script>
<script src="{{ asset('themes/Homer/vendor/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{ asset('themes/Homer/vendor/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{ asset('themes/Homer/vendor/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{ asset('themes/Homer/vendor/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
<script>
$(function () {
    // Initialize Example 2
    //$('#example2').dataTable();
    $('#example1').dataTable( {
        dom: "<'row'<'col-sm-4'l><'col-sm-4 text-center'B><'col-sm-4'f>>tp",
        "lengthMenu": [ [10, 25, 50, -1], [10, 25, 50, "All"] ],
        buttons: [
                {extend: 'copy',className: 'btn-sm'},
                {extend: 'csv',title: 'ExampleFile', className: 'btn-sm'},
                {extend: 'pdf', title: 'ExampleFile', className: 'btn-sm'},
                {extend: 'print',className: 'btn-sm'}
            ]
        });
    });
</script>
@stop

