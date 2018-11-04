<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>SKG Members Panel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!-- Styles -->
        <style>
            /*
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }
*/
            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
                /* background-color: red; */
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            

            html {
                    font-size: 14px;
                    background-color: #efef;
                    color: #636b6f;
                    font-family: 'Raleway', sans-serif;
                    font-weight: 100;
                    height: 100vh;
                    margin: 0;
                    }
                    @media (min-width: 768px) {
                    html {
                        font-size: 16px;
                    }
                    }

                    .container {
                    max-width: 960px;
                    }

                    .pricing-header {
                    max-width: 700px;
                    }

                    .card-deck .card {
                    min-width: 220px;
                    }

            
        </style>
    </head>
    <body>
        <!-- Image and text -->
<nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
          <img src="/docs/4.0/assets/brand/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
          SKG WORLD
        </a>
      </nav>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    {{-- @else
                        <a href="{{ route('login') }}">Login</a>
                        <a href="{{ route('register') }}">Register</a> --}}
                    @endauth
                </div>
            @endif

            <div class="container">
                    <div class="card-deck mb-3 text-center">
                      <div class="card text-white bg-warning mb-3">
                        <div class="card-header">
                          <h1 class="my-0 font-weight-normal">Agent</h1>
                        </div>
                        <div class="card-body">
                          <h1 class="card-title pricing-card-title"></h1>
                          
                          <a href="{{url('login')}}" class="btn btn-lg btn-block btn-light">Login here</a>
                        </div>
                      </div>

                      <div class="card text-white bg-danger mb-3">
                            <div class="card-header">
                              <h1 class="my-0 font-weight-normal">Admin</h1>
                            </div>
                            <div class="card-body">
                              <h1 class="card-title pricing-card-title"></h1>
                              
                              <a href="{{url('admin/login')}}" class="btn btn-lg btn-block btn-light">Login here</a>
                            </div>
                          </div>
                       
                       
                    </div>

            {{-- <div class="container">
                <div class="row">
                        <div class="col-md-4">
                                <div class="card mb-4 shadow-sm">
                                  <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap">
                                  <div class="card-body">
                                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                      <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                        <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                      </div>
                                      <small class="text-muted">9 mins</small>
                                    </div>
                                  </div>
                                </div>
                              </div>
                    {{-- <div class="col-md-8 col-md-offset-2">
                        <div class="panel">
                            <a href="{{url('admin/login')}}">Admin</a>
                        </div>
                    </div>
                    <div class="col-md-8 col-md-offset-2">
                            <div class="panel">
                                <a href="{{url('/login')}}">Agent</a>
                            </div>
                        </div> --}}
                </div>
            </div> --}}
        </div>
    </body>
</html>
