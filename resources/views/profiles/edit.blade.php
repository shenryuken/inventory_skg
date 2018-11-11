@extends('layouts.joli.app')
{{-- Page title --}}
@section('title')
    Profile - Update
    @parent
@stop
<?php $page_title = 'Profile - Update'; ?>
@section('content') 

<div class="row">
    <div class="col-md-12">

        @component('components.notifications.errors', ['errors' => $errors])
        @endcomponent

        @component('components.notifications.messages')
        @endcomponent

        @if(Auth::guard('admin')->check() || Auth::guard('web')->check())   
        <div class="panel panel-default">                    
            <form class="form-horizontal" method="post" action="{{ route('profile.update', $profile->id) }}">
              <input name="_method" type="hidden" value="PUT">
              {{ csrf_field() }}

              @include('components.forms.profile')
          

            </form>
        </div>
        @else
          You don't have permission to this action!
        @endif
    </div> 
</div>

@endsection