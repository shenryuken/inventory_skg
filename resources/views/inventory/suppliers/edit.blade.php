

@extends('layouts.joli.app')
@section('title','Supplier')

@section('content')

<!-- START BREADCRUMB -->
<ul class="breadcrumb">
    <li><a href="{{ url('home') }}">Home</a></li>
    <li><a href="{{ url('supplier/supplierDetail') }}">Supplier</a></li>
    <li class="active">Supplier Detail</li>
</ul>
<!-- END BREADCRUMB -->

<!-- PAGE CONTENT WRAPPER -->
@if(session("message"))        
<div class="alert alert-success">
    <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    {{ session("message") }}
</div>
</div>
@endif
@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif
<div class="page-content-wrap">
    <div class="row">
        <div class="col-md-12">
            <form id="submit_form" class="form-horizontal" method="post" action="{{ url('inventory/supplier/update')}}">
				{{ csrf_field() }}
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Supplier Detail</h3>
						<?php if(isset($supplier)){ ?>
							<div class="actions pull-right">
								<a href="{{ url('inventory/supplier/' . $supplier->id) }}" class="btn-sm btn-circle">
								<i class="fa fa-eye"></i> View </a>
							</div>
						<?php } ?>
                    </div>
                    <div class="panel-body">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label class="col-md-3 control-label">Supplier Code</label>
									<div class="col-md-9">
											<input name="supplier_code" type="text" class="form-control" value="{!! $supplier->supplier_code !!}" readonly>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Company Name</label>
									<div class="col-md-9">
										<input name="company_name" type="text" class="form-control" value="{!! $supplier->company_name !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Address 1</label>
									<div class="col-md-9">
										<input name="street" type="text" class="form-control" value="{!! $supplier->street !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Address 2</label>
									<div class="col-md-9">
										<input name="street2" type="text" class="form-control" value="{!! $supplier->street2 !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Postal Code</label>
									<div class="col-md-9">
										<input name="postcode" type="text" class="form-control" value="{!! $supplier->postcode !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">City</label>
									<div class="col-md-9">
										<input name="city" type="text" class="form-control" value="{!! $supplier->city !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">State</label>
									<div class="col-md-9">
										<input name="state" type="text" class="form-control" value="{!! $supplier->state !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Country</label>
									<div class="col-md-9">
										<input name="country" type="text" class="form-control" value="{!! $supplier->country !!}">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="col-md-3 control-label">Telephone</label>
									<div class="col-md-9">
										<input name="telephone" type="text" class="form-control" value="{!! $supplier->telephone_no !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Fax No</label>
									<div class="col-md-9">
										<input name="fax" type="text" class="form-control" value="{!! $supplier->fax_no !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Attn To</label>
									<div class="col-md-9">
										<input name="attn_no" type="text" class="form-control" value="{!! $supplier->attn_no !!}">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">Email</label>
									<div class="col-md-9">
										<input name="email" type="email" class="form-control" value="{!! $supplier->email !!}">
										<input name="id" type="hidden" class="form-control" value="{!! $supplier->id !!}">
									</div>
								</div>
								
							</div>
						</div>
                    </div>
                    <div class="panel-footer">
                        <button class="btn btn-primary pull-right">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END PAGE CONTENT WRAPPER -->

@endsection