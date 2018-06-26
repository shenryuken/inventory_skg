<div class="panel-body">
	<div class="form-group">
		<label for="bank_name" class="col-md-2 control-label" >Bank Name</label>
		<div class="col-md-2">
			<input type="text" class="form-control" name="bank_name" value="{{ $bank->name or old('bank_name')}}" style="text-transform: capitalize">
		</div>
	</div>
	<div class="form-group">
		<label for="code" class="col-md-2 control-label">Code</label>
		<div class="col-md-1">
			<input type="text" class="form-control" name="code" value="{{ $bank->code or old('code')}}">
		</div>
	</div>
	<!-- select -->
	<div class="form-group">
		<label class="col-md-2 control-label">Status</label>
		<div class="col-md-2">
			<select name="status" class="form-control" onchange="SelectCheck(this);">
				<option value="Local" @if(!empty($bank)){{ $bank->status == 'Local' ? ' selected="selected"' : ''}} @endif>Local</option>
				<option id="Option" value="Foreign" @if(!empty($bank)){{ $bank->status == 'Foreign' ? ' selected="selected"' : ''}} @endif>Foreign</option>
			</select>
		</div>
	</div>
	<!-- select -->
	<div class="form-group" id="origin-div" style="display:none;">
		<label class="col-md-2 control-label">Origin Country</label>
		<div class="col-md-2">
			<select name="origin_country" class="form-control">
				<option value="Malaysia" @if(!empty($bank)){{ $bank->origin_country == 'Malaysia' ? ' selected="selected"' : ''}} @endif>Malaysia</option>
				<option value="Singapore" @if(!empty($bank)){{ $bank->origin_country == 'Singapore' ? ' selected="selected"' : ''}} @endif>Singapore</option
				<option value="Indonesia" @if(!empty($bank)){{ $bank->origin_country == 'Indonesia' ? ' selected="selected"' : ''}} @endif>Indonesia</option>
				<option value="Thailand" @if(!empty($bank)){{ $bank->origin_country == 'Thailand' ? ' selected="selected"' : ''}} @endif>Thailand</option>
				<option value="China" @if(!empty($bank)){{ $bank->origin_country == 'China' ? ' selected="selected"' : ''}} @endif>China</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-2 control-label">Security Code</label>
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
	<button class="btn btn-primary pull-right">Submit</button>
</div>