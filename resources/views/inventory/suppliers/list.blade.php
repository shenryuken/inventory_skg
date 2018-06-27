@extends('layouts.joli.app')
@section('title','Supplier')

@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
    <li><a href="{{ url('home') }}">Home</a></li>
    <li><a href="{{ url('supplier/supplierDetail') }}">Supplier</a></li>
    <li class="active">Supplier Lists</li>
</ul>
<!-- END BREADCRUMB -->                  

<!-- PAGE CONTENT WRAPPER -->
<div class="page-content-wrap">
    <div class="row">
        <div class="col-md-12">
            <form class="form-horizontal">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Supplier Lists</h3>
						<div class="actions pull-right">
							<a href="{{ url('inventory/supplier/create') }}" class="btn btn-default  btn-sm btn-circle" title="Add New Supplier" >
							<i class="fa fa-plus"></i> Supplier </a>
						</div>
                    </div>
                    <div class="panel-body">
						<form class="form-horizontal" method="POST" action="#" >
							<div class="row">
								<div class="col-md-10">
									<div class="form-group">
										<label class="col-md-2 control-label"> Search </label>
										<div class="col-md-10">        
											<input type="text" class="form-control product-code" id="search" 
											placeholder=" Company Code / Name " value="" />									
										</div>
									</div>
								</div>
								<div class="col-md-1">
									<button type="submit" class="btn btn-primary">Search</button>
								</div>
								<div class="col-md-1">
									<a href="{{ url('supplier/supplierDetail') }}" class="btn btn-danger">Reset</a>
								</div>
							</div>
						</form>
                    </div>
					<div class="panel-body">
						Supplier List: {!! count($supplier) !!}
						<div class="table-responsive">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th>Supplier Code</th>
										<th>Company Name</th>
										<th>Telephone</th>
										<th>Fax No.</th>
										<th>Attn No.</th>
										<th>Email</th>
										<th colspan="3">Actions</th>
									<tr>
								</thead>
								<tbody>
										@if(count($supplier) > 0)
											@foreach($supplier as $k => $v)
												<tr>
													<td>{{ $v['supplier_code'] }}</td>
													<td>{{ $v['company_name'] }}</td>
													<td>{{ $v['tel'] }}</td>
													<td>{{ $v['fax'] }}</td>
													<td>{{ $v['attn_no'] }}</td>
													<td>{{ $v['email'] }}</td>
													<td><a href="{{ url('inventory/supplier/'.$v['id']) }}" 
														title=" View {{ $v['id'].' ('.$v['company_name'].')' }}"
														class=""><span class="fa fa-eye"></span></a>
													</td>
													<td><a href="{{ url('inventory/supplier/'.$v['id'].'/edit') }}" 
															title=' Edit {{$v['supplier_code']}} ({{$v['company_name']}})'
															class='' ><span class='fa fa-edit'></span></a>
													</td>
													<td><a href="{{ url('inventory/supplier/'.$v['id'].'/delete') }}" 
															title=' Remove {{$v['supplier_code']}} ({{$v['company_name']}})'
															class='confirm-delete' ><span class='glyphicon glyphicon-trash'></span></a>
													</td>
												</tr>
												@endforeach
											@else
												<tr><td colspan='7' align='center'>No Data Found</td>
												</tr>
												@endif
								</tbody>
							</table>
						</div>
					</div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END PAGE CONTENT WRAPPER -->

@endsection