@extends('layouts.joli.app')
{{-- Page title --}}
@section('title')
Upload IC
@parent
@stop
@section('content')
<?php
$page_title = 'Upload MyKad\Passport';
?>
<div class="row">
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
	<div class="col-md-12">
        @if(is_null($user->profile->id_pic) || empty($user->profile->id_pic))
		<form enctype="multipart/form-data" class="form-horizontal" method="post" action="{{ route('upload.ic.post')}}">
		<div class="panel panel-default">
			<div class="panel-body">
				<p><strong>Please Make Sure Upload MyKad/Passport Only - Other than that are not valid and will not be approve!</strong></p>
				
					{{ csrf_field() }}
					<div class="form-group">
						<div class="col-md-12">
							<label>MyKad/Passport</label><br/>
							<input type="file" multiple id="file-simple" name="ic_image"/>
						</div>
					</div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <label>Security Code</label><br/>
                            <input type="password" name="security_code"/>
                        </div>
                    </div>


				
			</div>
			<div class="panel-footer">
				<button type="submit" class="btn btn-info pull-right" v-on:click="click" :disabled="clicked">Update</button>
			</div>
		</div>
        
		</form>
        @else
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="col-md-12 col-lg-12 " align="center"> <img alt="User Pic" src="{{ asset('app/mykad/'.$user->profile->id_pic) }}" class="img-responsive">
                </div>
            </div>
            <div class="panel-footer">
                <a class="btn btn-info pull-right" href="{{url('user/profile'.$user->profile->id)}}">Back</a>
            </div>
        </div>
        @endif
		
	</div>
</div>
@endsection
@section('footer_scripts')            
    <!-- START SCRIPTS -->
   
    <!-- START THIS PAGE PLUGINS-->        
    <script type='text/javascript' src="{{ asset('themes/Joli/js/plugins/icheck/icheck.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>
    
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/dropzone/dropzone.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/fileinput/fileinput.min.js') }}"></script>        
    <script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/filetree/jqueryFileTree.js') }}"></script>      
    <!-- END THIS PAGE PLUGINS-->  

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
    <!-- END SCRIPTS -->              
@stop