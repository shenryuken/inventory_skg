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
@if($profile->profileable->type == 'personal')
<div class="panel-body">
	<div class="form-group">
		<label for="full_name" class="col-sm-2 control-label" >Full Name</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="full_name" name="full_name" placeholder="Your Full Name" style="text-transform: capitalize" value="{{ $profile->full_name or old('full_name')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="id_type" class="col-sm-2 control-label">ID Type</label>
		<div class="col-sm-2">
			<select name="id_type" class="form-control" autocomplete="off">
				<option value="Mykad" @if($profile->id_type == 'Mykad')  selected @endif>Mykad</option>
				<option value="Passport" @if($profile->id_type == 'Passport')  selected @endif>Passport</option>
			</select>
		</div>
		<label for="icno" class="col-sm-2 control-label">MyKad/Passport No.</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="id_no" id="id_no" placeholder="Your Mykad/Passport No" value="{{ $profile->id_no or old('id_no')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="street" class="col-sm-2 control-label">Street</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="street" id="street" placeholder="Street" style="text-transform: capitalize" value="{{ $profile->street or old('street')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="street2" class="col-sm-2 control-label">Street 2</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="street2" id="street2" placeholder="Street 2" style="text-transform: capitalize" value="{{ $profile->street2 or old('street2')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="postcode" class="col-sm-2 control-label">Postcode</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="postcode" id="postcode" placeholder="Postcode" value="{{ $profile->postcode or old('postcode')}}">
		</div>
		<label for="city" class="col-sm-2 control-label">City</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="city" id="city" placeholder="City" style="text-transform: capitalize" value="{{ $profile->city or old('city')}}">
		</div>
	</div>
	<!-- <div class="form-group">
		<label for="city" class="col-sm-2 control-label">City</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" name="city" id="city" placeholder="City" style="text-transform: capitalize" value="{{ $profile->city or old('city')}}">
		</div>
	</div> -->
	<div class="form-group">
		<label for="state" class="col-sm-2 control-label">State</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="state" id="state" placeholder="State" style="text-transform: capitalize" value="{{ $profile->state or old('state')}}">
		</div>
		<label class="col-sm-2 control-label">Country</label>
		<div class="col-sm-2">
			<select name="country" class="form-control" autocomplete="off">
				<option value="Malaysia"  @if($profile->country == 'Malaysia')  selected @endif>Malaysia</option>
				<option value="Singapore" @if($profile->country == 'Singapore')  selected @endif>Singapore</option>
			</select>
		</div>
	</div>
	<!-- select -->
	<!-- <div class="form-group">
		<label class="col-sm-2 control-label">Country</label>
		<div class="col-sm-10">
			<select name="country" class="form-control">
				<option value="Malaysia">Malaysia</option>
				<option value="Singapore">Singapore</option>
			</select>
		</div>
	</div> -->
	<div class="form-group">
		<label for="contact_no" class="col-sm-2 control-label">Mobile No</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="contact_no" id="contact_no" placeholder="Mobile No" value="{{ $profile->contact_no or old('contact_no')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="contact_no2" class="col-sm-2 control-label">Tel No(home)</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="contact_no2" id="contact_no2" placeholder="Tel No" value="{{ $profile->contact_no2 or old('contact_no2')}}">
		</div>
	</div>
	<!-- Beneficiary Info -->
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Beneficiary Info (OPTIONAL)</strong></h3>
	</div>
	
		
		<div class="form-group">
			<label class="col-sm-2 control-label">Beneficiary Name</label>
			<div class="col-sm-4">
				<input class="form-control" type="text" name="beneficiary_name" value="{{ old('beneficiary_name') }}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Relationship</label>
			<div class="col-sm-2">
				
					<select name="relationship" class="form-control">
						<option value="Parent" @if($profile->relationship == 'Parent')  selected @endif>Parent</option>
						<option value="Spouse" @if($profile->relationship == 'Spouse')  selected @endif>Spouse</option>
						<option value="Sibling"  @if($profile->relationship == 'Sibling')  selected @endif>Sibling</option>
						<option value="Cousin"  @if($profile->relationship == 'Cousin')  selected @endif>Cousin</option>
						<option value="Nephew/Niece"  @if($profile->relationship == 'Nephew/Niece')  selected @endif>Nephew/Niece</option>
						<option value="Uncle/Aunt"  @if($profile->relationship == 'Uncle/Aunt')  selected @endif>Uncle/Aunt</option>
						<option value="Grandparent"  @if($profile->relationship == 'Grandparent')  selected @endif>Grandparent</option>
						<option value="Grandchild"  @if($profile->relationship == 'Grandchild')  selected @endif>Grandchild</option>
						<option value="Friend"  @if($profile->relationship == 'Friend')  selected @endif>Friend</option>
						<option value="Others"  @if($profile->relationship == 'Others')  selected @endif>Others</option>
					</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2  control-label">Address</label>
			<div class="col-sm-2">
				<textarea class="form-control" type="text" name="beneficiary_address" value="{{ old('beneficiary_address')}}" ></textarea> 
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label">Beneficiary Mobile No</label>
			<div class="col-sm-2">
				<input class="form-control" type="text" name="beneficiary_mobile_no" value="{{ old('beneficiary_mobile_no') }}">
			</div>
		</div>
	
	<!--END Beneficiary Info -->
	<div class="form-group">
		<label class="col-sm-2 control-label">Security Code</label>
		<div class="col-md-2 col-xs-4">
			<div class="input-group">
				<span class="input-group-addon"><span class="fa fa-unlock-alt"></span></span>
				<input class="form-control" type="password" name="security_code" placeholder="Security Code Here">
			</div>
			{{-- <span class="help-block">This is sample of text field</span> --}}
		</div>
	</div>
</div>
@elseif($profile->profileable->type == 'business')
<div class="panel-body">
	<div class="form-group">
		<label for="company_name" class="col-sm-2 control-label" >Company Name</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="company_name" name="company_name" placeholder="Your Full Name" style="text-transform: capitalize" value="{{ $profile->company_name or old('company_name')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="company_registration_no" class="col-sm-2 control-label">Company Registration No.</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="company_registration_no" id="company_registration_no" placeholder="Your Mykad/Passport No" value="{{ $profile->company_registration_no or old('company_registration_no')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="street" class="col-sm-2 control-label">Street</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="street" id="street" placeholder="Street" style="text-transform: capitalize" value="{{ $profile->street or old('street')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="street2" class="col-sm-2 control-label">Street 2</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="street2" id="street2" placeholder="Street 2" style="text-transform: capitalize" value="{{ $profile->street2 or old('street2')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="postcode" class="col-sm-2 control-label">Postcode</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="postcode" id="postcode" placeholder="Postcode" value="{{ $profile->postcode or old('postcode')}}">
		</div>
		<label for="city" class="col-sm-2 control-label">City</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="city" id="city" placeholder="City" style="text-transform: capitalize" value="{{ $profile->city or old('city')}}">
		</div>
	</div>
	<!-- <div class="form-group">
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
	</div> -->
	<!-- select -->
	<div class="form-group">
		<label for="state" class="col-sm-2 control-label">State</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="state" id="state" placeholder="State" style="text-transform: capitalize" value="{{ $profile->state or old('state')}}">
		</div>
		<label class="col-sm-2 control-label">Country</label>
		<div class="col-sm-2">
			<select name="country" class="form-control" autocomplete="off">
				<option value="Malaysia"  @if($profile->country == 'Malaysia')  selected @endif>Malaysia</option>
				<option value="Singapore" @if($profile->country == 'Singapore')  selected @endif>Singapore</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="contact_no" class="col-sm-2 control-label">Office No. (1)</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="contact_no" id="contact_no" placeholder="Office No" value="{{ $profile->contact_no or old('contact_no')}}">
		</div>
		<label for="contact_no2" class="col-sm-2 control-label">Office No. (2)</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="contact_no2" id="contact_no2" placeholder="Office No" value="{{ $profile->contact_no2 or old('contact_no2')}}">
		</div>
	</div>
	<!-- <div class="form-group">
		<label for="contact_no2" class="col-sm-2 control-label">Office No. (2)</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="contact_no2" id="contact_no2" placeholder="Office No" value="{{ $profile->contact_no2 or old('contact_no2')}}">
		</div>
	</div> -->
	<div class="form-group">
		<label for="fax_no" class="col-sm-2 control-label">Fax No.</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="fax_no" id="fax_no" placeholder="Fax No" value="{{ $profile->fax_no or old('fax_no')}}">
		</div>
	</div>
	
	<div class="form-group">
		<label for="share_holder_name" class="col-sm-2 control-label">Share Holder Name</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="share_holder_name" id="share_holder_name" placeholder="Your Mykad/Passport No" value="{{ $profile->profileable->shareHolders->name or old('share_holder_name')}}">
		</div>
	</div>
	<div class="form-group personal">
		<label class="col-sm-2 control-label">Date Of Birth *</label>
		<div class="col-sm-2">
			<input class="form-control" type="date" id="datepicker" name="share_holder_dob" value="{{ $profile->profileable->shareHolders->dob or old('share_holder_dob')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="share_holder_gender" class="col-sm-2 control-label">Gender</label>
		<div class="col-sm-2">
			<!-- <input type="text" class="form-control" name="share_holder_gender" id="share_holder_gender" placeholder="Your Mykad/Passport No" value="{{ $profile->profileable->shareHolders->gender or old('share_holder_gender')}}"> -->
			<select name="share_holder_gender" class="form-control" autocomplete="off">
				<option value="Male" @if($profile->profileable->shareHolders->gender == 'Male')  selected @endif>Male</option>
				<option value="Female" @if($profile->profileable->shareHolders->gender == 'Female')  selected @endif>Female</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="marital_status" class="col-sm-2 control-label">Marital Status</label>
		<div class="col-sm-2">
			<!-- <input type="text" class="form-control" name="share_holder_marital_status" id="share_holder_marital_status" value="{{ $profile->profileable->shareHolders->marital_status or old('share_holder_marital_status')}}"> -->
			<select name="share_holder_marital_status" class="form-control" autocomplete="off">
				<option value="Single" @if($profile->profileable->shareHolders->marital_status == 'Single')  selected @endif>Single</option>
				<option value="Married" @if($profile->profileable->shareHolders->marital_status == 'Married')  selected @endif>Married</option>
			</select>
		</div>
	</div>
	<div class="form-group ">
		<label class="col-sm-2  control-label">Race *</label>
		<div class="col-sm-2">
			
				<select name="share_holder_race" class="form-control" autocomplete="off">
					<option value="Malay" 
					@if($profile->profileable->shareHolders->race == 'Malay')  selected @endif >
					Malay</option>
					<option @if($profile->profileable->shareHolders->race == 'Chinese')  selected @endif value="Chinese" >Chinese</option>
					<option @if($profile->profileable->shareHolders->race == 'Indian')  selected @endif value="Indian">Indian</option>
					<option @if($profile->profileable->shareHolders->race == 'Others')  selected @endif value="Others">Others</option>
				</select>
			
			{{-- <span class="help-block">This is sample of text field</span> --}}
		</div>
	</div>
	<div class="form-group">
		<label for="share_holder_gender" class="col-sm-2 control-label">ID Type</label>
		<div class="col-sm-2">
			<select name="share_holder_id_type" class="form-control" autocomplete="off">
				<option value="Mykad" @if($profile->profileable->shareHolders->id_type == 'Mykad')  selected @endif>Mykad</option>
				<option value="Passport" @if($profile->profileable->shareHolders->id_type == 'Passport')  selected @endif>Passport</option>
			</select>
		</div>
		<label for="share_holder_id_no" class="col-sm-2 control-label">Share Holder Id No.</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="share_holder_id_no" id="share_holder_id_no" placeholder="Your Mykad/Passport No" value="{{ $profile->profileable->shareHolders->id_no or old('share_holder_id_no')}}">
		</div>
	</div>
	<!-- <div class="form-group">
		<label for="share_holder_id_no" class="col-sm-2 control-label">Share Holder Id No.</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="share_holder_id_no" id="share_holder_id_no" placeholder="Your Mykad/Passport No" value="{{ $profile->profileable->shareHolders->id_no or old('share_holder_id_no')}}">
		</div>
	</div> -->
	<div class="form-group">
		<label for="share_holder_mobile_no" class="col-sm-2 control-label">Share Holder Mobile No.</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="share_holder_mobile_no" id="share_holder_id_no" placeholder="Your Mobile No" value="{{ $profile->profileable->shareHolders->mobile_no or old('share_holder_mobile_no')}}">
		</div>
	</div>
	<div class="form-group">
		<label for="share_holder_email" class="col-sm-2 control-label">Share Holder Email</label>
		<div class="col-sm-2">
			<input type="text" class="form-control" name="share_holder_email" id="share_holder_id_no" placeholder="Your Email" value="{{ $profile->profileable->shareHolders->email or old('share_holder_email')}}">
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


@endif
<div class="panel-footer">
	<button class="btn btn-primary pull-right">Submit</button>
</div>
