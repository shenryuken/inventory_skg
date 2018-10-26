@if(Auth::guard('admin')->check())
	<input type="hidden" name="profileable_id" value="{{ Auth::guard('admin')->user()->id }}">
	<input type="hidden" name="profileable_type" value="App\Admin">
@else
	<input type="hidden" name="profileable_id" value="{{ Auth::guard('web')->user()->id }}">
	<input type="hidden" name="profileable_type" value="App\User">
@endif
<div class="panel-heading">
	<h3 class="panel-title"><strong>Profile</strong></h3>
	<ul class="panel-controls">
		<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
	</ul>
</div>

<div class="panel-body">
	<div class="form-group">
		<label for="full_name" class="col-sm-2 control-label" >Full Name</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="full_name" name="full_name" placeholder="Your Full Name" style="text-transform: capitalize" value="{{ $profile->full_name or old('full_name')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="icno" class="col-sm-2 control-label">MyKad/Passport No.</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="id_no" id="id_no" placeholder="Your Mykad/Passport No" value="{{ $profile->id_no or old('id_no')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="street" class="col-sm-2 control-label">Street</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="street" id="street" placeholder="Street" style="text-transform: capitalize" value="{{ $profile->street or old('street')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="postcode" class="col-sm-2 control-label">Postcode</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="postcode" id="postcode" placeholder="Postcode" value="{{ $profile->postcode or old('postcode')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="city" class="col-sm-2 control-label">City</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="city" id="city" placeholder="City" style="text-transform: capitalize" value="{{ $profile->city or old('city')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="state" class="col-sm-2 control-label">State</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="state" id="state" placeholder="State" style="text-transform: capitalize" value="{{ $profile->state or old('state')}}">
		</div>
	</div>
	<!-- select -->
	<div class="form-group">
		<label class="col-sm-2 control-label">Country</label>
		<div class="col-sm-10">
			<select name="country" class="form-control">
				<option value="Malaysia">Malaysia</option>
				<option value="Singapore">Singapore</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="contact_no" class="col-sm-2 control-label">Mobile No</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="contact_no" id="contact_no" placeholder="Mobile No" value="{{ $profile->contact_no or old('contact_no')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="contact_no2" class="col-sm-2 control-label">Tel No(home)</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="contact_no2" id="contact_no2" placeholder="Tel No" value="{{ $profile->contact_no2 or old('contact_no2')}}">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">Security Code</label>
		<div class="col-md-6 col-xs-12">
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
