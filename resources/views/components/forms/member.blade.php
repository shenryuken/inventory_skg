<div class="panel panel-default">
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Login Info</strong></h3>
	</div>
	<div class="panel-body">
		
		<div class="form-group">
			<label class="col-md-3 control-label">Country *</label>
			<div class="col-md-2">
				<select name="country" class="form-control">
					<option value="MALAYSIA">MALAYSIA</option>
					<option value="THAILAND">THAILAND</option>
					<option value="SINGAPORE">SINGAPORE</option>
					<option value="INDONESIA">INDONESIA</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">Username *</label>
			<div class="col-md-2">
				<input class="form-control" type="text" name="username" value="{{ old('name')}}">
			</div>
		</div>
		
		<!-- <div class="form-group">
			<label class="col-md-3 control-label">Password *</label>
			<div class="col-md-2">
				<div class="input-group">
					<input class="form-control" type="password" name="password" id="pass1">
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3  control-label">Re-Type Password *</label>
			<div class="col-md-2">
				<input class="form-control" type="password" name="password_confirmation" onkeyup="checkPass(); return false;" id="pass2">
				<span id="confirmMessage" class="confirmMessage"></span>
			</div>
		</div> -->
	</div>
	
	<!-- Personal Information -->
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Personal Information</strong></h3>
	</div>
	<div class="panel-body">
		<div class="form-group">
			<label class="col-md-3  control-label">Type *</label>
			<div class="col-md-1">
				<select name="type" class="form-control" id="type">
					<option value="personal" selected>PERSONAL</option>
					<option value="business">BUSINESS</option>
				</select>
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group " >
			<label class="col-md-3  control-label">Rank *</label>
			<div class="col-md-2">
				
				<select name="rank" class="form-control">
					@foreach($ranks as $rank)
						@if($rank->name != "Senior District Officer")
						<option value="{{ $rank->name }}">{{ $rank->name }}</option>
						@endif
					@endforeach
				</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<!--// Personal Info //-->
		<div class="form-group personal" style="display:show">
			<label class="col-md-3  control-label">Name *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="name" id="name" onchange="copyTextValue(this);" value="{{ old('name')}}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group personal" style="display:show">
			<label class="col-md-3 control-label">Date Of Birth *</label>
			<div class="col-md-2">
				<input class="form-control" type="date" id="datepicker" name="dob">
			</div>
		</div>
		
		<div class="form-group personal" style="display:show">
			<label class="col-md-3  control-label">Gender *</label>
			<div class="col-md-2">
				
					<select name="gender" class="form-control">
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group personal" style="display:show">
			<label class="col-md-3 control-label">Marital Status *</label>
			<div class="col-md-2">
				
					<select name="marital_status" class="form-control">
						<option value="Single">Single</option>
						<option value="Married">Married</option>
					</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group personal" style="display:show">
			<label class="col-md-3  control-label">Race *</label>
			<div class="col-md-2">
				
					<select name="race" class="form-control">
						<option value="Malay">Malay</option>
						<option value="Chinese">Chinese</option>
						<option value="Indian">Indian</option>
						<option value="Others">Others</option>
					</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group personal" style="display:show">
			<label class="col-md-3 control-label">ID Type *</label>
			<div class="col-md-2">
				
				<select name="id_type" class="form-control">
					<option value="MyKad">MyKad</option>
					<option value="Passport">Passport</option>
				</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group personal" style="display:show">
			<label class="col-md-3  control-label">ID No *</label>
			<div class="col-md-2 ">
				
				<input class="form-control" type="text" name="id_no" value="{{ old('id_no') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group personal" style="display:show">
			<label class="col-md-3 control-label">Upload ID</label>
			<div class="col-md-3 ">
				
				<input type="file" multiple id="file-simple" name="id_pic" value="{{ old('id_pic') }}" />
				
			</div>
		</div>
		<!--// END Personal Information //-->
		<!--// Business Info //-->
		<div class="form-group business" style="display:none">
			<label class="col-md-3  control-label">Company Name *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="company_name" id="company_name" onchange="copyTextValue(this);" value="{{ old('company_name')}}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group business" style="display:none">
			<label class="col-md-3  control-label">Registration No. *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="company_registration_no"  value="{{ old('company_registration_no')}}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group business" style="display:none">
			<label class="col-md-3 control-label">Upload Company Registration Cert. *</label>
			<div class="col-md-3 ">
				<input type="file" multiple id="file-simple" name="comp_reg_cert" value="{{ old('comp_reg_cert') }}" />
			</div>
		</div>
		<div class="form-group business" style="display:none">
			<label class="col-md-3 control-label">Upload Company Logo</label>
			<div class="col-md-3 ">
				<input type="file" multiple id="file-simple" name="company_logo" value="{{ old('company_logo') }}" />
			</div>
		</div>
		<!--// End Business Info //-->

		<div class="form-group">
			<label class="col-md-3  control-label">Introducer *</label>
			<div class="col-md-2">
				@if(Auth::guard('admin')->check())
				<input class="form-control" type="text" name="introducer" value="{{ Auth::guard('admin')->user()->username }}">
				@elseif(Auth::guard('web')->check())
				<input class="form-control" type="text" name="introducer" value="{{ Auth::guard('web')->user()->username }}">
				@endif
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
	</div>
	
	
	{{-- <div class="panel-footer">
		<button class="btn btn-default">Clear Form</button>
		<button class="btn btn-primary pull-right">Submit</button>
	</div> --}}
	
	<!-- Contact Info -->
	
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Contact Info</strong></h3>
	</div>
	<div class="panel-body">
		
		<div class="form-group">
			<label class="col-md-3 control-label">Mobile No *</label>
			<div class="col-md-2">
				
				<input class="form-control" type="text" name="mobile_no" value="{{ old('mobile_no') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-md-3  control-label">Email *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="email" value="{{ old('email') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		
	</div>
	<!--end Contact Info -->
	<!-- Address Info -->
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Address Info</strong></h3>
	</div>
	<div class="panel-body">
		
		<div class="form-group">
			<label class="col-md-3  control-label">Street *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="street" value="{{ old('street') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3  control-label">Street 2</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="street2" value="{{ old('street2') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3  control-label">Postcode *</label>
			<div class="col-md-2">
				
				<input class="form-control" type="text" name="postcode" value="{{ old('postcode') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">City *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="city" value="{{ old('city') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
	
		<div class="form-group">
			<label class="col-md-3  control-label">State *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="state" value="{{ old('state') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
	</div>
	<!--END Address Info -->
	<!-- Bank Account Info -->
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Bank Account Info</strong></h3>
	</div>
	<div class="panel-body">
		
		<div class="form-group">
			<label class="col-md-3 control-label">Bank *</label>
			<div class="col-md-3">
				
				<select name="bank" class="form-control">
					@foreach($banks as $bank)
					
					<option value="{{ $bank->name }}" {{ old('bank') == $bank->name ? ' selected="selected"' : ''}}>{{ $bank->name }}</option>
					
					@endforeach
				</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">Account No *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="account_no" value="{{ old('account_no') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">Account Holder Name *</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="acc_holder_name" id="acc_holder_name" value="{{ old('acc_holder_name') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
			<div class="checkbox pull-left">
				<label><input type="checkbox" name="check1" onchange="copyTextValue(this);"> Same As Above</label>
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="col-md-3 control-label">Account Type *</label>
			<div class="col-md-2">
				<select name="account_type" class="form-control">
					<option value="saving">Saving</option>
					<option value="current">Current</option>
				</select>
			</div>
		</div>
	</div>
	<!--END Bank Account -->
	<!-- Beneficiary Info -->
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Beneficiary Info (OPTIONAL)</strong></h3>
	</div>
	<div class="panel-body">
		
		<div class="form-group">
			<label class="col-md-3 control-label">Beneficiary Name</label>
			<div class="col-md-6">
				
				<input class="form-control" type="text" name="beneficiary_name" value="{{ old('beneficiary_name') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3 control-label">Relationship</label>
			<div class="col-md-2">
				
					<select name="relationship" class="form-control">
						<option value="Parent" {{ old('relationship') == 'Parent' ? ' selected="selected"' : ''}}>Parent</option>
						<option value="Spouse" {{ old('relationship') == 'Spouse' ? ' selected="selected"' : ''}}>Spouse</option>
						<option value="Sibling" {{ old('relationship') == 'Sibling' ? ' selected="selected"' : ''}}>Sibling</option>
						<option value="Cousin" {{ old('relationship') == 'Cousin' ? ' selected="selected"' : ''}}>Cousin</option>
						<option value="Nephew/Niece" {{ old('relationship') == 'Nephew/Niece' ? ' selected="selected"' : ''}}>Nephew/Niece</option>
						<option value="Uncle/Aunt" {{ old('relationship') == 'Uncle/Aunt' ? ' selected="selected"' : ''}}>Uncle/Aunt</option>
						<option value="Grandparent" {{ old('relationship') == 'Grandparent' ? ' selected="selected"' : ''}}>Grandparent</option>
						<option value="Grandchild" {{ old('relationship') == 'Grandchild' ? ' selected="selected"' : ''}}>Grandchild</option>
						<option value="Friend" {{ old('relationship') == 'Friend' ? ' selected="selected"' : ''}}>Friend</option>
						<option value="Others" {{ old('relationship') == 'Other' ? ' selected="selected"' : ''}}>Others</option>
					</select>
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		<div class="form-group">
			<label class="col-md-3  control-label">Address</label>
			<div class="col-md-3">
				
				<input class="form-control" type="text" name="beneficiary_address" value="{{ old('beneficiary_address') }}">
				
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-md-3 control-label">Beneficiary Mobile No</label>
			<div class="col-md-3">
				<input class="form-control" type="text" name="beneficiary_mobile_no" value="{{ old('beneficiary_mobile_no') }}">
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
	</div>
	<!--END Bank Account -->
	<!-- Security Info -->
	<div class="panel-heading ui-draggable-handle">
		<h3 class="panel-title"><strong>Security</strong></h3>
	</div>
	<div class="panel-body">
		
		<div class="form-group">
			<label class="col-md-3  control-label">Security Code *</label>
			<div class="col-md-2">
				<input class="form-control" type="password" name="security_code" placeholder="Security Code Here">
				{{-- <span class="help-block">This is sample of text field</span> --}}
			</div>
		</div>
	</div>
	<!--END Security Info -->
	<div class="panel-footer">
		{{-- <button class="btn btn-default">Clear Form</button> --}}
		<button class="btn btn-primary pull-right">Submit</button>
	</div>
</div>

