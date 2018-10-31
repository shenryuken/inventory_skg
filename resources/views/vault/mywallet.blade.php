@extends('layouts.joli.app')

{{-- Page title --}}
@section('title')
    User Lists
    @parent
@stop

@section('content')
<?php $page_title = 'User Lists'; ?>

<div class="row">
    <div class="col-lg-12" style="">
        <div class="hpanel">
            <div class="panel-body">
                <h3>My Wallet</h3>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-3" style="">
        <div class="hpanel hbggreen">
            <div class="panel-body">
                <div class="text-center">
                    <h3>Vault</h3>
                    <p class="text-big font-light">
                        <strong>{{ $wallet->vault or 0}}</strong>
                    </p>
                    <!-- <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small> -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3" style="">
        <div class="hpanel hbgblue">
            <div class="panel-body">
                <div class="text-center">
                    <h3>Advance</h3>
                    <p class="text-big font-light">
                        <strong>{{ $wallet->advance or 0}}</strong>
                    </p>
                    <!-- <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small> -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3" style="">
        <div class="hpanel hbgyellow">
            <div class="panel-body">
                <div class="text-center">
                    <h3>PTS</h3>
                    <p class="text-big font-light">
                        <strong>{{ $wallet->pv or 0}}{{-- 750 --}}</strong>
                    </p>
                    <!-- <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small> -->
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3" style="">
        <div class="hpanel hbgred">
            <div class="panel-body">
                <div class="text-center">
                    <h3>DO GPTS</h3>
                    <p class="text-big font-light">
                        <strong>{{ $wallet->do_pv or 0}}{{-- 43 --}}</strong>
                    </p>
                    <!-- <small>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </small> -->
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="hpanel">
            <div class="panel-heading">
                <div class="panel-tools">
                    <a class="showhide"><i class="fa fa-chevron-up"></i></a>
                    <a class="closebox"><i class="fa fa-times"></i></a>
                </div>
                Bonus Summary This Month 
            </div>
            <div class="panel-body">
                <table id="example2" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Bonus</th>
                            <th>Qualify</th>
                            <th>Total Bonus</th>
                            <th>Bonus Type</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Retail Profit</td>
                            <td>{{$qualified_bonus['retail_profit']}}</td>
                            <td>{{ isset($user_bonus->retail_profit) ? number_format($user_bonus->retail_profit, 2):0 }}</td>
                            <td>MYR</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Personal Rebate</td>
                            <td>{{$qualified_bonus['personal_rebate']}}</td>
                            <td>{{ isset($user_bonus->personal_rebate) ? number_format($user_bonus->personal_rebate, 2):0}}</td>
                            <td>MYR - Evoucher</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Direct Sponsor</td>
                            <td>{{$qualified_bonus['direct_sponsor']}}</td>
                            <td>{{ isset($user_bonus->direct_sponsor) ? number_format($user_bonus->direct_sponsor, 2):0 }}</td>
                            <td>MYR</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>3 Generations Group Bonus</td>
                            <td>{{$qualified_bonus['do_group_bonus']}}</td>
                            <td>{{ isset($user_bonus->do_group_bonus) ? number_format($user_bonus->do_group_bonus, 2):0 }}</td>
                            <td>MYR</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>DO CTO Pool</td>
                            <td>{{$qualified_bonus['do_cto']}}</td>
                            <td>{{ isset($user_bonus->do_cto_pool) ? number_format($user_bonus->do_cto_pool, 2):0 }}</td>
                            <td>MYR</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>SDO CTO Pool</td>
                            <td>{{$qualified_bonus['sdo_cto']}}</td>
                            <td>{{ isset($user_bonus->sdo_cto_pool) ? number_format($user_bonus->sdo_cto_pool, 2):0 }}</td>
                            <td>MYR</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>SDO Group Bonus</td>
                            <td>{{$qualified_bonus['sdo']}}</td>
                            <td>{{ isset($user_bonus->sdo_group_bonus) ? number_format($user_bonus->sdo_group_bonus, 2):0 }}</td>
                            <td>MYR</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>SDO To SDO Bonus</td>
                            <td>{{$qualified_bonus['sdo_to_sdo']}}</td>
                            <td>{{ isset($user_bonus->sdo_sdo) ? number_format($user_bonus->sdo_sdo, 2):0 }}</td>
                            <td>MYR</td>
                            <td><a href="">View Details</a></td>  
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection
@section('footer_scripts')
<!-- START SCRIPTS -->

<!-- START THIS PAGE PLUGINS-->
<script type='text/javascript' src="{{ asset('themes/Joli/js/plugins/icheck/icheck.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js') }}"></script>

<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/tableExport.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jquery.base64.js"') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/html2canvas.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/sprintf.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/jspdf.js') }}"></script>
<script type="text/javascript" src="{{ asset('themes/Joli/js/plugins/tableexport/jspdf/libs/base64.js') }}"></script>
<!-- END THIS PAGE PLUGINS-->
<!-- END SCRIPTS -->
@stop