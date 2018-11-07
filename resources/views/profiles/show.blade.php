@extends('layouts.joli.app')

{{-- Page title --}}
@section('title')
    My Profile
    @parent
@stop
<?php $page_title = 'My Profile'; ?>
@section('content')

@if($guard == 'admin' && Auth::guard('admin')->user()->profile !== null)

<div class="row">
    {{-- <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
        <A href="edit.html" >Edit Profile</A>
        <A href="edit.html" >Logout</A>
        <br>
        <p class=" text-info">May 05,2014,03:00 pm </p>
    </div> --}}
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad" >
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">{{ $profile->profileable->username }}</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-3 col-lg-3 " align="center"> 
                        <img alt="User Pic" src="{{ asset('themes/Joli/assets/images/users/avatar.jpg') }}" class="img-circle img-responsive"> 
                    </div>
                    
                    <!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                        <dl>
                            <dt>DEPARTMENT:</dt>
                            <dd>Administrator</dd>
                            <dt>HIRE DATE</dt>
                            <dd>11/12/2013</dd>
                            <dt>DATE OF BIRTH</dt>
                            <dd>11/12/2013</dd>
                            <dt>GENDER</dt>
                            <dd>Male</dd>
                        </dl>
                    </div>-->
                    <div class=" col-md-9 col-lg-9 ">
                        <h2>Personal Information</h2>
                        <table class="table table-user-information" >
                            <tbody>
                                <tr>
                                    <td><strong>Full Name</strong></td>
                                    <td>
                                        {{ $profile->full_name }}
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Address</strong></td>
                                    <td>
                                        <dd>{{ $profile->street }},</dd>
                                        <dd>{{ $profile->postcode }} , {{ $profile->city }},</dd>
                                        <dd>{{ $profile->state }},</dd>
                                        <dd>{{ $profile->country }},</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Joined date</strong></td>
                                    <td>{{ $profile->profileable->created_at }}</td>
                                </tr>
                                <tr>
                                    <td><strong>Email</strong></td>
                                    <td><a href="mailto:{{ $profile->profileable->email }}">{{ $profile->profileable->email }}</a></td>
                                </tr>
                                <tr>
                                    <td><strong>Phone Number</strong></td>
                                    <td>
                                        <dd>{{ $profile->contact_no }}</dd>
                                        <dd>{{ $profile->contact_no2 }}</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Roles</strong></td>
                                    <td>
                                        <dd>
                                        @foreach($profile->profileable->roles as $role) 
                                            {{ $role->name }}
                                        @endforeach
                                        </dd>
                                    </td>
                                </tr>  
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                <span class="pull-right">
                    <a href="{{ url('/profile/'.$profile->id .'/edit')}}" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                </span>
            </div> 
        </div>
    </div>
</div>

@elseif($guard == 'web' && Auth::guard('web')->user()->profile !== null)
<div class="row">
    {{-- <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
        <A href="edit.html" >Edit Profile</A>
        <A href="edit.html" >Logout</A>
        <br>
        <p class=" text-info">May 05,2014,03:00 pm </p>
    </div> --}}
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xs-offset-0 col-sm-offset-0 col-md-offset-0 col-lg-offset-0 toppad" >
        
        
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">{{ $profile->profileable->username }}</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="{{ asset('themes/Joli/assets/images/users/avatar.jpg') }}" class="img-circle img-responsive"> 
                    </div>
                    
                    <!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                        <dl>
                            <dt>DEPARTMENT:</dt>
                            <dd>Administrator</dd>
                            <dt>HIRE DATE</dt>
                            <dd>11/12/2013</dd>
                            <dt>DATE OF BIRTH</dt>
                            <dd>11/12/2013</dd>
                            <dt>GENDER</dt>
                            <dd>Male</dd>
                        </dl>
                    </div>-->
                    <div class=" col-md-9 col-lg-9 ">
                        @if($profile->profileable->type == "personal")
                        <h2>Personal Information</h2>
                         <table class="table table-user-information">
                            <tbody>
                                <tr>
                                    <td>Full Name</td>
                                    <td>{{ $profile->full_name }}</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>
                                        <dd>{{ $profile->street }},</dd>
                                        <dd>{{ $profile->postcode }} , {{ $profile->city }},</dd>
                                        <dd>{{ $profile->state }},</dd>
                                        <dd>{{ $profile->country }},</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Joined date</td>
                                    <td>{{ $profile->profileable->created_at }}</td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><a href="mailto:{{ $profile->profileable->email }}">{{ $profile->profileable->email }}</a></td>
                                </tr>
                                <tr>
                                    <td>Phone Number</td>
                                    <td>
                                        <dd>{{ $profile->contact_no }}</dd>
                                        <dd>{{ $profile->contact_no2 }}</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rank</td>
                                    <td>{{ $profile->profileable->rank->name }}</td>
                                </tr>  
                                <tr>
                                    <td>MyKad/Passport Status</td>
                                    <td>
                                        @if($profile->status_ic === 'Not Update')
                                            Not Update | <a href="{{ url('profile/upload-ic')}}">Click Here To Upload Your MyKad Or Passport </a>
                                        @else
                                            {{ $profile->status_ic }} 
                                            | 
                                            <a href="{{ url('profile/show-ic/'.$profile->id) }}">View MyKad</a>
                                        @endif
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                        @else
                        
                        <h2>Business Information</h2>
                        <table class="table table-user-information">
                            <tbody>
                                <tr>
                                    <td>Company Name</td>
                                    <td>{{ $profile->company_name }}</td>
                                </tr>
                                <tr>
                                    <td>Company Registration No</td>
                                    <td>{{ $profile->company_registration_no }}</td>
                                </tr>
                                <tr>
                                    <td>Company Registration Cert. Status</td>
                                    <td> @if($profile->cert_status === 'Not Update')
                                            Not Update | <a href="{{ url('profile/upload-company_cert')}}">Click Here To Upload Comapny Cert. </a>
                                        @else
                                            {{ $profile->cert_status }} 
                                            | 
                                            <a href="{{ url('profile/show-comp_cert/'.$profile->id) }}">View Company Cert.</a>
                                        @endif
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>
                                        <dd>{{ $profile->street }},</dd>
                                        <dd>{{ $profile->postcode }} , {{ $profile->city }},</dd>
                                        <dd>{{ $profile->state }},</dd>
                                        <dd>{{ $profile->country }},</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Joined date</td>
                                    <td>{{ $profile->profileable->created_at }}</td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><a href="mailto:{{ $profile->profileable->email }}">{{ $profile->profileable->email }}</a></td>
                                </tr>
                                <tr>
                                    <td>Phone Number</td>
                                    <td>
                                        <dd>{{ $profile->contact_no }}</dd>
                                        <dd>{{ $profile->contact_no2 }}</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rank</td>
                                    <td>{{ $profile->profileable->rank->name }}</td>
                                </tr>  
                                
                                
                            </tbody>
                        </table>
                        <h2>Share Holder Information</h2>
                        <table class="table table-user-information">
                            <tbody>
                                <tr>
                                    <td>Share Holder Name</td>
                                    <td>{{ $profile->profileable->shareHolders->name }}</td>
                                </tr>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td>{{ $profile->profileable->shareHolders->dob }}</td>
                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td>{{ $profile->profileable->shareHolders->gender }}</td>
                                </tr>
                                <tr>
                                    <td>Marital Status</td>
                                    <td>{{ $profile->profileable->shareHolders->marital_status }}</td>
                                </tr>
                                <tr>
                                    <td>Race</td>
                                    <td>{{ $profile->profileable->shareHolders->race }}</td>
                                </tr>
                                <tr>
                                    <td>ID</td>
                                    <td>
                                        <strong>{{ $profile->profileable->shareHolders->id_type }} :</strong> 
                                        {{ $profile->profileable->shareHolders->id_no }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Contact</td>
                                    <td>
                                        <dd>Mobile No:{{ $profile->profileable->shareHolders->mobile_no }}</dd>
                                        <dd>Email:{{ $profile->profileable->shareHolders->email }}</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rank</td>
                                    <td>{{ $profile->profileable->rank->name }}</td>
                                </tr>  
                                
                                
                            </tbody>
                        </table>
                        @endif
                    </div>
                    <div class=" col-md-9 col-lg-9 ">
                        <h2>Account Information</h2>
                        <table class="table table-user-information">
                            <tbody>
                                <tr>
                                    <td>Bank</td>
                                    <td>{{ $profile->profileable->account->bank->name }}</td>
                                </tr>
                                <tr>
                                    <td>Account Holder Name</td>
                                    <td>
                                        {{ $profile->profileable->account->acc_holder_name }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Account No</td>
                                    <td>{{ $profile->profileable->account->account_no }}</td>
                                </tr>
                                <tr>
                                    <td>Account Type</td>
                                    <td>{{ $profile->profileable->account->account_type }}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     <div class=" col-md-9 col-lg-9 ">
                        <h2>Beneficiary Information</h2>
                        <table class="table table-user-information">
                            <tbody>
                                <tr>
                                    <td>Beneficiary Name</td>
                                    <td>{{ $profile->beneficiary_name or "Not Update" }}</td>
                                </tr>
                                <tr>
                                    <td>Relationship</td>
                                    <td>
                                        {{ $profile->relationship or "Not Update"}}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>{{ $profile->beneficiary_address or "Not Update" }}</td>
                                </tr>
                                <tr>
                                    <td>Phone Number</td>
                                    <td>
                                        {{ $profile->beneficiary_mobile_no or "Not Update"}}
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
               {{--  <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a> --}}
                <span class="pull-right">
                    <a href="{{ url('/profile/'.$profile->id .'/edit')}}" data-original-title="Update Profile" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"> Update Profile</i></a>
                    {{-- <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a> --}}
                </span>
            </div> 
        </div>
    </div>
</div>
@else
<div class="row">
	<div class="col-md-3">
		<h3>No Profile found. Please update your profile <a href="{{ url('profile/create') }}"> Click Here </a></h3>
	</div>
</div>

@endif

@endsection
