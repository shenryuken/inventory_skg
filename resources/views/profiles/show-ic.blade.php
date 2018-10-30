@extends('layouts.joli.app')
{{-- Page title --}}
<?php $page_title = 'User - Update Mykad\Passport'; ?>
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
</div>
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
                <div class="col-md-4">
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
                                        {{ $profile->status_ic }}  
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
                                    <td>Company Registration No</td>
                                    <td>{{ $profile->company_registration_no }}</td>
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
                                        {{ $profile->status_ic }} 
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                    @endif
                </div>
                <div class="col-md-8">
                	@if(!empty($profile->id_pic))
                    <div class="col-md-12 col-lg-12 " align="center"> <img alt="User Pic" src="{{ asset('app/mykad/'.$profile->id_pic) }}" class="img-responsive">
                    </div>
                    @else
						No MyKad Is Found For This User.  
                    @endif
                </div>
            </div>
            <form action="{{ route('profile.update-ic-status')}}" method="post">
            	{{ csrf_field() }}
            	<input type="hidden" name="_method" value="PUT">
            	<input type="hidden" name="id" value="{{ $profile->id }}">
            <div class="panel-footer">
            	@if(Auth::guard('admin')->check() && $profile->status_ic == 'Waiting Approval')
                <input type="password" name="security_code" placeholder="Security Code Here">
                <input type="submit" name="status" value="Approve" class="btn btn-sm btn-primary">
                <input type="submit" name="status" value="Reject" class="btn btn-sm btn-danger">
                @elseif((Auth::check() && Auth::user()->email == $profile->profileable->email) && $profile->status_ic == 'Not Update')
                <a href="{{ url('profile/upload-ic')}}"	data-original-title="Upload MyKad or Passport" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-arrow-up"></i>Upload Mykad</a>
                @else
                	@php
                		$label = $profile->status_ic; 

                		switch ($label) {
                			case 'Approved':
                				$label = 'success';
                				break;
                			case 'Not Valid':
                				$label = 'danger';
                				break;
                			default:
                				$label = 'warning';
                				break;
                		}
                	@endphp


                	<strong>Status : </strong> <span class="label label-{{$label}} label-form">{{ $profile->status_ic }}</span>
                    @if(Auth::check() && Auth::user()->email == $profile->profileable->email)
                    <a href="{{ url('user/profile/'.$profile->id) }}">Back</a>
                    @else
                    <a href="{{ url('profile/ic-status-index') }}">Back</a>
                    @endif
                @endif
            </div> 
            </form>
        </div>
    </div>
</div>
@endsection