@extends('layouts.login_master')
@section('content')
<div class="account-bg">   
    <div class="card-box m-b-0">
        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
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
        <div class="text-xs-center m-t-20">
            <a href="/" class="logo">
                <i class="zmdi zmdi-group-work icon-c-logo"></i>
                <span>{{ config('app.name', '') }}</span>
            </a>
        </div>
        <div class="m-t-30 m-b-20">
            <div class="col-xs-12 text-xs-center">
                <h6 class="text-muted text-uppercase m-b-0 m-t-0">I forgot my password</h6>
            </div>

            <form class="form-horizontal m-t-20"  method="POST" action="{{URL('forgot_password') }}">
                {{ csrf_field() }}

                <div class="form-group ">
                    <div class="col-xs-12">
                       <label>Phone number</label>
                       <input   type="text" placeholder="+256772....." class="form-control" name="phone_number" value="{{ old('phone_number') }}" required autofocus>
                    </div>
                </div>

               

                <div class="form-group ">
                    <div class="col-xs-12">
                        That phone number will recieve an SMS containing your New password.                        
                    </div>
                </div>

                <div class="form-group text-center m-t-30">
                    <div class="col-xs-12">
                        <button class="btn btn-success btn-block waves-effect waves-light" type="submit">Send me new password</button>
                    </div>
                </div>

                <div class="form-group m-t-30 m-b-0">
                    <div class="col-sm-12">
                        <a href="{{URL('/login')}}" class="text-muted"><i class="fa fa-lock m-r-5"></i> Login</a>
                    </div>
                </div>            

            </form>

        </div>
    </div>
</div>
@endsection