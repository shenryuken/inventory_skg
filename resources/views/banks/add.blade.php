@extends('layouts.joli.app')

{{-- Page title --}}
@section('title')
    Create Bank
    @parent
@stop
<?php $page_title = 'Bank'; ?>
@section('content')

<div class="row">
    <div class="col-md-12">
    	@component('components.notifications.errors', ['errors' => $errors])
		@endcomponent

		@include('components.notifications.messages')
		
		@if(Auth::guard('admin')->check())
	    <form class="form-horizontal" method="post" action="{{ url('/bank') }}">
		    <div class="panel panel-default">
		      {{ csrf_field() }}
		  
	            <div class="panel-heading">
	                <h3 class="panel-title"><strong>Bank</strong></h3>
	                <ul class="panel-controls">
	                    <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
	                </ul>
	            </div>
	      
	            @component('components.forms.bank', [ 'bank' => isset($bank) ? $bank : '' ])
        		@endcomponent
			    
		    </div>
	    </form>
	    @else
			<h2>Yo dot not have permission for this action</h2>
	    @endif
	</div>
  <!-- /.box -->
</div>


@endsection
{{-- page level scripts --}}
@section('footer_scripts')
<script>

function SelectCheck(nameSelect)
{
    if(nameSelect){
        OptionValue = document.getElementById("Option").value;
        if(OptionValue == nameSelect.value){
            document.getElementById("origin-div").style.display = "block";
        }
        else{
            document.getElementById("origin-div").style.display = "none";
        }
    }
    else{
        document.getElementById("origin-div").style.display = "none";
    }
}


</script>
@stop