
<div class="panel panel-default">
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Transfer Point</strong></h3>
		<ul class="panel-controls">
			<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
		</ul>
	</div>
	<div class="panel-body">

		<div class="form-group">
			<label class="col-md-3 control-label">Point To Transfer</label>
			<div class="col-md-3">
				<input class="form-control" type="text" name="point_to_transfer">
			</div>
		</div>

		<div class="form-group">
			<label class="col-md-3 control-label">Transfer To</label>
			<div class="col-md-3">
				<input class="form-control" type="text" name="username">
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>

		<div class="form-group">
			<label class="col-md-3 control-label">Security Code</label>
			<div class="col-md-2">
				<div class="input-group">
					<span class="input-group-addon"><span class="fa fa-unlock-alt"></span></span>
					<input class="form-control" type="password" name="security_code" placeholder="Security Code Here">
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