@extends('layouts.master')
@section('content')

     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Change password</h2>
                </div>             
            </div>

             <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">

                    <form class="form-horizontal" method="POST" action="{{ route('user.store') }}">
                        {{ csrf_field() }}
                            <label for="email" class="control-label">E-Mail Address</label>
                             <input id="email" type="email" class="form-control" name="email" value="{{ Auth::user()->email}}" required autofocus>

                            
                      
                  

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="control-label">Password</label>

                           
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                         
                        </div>

                        <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
                            <label for="password-confirm" class="control-label">Confirm Password</label>
                          
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>

                                @if ($errors->has('password_confirmation'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password_confirmation') }}</strong>
                                    </span>
                                @endif
                            
                        </div>

                        <div class="form-group">
                             
                                <button type="submit" class="btn btn-primary">
                                    Reset Password
                                </button>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

 
