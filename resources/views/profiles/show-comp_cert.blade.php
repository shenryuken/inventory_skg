@extends('layouts.joli.app')
{{-- Page title --}}
<?php $page_title = 'User - Update Mykad\Passport'; ?>
@section('content')
<div class="col-md-12">
	@include('components.notifications.errors')
        
    @include('components.notifications.messages')
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
                    @if($profile->profileable->type == "business")
                        <h2>Business Information</h2>
                        <table class="table table-user-information">
                            <tbody>
                                <tr>
                                    <td><strong>Company Name</strong></td>
                                    <td>{{ $profile->company_name }}</td>
                                </tr>
                                <tr>
                                    <td><strong>Company Registration No</strong></td>
                                    <td>{{ $profile->company_registration_no }}</td>
                                </tr>
                                <tr>
                                    <td><strong>Company Registration Certificate Status</strong></td>
                                    <td>{{ $profile->cert_status }}</td>
                                </tr>
                                <tr>
                                    <td><strong>Bank:Account No.</strong></td>
                                    <td>
                                        <strong>{{ $profile->profileable->account->bank->name }}:</strong>
                                        {{ $profile->profileable->account->account_no }}  
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
                                    <td>
                                        <dd><strong>Office Tel.(1)</strong><dd>
                                        <dd><strong>Office Tel.(2)</strong><dd>
                                    </td>
                                    <td>
                                        <dd>{{ $profile->contact_no or "Not Update"}}</dd>
                                        <dd>{{ $profile->contact_no2 or "Not Update"}}</dd>
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Fax Number</strong></td>
                                    <td>
                                        {{ $profile->fax_no }}
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Rank</strong></td>
                                    <td>{{ $profile->profileable->rank->name }}</td>
                                </tr>  
                                <tr>
                                    <td><strong>Introducer</strong></td>
                                    <td>{{ $profile->profileable->introducer }}</td>
                                </tr>
                            </tbody>
                        </table>
                        <h2>Share Holder Information</h2>
                        <table class="table table-user-information">
                            <tbody>
                                <tr>
                                    <td><strong>Share Holder Name</strong></td>
                                    <td>{{ $profile->profileable->shareHolders->name }}</td>
                                </tr>
                                <tr>
                                    <td><strong>Date of Birth</strong></td>
                                    <td>{{ $profile->profileable->shareHolders->dob }}</td>
                                </tr>
                                <tr>
                                    <td><strong>Gender</strong></td>
                                    <td>{{ $profile->profileable->shareHolders->gender }}</td>
                                </tr>
                                <tr>
                                    <td><strong>ID.</strong></td>
                                    <td>
                                        <strong>{{ $profile->profileable->shareHolders->id_type }}:</strong>
                                        {{ $profile->profileable->shareHolders->id_no }}  
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Mobile No.</strong></td>
                                    <td>
                                        {{ $profile->profileable->shareHolders->mobile_no }}  
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Email</strong></td>
                                    <td>
                                        {{ $profile->profileable->shareHolders->email }}  
                                    </td>
                                </tr>
                                <tr>
                                    <td><strong>Id Image</strong></td>
                                    <td>
                                        {{ $profile->profileable->shareHolders->id_image }}  
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    @else
                        No Company Profile Found For This User.
                    @endif
                </div>
                <div class="col-md-8">
                	@if(!empty($profile->company_reg_cert))
                    <div class="col-md-12 col-lg-12 " align="center"> <img alt="User Pic" src="{{ asset('app/comp_cert/'.$profile->company_reg_cert) }}" class="img-responsive">
                    </div>
                    @else
						No Company Registration Cert Found For This User.
                    @endif
                </div>
            </div>
            <form action="{{ route('profile.update-comp_cert-status')}}" method="post">
            	{{ csrf_field() }}
            	<input type="hidden" name="_method" value="PUT">
            	<input type="hidden" name="id" value="{{ $profile->id }}">
            <div class="panel-footer">
            	@if(Auth::guard('admin')->check() && $profile->cert_status == 'Waiting Approval')
                <input type="password" name="security_code" placeholder="Security Code Here">
                <input type="submit" name="status" value="Approve" class="btn btn-sm btn-primary">
                <input type="submit" name="status" value="Reject" class="btn btn-sm btn-danger">
                @elseif(Auth::check() && Auth::user()->email == $profile->profileable->email)
                <a href="{{ url('profile/upload-company-cert')}}"	data-original-title="Upload Company Registration Certificate" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-arrow-up"></i>Upload Company Registration Certificate</a>
                @else
                	@php
                		$label = $profile->cert_status; 

                		switch ($label) {
                			case 'Approved':
                				$label = 'success';
                				break;
                			case 'Reject':
                				$label = 'danger';
                				break;
                			default:
                				$label = 'warning';
                				break;
                		}
                	@endphp

                	<strong>Status : </strong> <span class="label label-{{$label}} label-form">{{ $profile->cert_status }}</span>
                @endif
            </div> 
            </form>
        </div>
    </div>
</div>
@endsection