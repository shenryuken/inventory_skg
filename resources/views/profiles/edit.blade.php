<?php $page_title = 'Create My Profile'; ?>
@section('content') 

<div class="row">
  <div class="col-md-12">

    @component('components.notifications.errors', ['errors' => $errors])
    @endcomponent

    @component('components.notifications.messages')
    @endcomponent

    @if(Auth::guard('admin')->check())                       
    <form class="form-horizontal" method="post" action="{{ route('profile.update', $profile->id) }}">
      {{ csrf_field() }}

      @component('components.forms.profile')
      @endcomponent

    </form>
    @else
      You don't have permission to this action!
    @endif
  </div> 
</div>

@endsection