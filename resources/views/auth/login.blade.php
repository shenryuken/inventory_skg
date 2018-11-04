<!DOCTYPE html>
<html lang="en" class="body-full-height">
    <head>
        <!-- META SECTION -->
        <title>SKG World</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->
        <link rel="stylesheet" type="text/css" id="theme" href="{{ asset('themes/Joli/css/theme-default.css')}}"/>
        <!-- EOF CSS INCLUDE -->
    </head>
    <body>
        
        <div class="login-container lightmode">
            
            <div class="login-box animated fadeInDown">
                <div class="login-body">
                    <div class="login-title"><strong>Agent Log In</strong></div>
                    
                    <form id="loginForm" class="form-horizontal" method="post" action="{{ route('login') }}">
                        {{ csrf_field() }}
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <div class="col-md-12">
                                <input  id="email" type="text" class="form-control" placeholder="E-mail" name="email" value="{{ old('email') }}" required autofocus>
                            </div>
                            @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <div class="col-md-12">
                                <input type="password" class="form-control" placeholder="Password" name="password">
                            </div>
                            @if ($errors->has('password'))
                            <span class="help-block">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                            @endif
                        </div>
                        
                        <div class="form-group">
                        {{-- <div class="col-md-6">
                            <a href="#" class="btn btn-link btn-block">Forgot your password?</a>
                        </div> --}}
                        <div class="col-md-12">
                            <button class="btn btn-primary btn-block">Log In</button>
                        </div>
                    </div>
                    <div class="login-or hide">OR</div>
                    <div class="form-group hide">
                        <div class="col-md-4">
                            <button class="btn btn-info btn-block btn-twitter"><span class="fa fa-twitter"></span> Twitter</button>
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-info btn-block btn-facebook"><span class="fa fa-facebook"></span> Facebook</button>
                        </div>
                        <div class="col-md-4">                            
                            <button class="btn btn-info btn-block btn-google"><span class="fa fa-google-plus"></span> Google</button>
                        </div>
                    </div>
                    <div class="login-subtitle hide ">
                        Want to log in as agent? <a href="{{url('/login')}}">Agent Login</a>
                    </div>
                    </form>
                </div>
                <div class="login-footer hide">
                    <div class="pull-left">
                        &copy; 2014 AppName
                    </div>
                    <div class="pull-right">
                        <a href="#">About</a> |
                        <a href="#">Privacy</a> |
                        <a href="#">Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
