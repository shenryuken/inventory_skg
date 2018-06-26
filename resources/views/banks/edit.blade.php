@extends('layouts.joli.app')
{{-- Page title --}}
<?php $page_title = 'Edit Bank'; ?>
@section('content')
<div class="row">

  @component('components.notifications.errors', ['errors' => $errors])
  @endcomponent

  @include('components.notifications.messages')

  <div class="col-md-12">
    <form class="form-horizontal" method="post" action="{{ action('BankController@update', $bank->id) }}">
      {{ csrf_field() }}
      <input name="_method" type="hidden" value="PUT">
      @if(Auth::guard('admin')->check())
      <input type="hidden" name="user_id" value="{{ Auth::guard('admin')->user()->id }}">
      
      <div class="panel panel-default">
        <div class="panel-heading ui-draggable-handle">
          <h3 class="panel-title"><strong>Edit - {{ $bank->name }}</strong></h3>
          <ul class="panel-controls">
            <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
          </ul>
        </div>
        
        @component('components.forms.bank', [ 'bank' => $bank ])
        @endcomponent
        
      </div>
      @else
      {{ "You Do Not Have Permission For This Page !!"}}
      @endif
    </form>
  </div>
</div>
@endsection
{{-- page level scripts --}}
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
</script>
@stop