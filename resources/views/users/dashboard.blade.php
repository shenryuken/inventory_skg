@extends('layouts.joli.app')

{{-- Page title --}}
@section('title')
    Dashboard
    @parent
@stop

@section('content')
<?php 
    $page_title = 'User Dashboard'; 
    $lable = 'Pending';
?>

<div class="row">  
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">
                <h3>
                    <span class="fa fa-user"></span> 
                    <span class="xn-text" style=" text-transform: capitalize;">My Account ({{$user->type}})</span>
                </h3>  
            </div>
            <div class="panel-body">
                <table class="table text-uppercase">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Rank</th>
                            <th>Introducer</th>
                            <th>Date Registered</th>
                            @if($user->type == 'personal')
                            <th>IC Verify</th>
                            @elseif($user->type == 'business')
                            <th>Company Cert. Verify</th>
                            @endif
                            <th>Email Verify</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong> {{ $user->username }} </strong></td>
                            <td><strong> {{ $user->rank->name or 'Admin Clerk'}}</strong> </td>
                            <td><strong> {{ $user->introducer }}</strong></td>
                            <td><strong> {{ $user->created_at }}</strong></td>
                            <td>
                                <strong>
                                    @if(!is_null($user->profile)) 
                                        @php 
                                            $status = '';

                                            if($user->type == 'personal' && (!is_null($user->profile->id_pic) || !empty($user->profile->id_pic)))
                                            {
                                                $status = $user->profile->status_ic;
                                            }
                                            elseif($user->type == 'business' && (!is_null($user->profile->company_reg_cert) || !empty($user->profile->company_reg_cert)))
                                            {
                                                $status = $user->profile->cert_status;
                                            }
                                        @endphp

                                        @switch( $status )
                                            @case('Approved')
                                                @php 
                                                    $label = 'success'; 
                                                    break;
                                                @endphp    
                                            @case('Pending')
                                                @php 
                                                    $label = 'warning';
                                                    break;
                                                @endphp
                                            @case('Not Valid')
                                                @php
                                                    $label = 'danger';
                                                    break;
                                                @endphp
                                            @case('Waiting Approval')
                                                @php
                                                    $label = 'primary';
                                                    break;
                                                @endphp
                                            @default
                                                @php
                                                    $label = 'default';
                                                @endphp
                                        @endswitch
                                        @if($label == 'warning')
                                            @if($user->type == 'personal')
                                            <a href="{{ url('profile/upload-ic')}}">
                                                <span class="label label-{{$label}} label-form">{{ $user->profile->status_ic}} | Upload IC</span>
                                            </a>
                                            @else
                                            <a href="{{ url('profile/upload-company-cert')}}">
                                                <span class="label label-{{$label}} label-form">{{ $user->profile->cert_status}} | Upload Cert</span>
                                            </a>
                                            @endif
                                        @else
                                            @if($user->type == 'personal')
                                            <span class="label label-{{$label}} label-form">{{ $user->profile->status_ic}}</span>
                                            @else
                                            <span class="label label-{{$label}} label-form">{{ $user->profile->cert_status}}</span>
                                            @endif
                                        @endif
                                    @else
                                        <a href="{{url('profile/create') }}">
                                            <span class="label label-warning label-form">Pending | Create Profile</span>
                                        </a>
                                    @endif
                                </strong>
                            </td>
                            <td>
                                <strong>
                                    @if(!is_null($user->email)) 
                                        <span class="label label-success label-form">Verified</span>
                                    @else
                                        <span class="label label-warning label-form">Pending</span>
                                    @endif
                                </strong>
                            </td>
                        </tr>
                    </tbody>
                </table>                                
            </div>
        </div>
    </div> 
</div>                           
<div class="row">  
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">
                <h3>
                    <span class="fa fa-credit-card"></span> 
                    <span class="xn-text">Vault</span>
                </h3>  
            </div>
            <div class="panel-body">
                <table class="table text-uppercase">
                    <thead>
                        <tr>
                            <th>Vault</th>
                            <th>Advance</th>
                            <th>Pts (Min Maintain Monthly: >= 100)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong> {{ $wallet->vault or 0 }} </strong></td>
                            <td><strong> {{ $wallet->advance or 0}} </strong> </td>
                            <td><strong> {{ $wallet->pv or 0}} </strong> </td>
                        </tr>
                    </tbody>
                </table>                                
            </div>
        </div>
    </div>
</div>                   
<div class="row">  
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">
                <h3>
                    <span class="fa fa-bar-chart-o"></span> 
                    <span class="xn-text">My Performance</span>
                </h3>  
            </div>
            <div class="panel-body">

                <div class="col-md-3">
                    {{-- <div class="panel-footer contact-footer">
                        <div class="row">
                            <div class="col-md-4 border-right" style="">
                                <div class="contact-stat"><span>Sales: </span> <strong>200</strong></div>
                            </div>
                            <div class="col-md-4 border-right" style="">
                                <div class="contact-stat"><span>Referrals: </span> <strong>300</strong></div>
                            </div>
                            <div class="col-md-4" style="">
                                <div class="contact-stat"><span>Views: </span> <strong>400</strong></div>
                            </div>
                        </div>
                    </div> --}}
                    <div class="widget widget-primary widget-item-icon">
                        <div class="widget-item-left">
                            <span class="fa fa-dollar"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-int num-count">MYR {{ $total_sales }}</div>
                            <div class="widget-title">Total Sales</div>
                            <div class="widget-subtitle">On our website and app</div>
                        </div>
                        <div class="widget-controls">                                
                            <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                        </div>                            
                    </div>
                </div>

                <div class="col-md-3">
                    {{-- <div class="panel-footer contact-footer">
                        <div class="row">
                            <div class="col-md-4 border-right" style="">
                                <div class="contact-stat"><span>Sales: </span> <strong>200</strong></div>
                            </div>
                            <div class="col-md-4 border-right" style="">
                                <div class="contact-stat"><span>Referrals: </span> <strong>300</strong></div>
                            </div>
                            <div class="col-md-4" style="">
                                <div class="contact-stat"><span>Views: </span> <strong>400</strong></div>
                            </div>
                        </div>
                    </div> --}}
                    <div class="widget widget-item-icon" style="background-color: #ee2250">
                        <div class="widget-item-left">
                            <span class="fa fa-user"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-int num-count"> {{ $user->total_referral }}</div>
                            <div class="widget-title">Total Sponsor</div>
                            {{-- <div class="widget-subtitle">On our website and app</div> --}}
                        </div>
                        <div class="widget-controls">                                
                            <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                        </div>                            
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>   
<div class="row">  
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">
                <h3>
                    <span class="fa fa-bar-chart-o"></span> 
                    <span class="xn-text">My Introducer</span>
                </h3>  
            </div>
            <div class="panel-body">
                @foreach($uplines as $upline)
                    <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="assets/images/users/user3.jpg" alt="Nadia Ali">
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">{{ $upline->user->username }}</div>
                                        <div class="profile-data-title">{{ $upline->user->rank->name }}</div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br>{{ $upline->user->mobile_no }}</p>
                                        <p><small>Email</small><br>{{ $upline->user->email }}</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                @endforeach
            </div>
        </div>
    </div>
</div>  
<div class="row">  
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading ui-draggable-handle">
                <h3>
                    <span class="fa fa-bar-chart-o"></span> 
                    <span class="xn-text">My Agents</span>
                </h3>  
            </div>
            <div class="panel-body">
                @foreach($downlines as $downline)
                    
                    <div class="col-md-3">
                        <!-- CONTACT ITEM -->
                        <div class="panel panel-default">
                            <div class="panel-body profile">
                                <div class="profile-image">
                                    <img src="assets/images/users/user3.jpg" alt="Nadia Ali">
                                </div>
                                <div class="profile-data">
                                    <div class="profile-data-name">{{ $downline->user->username }}</div>
                                    <div class="profile-data-title">{{ $downline->user->rank->name }}</div>
                                </div>
                                <div class="profile-controls">
                                    <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                    <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                </div>
                            </div>                                
                            <div class="panel-body">                                    
                                <div class="contact-info">
                                    <p><small>Mobile</small><br>{{ $downline->mobile_no }}</p>
                                    <p><small>Email</small><br>{{ $downline->email }}</p>                                   
                                </div>
                            </div>                                
                        </div>
                        <!-- END CONTACT ITEM -->
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>                                   

@endsection