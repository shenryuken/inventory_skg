@extends('layouts.joli.app')
{{-- Page title --}}
@section('title')
    MyKad\Passport Status Index
    @parent
@stop
<?php $page_title = 'Create My Profile'; ?>
@section('content') 

<div class="row">
  <div class="col-md-12">

    @component('components.notifications.errors', ['errors' => $errors])
    @endcomponent

    @component('components.notifications.messages')
    @endcomponent

    @if(Auth::guard('admin')->check() || Auth::guard('web')->check())                       
    <form class="form-horizontal" method="post" action="{{ route('profile.update', $profile->id) }}">
      {{ csrf_field() }}

      @include('components.forms.profile')
    

    </form>
    @else
      You don't have permission to this action!
    @endif
  </div> 
</div>

@endsection