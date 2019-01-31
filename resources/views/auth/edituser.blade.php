@extends('layouts.master')
@section('content')

     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Edit</h2>
                </div>             
            </div>

             <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">

                     {{Form::model(Auth::user(),['method'=>'PATCH', 'action'=>['UserController@update',Auth::user()->id]])}}

                        <label for="name" class="control-label">Name</label>
                        <input id="name" type="text" class="form-control" name="name" value="{{ Auth::user()->name}}" required autofocus> 


                        <label for="email" class="control-label">E-Mail Address</label>
                        <input id="email" type="email" class="form-control" name="email" value="{{ Auth::user()->email}}" required autofocus>    

                        <label for="address" class="control-label">Address</label>
                        <input id="address" type="text" class="form-control" name="address" value="{{ Auth::user()->address}}" required autofocus>  

                        <label for="phone_number" class="control-label">Phone number</label>
                        <input id="phone_number" type="text" class="form-control" name="phone_number" value="{{ Auth::user()->phone_number}}" required autofocus>                  
                        
                        <br>                       

                        <div class="form-group">
                             <button type="submit" class="btn btn-primary">Save</button>
                         </div>
                    {{Form::close()}}
                </div>
            </div>
        </div>
    </div>
@endsection

 
