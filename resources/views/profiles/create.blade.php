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

        @component('components.notifications.errors')
        @endcomponent

        @include('components.notifications.messages')

        <!-- @if(Auth::guard('admin')->check())
            <input type="hidden" name="profileable_id" value="{{ Auth::guard('admin')->user()->id }}">
            <input type="hidden" name="profileable_type" value="App\Admin">
            @else
            <input type="hidden" name="profileable_id" value="{{ Auth::guard('web')->user()->id }}">
            <input type="hidden" name="profileable_type" value="App\User">
        @endif                   -->   
        <div class="panel panel-default">
            <form class="form-horizontal" method="post" action="{{ url('/profile') }}">
                {{ csrf_field() }}

                @component('components.forms.profile')
                @endcomponent

            </form>
        </div>
    </div> 
</div>

@endsection

