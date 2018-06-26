@extends('layouts.joli.app')
{{-- Page title --}}
<?php $page_title = 'Admins - Update Detail'; ?>
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

  <form class="form-horizontal" method="post" action="{{ route('admin.update', $admin->id) }}">
	  {{csrf_field()}}
	  <input name="_method" type="hidden" value="PUT">
  
    {{-- @component('components.forms.staff', [ 'roles' => isset($roles) ? $roles: ''])
    @endcomponent --}}
    @include('components.forms.staff')

  </form>
  
</div>
@endsection