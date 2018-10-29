@extends('layouts.joli.app')
{{-- Page title --}}
@section('title')
    Change Password
    @parent
@stop
<?php $page_title = 'Update Password'; ?>
@section('content') 

<div class="row">
    <div class="col-md-12">

        @include('components.notifications.errors')
        
        @include('components.notifications.messages')
 
        <form class="form-horizontal" method="post" action="{{ route('update.change-password') }}">
            {{ csrf_field() }}
            <input name="_method" type="hidden" value="PUT">

            <div class="panel panel-default">
				<div class="panel-heading ui-draggable-handle">
					<h3 class="panel-title"><strong>Change Password</strong></h3>
					<ul class="panel-controls">
						<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
					</ul>
				</div>
				<div class="panel-body">

					<div class="form-group">
						<label class="col-md-3 control-label">Old Password</label>
						<div class="col-md-3">
							<input class="form-control" type="password" name="old_password">
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">New Password</label>
						<div class="col-md-3">
							<input class="form-control" type="password" name="new_password">
							{{-- <span class="help-block">This is sample of text field</span> --}}
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3 control-label">Confirm New Password</label>
						<div class="col-md-2">
							<div class="input-group">
								<span class="input-group-addon"><span class="fa fa-unlock-alt"></span></span>
								<input class="form-control" type="password" name="confirm_new_password" placeholder="Confirm New Password">
							</div>
							{{-- <span class="help-block">This is sample of text field</span> --}}
						</div>
					</div>
					
				</div>
				<div class="panel-footer">
					{{-- <button class="btn btn-default">Clear Form</button> --}}
					<button class="btn btn-primary pull-right">Submit</button>
				</div>
			</div>

        </form>
    </div> 
</div>

@endsection