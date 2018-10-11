@extends('layouts.joli.app')

{{-- Page title --}}
<?php $page_title = 'Admins - Register Member'; ?>
@section('content')
<div class="col-md-12">
    @if (count($errors) > 0)
      <div class="alert alert-danger">
          <ul>
          @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
          @endforeach
          </ul>
      </div>
    @endif  
    
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
          <p>{{ $message }}</p>
        </div>
    @endif
    
    @if ($message = Session::get('fail'))
        <div class="alert alert-danger">
          <p>{{ $message }}</p>
        </div>
    @endif    

    @if ($message = Session::get('status'))
        <div class="alert alert-success">
          <p>{{ $message }}</p>
        </div>
    @endif     

    <form class="form-horizontal" method="post" action="{{ url('registers/member') }}" enctype="multipart/form-data">
      {{csrf_field()}}
    
      @include('components.forms.member')

    </form>
  
</div>
@endsection
@section('footer_scripts')
<!-- DataTables -->

<!-- THIS PAGE PLUGINS -->
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-datepicker.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-timepicker.min.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-colorpicker.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-file-input.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-select.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tagsinput/jquery.tagsinput.min.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/dropzone/dropzone.min.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/fileinput/fileinput.min.js')}}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/bootstrap/bootstrap-select.js')}}"></script>
<!-- END THIS PAGE PLUGINS -->
<script>
  $(function(){
    $("#file-simple").fileinput({
      showUpload: false,
      showCaption: false,
      browseClass: "btn btn-danger",
      fileType: "any"
    });
    $("#filetree").fileTree({
      root: '/',
      script: 'assets/filetree/jqueryFileTree.php',
      expandSpeed: 100,
      collapseSpeed: 100,
      multiFolder: false
    }, function(file) {
        alert(file);
        }, function(dir){
          setTimeout(function(){
            page_content_onresize();
          },200);
        });
  });
</script>
{{-- Copy Value of Name to Account Holde Name field if check box same as above is ticked--}}
<script>
  function copyTextValue(bf) {
  var text1 = bf.checked ? document.getElementById("name").value : '';
  document.getElementById("acc_holder_name").value = text1;
}
</script>
{{-- Check Matching Password --}}
<script type="text/javascript">
  function checkPass()
  {
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pass1');
    var pass2 = document.getElementById('pass2');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if(pass1.value == pass2.value){
      //The passwords match.
      //Set the color to the good color and inform
      //the user that they have entered the correct password
      pass2.style.backgroundColor = goodColor;
      message.style.color = goodColor;
      message.innerHTML = "Passwords Match!"
    }else{
      //The passwords do not match.
      //Set the color to the bad color and
      //notify the user.
      pass2.style.backgroundColor = badColor;
      message.style.color = badColor;
      message.innerHTML = "Passwords Do Not Match!"
    }
  }
</script>
<!-- END SCRIPTS -->
@stop