@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create user</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('person.index')}}">View Users</a>
                 </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">

                        <form method="POST" action="{{route('person.store')}}">
                            {{ csrf_field() }}

                            <label>Name:</label>
                            <input type="text" name="name" value="{{old('name')}}" class="form-control">

                            <label>Email:</label>
                            <input type="email" name="email" value="{{old('email')}}" class="form-control">

                            <label>Phone:</label>
                            <input type="phone_number" name="phone_number" value="{{old('phone_number')}}" class="form-control">   

                            <label>Address</label>
                             <select name="village_id" class="form-control select2">
                                <option></option>
                                @foreach($village as $vllages)
                                  <option value="{{$vllages->id}}">{{$vllages->name}}</option>
                                @endforeach
                            </select>
                            

                            <label>Role</label>
                            <option></option>
                            <select name="role_id[]" class="form-control select2" multiple="multiple">
                                @foreach($roles as $role)
                                  <option value="{{$role->id}}">{{$role->display_name}}</option>
                                @endforeach
                            </select>
                      

                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>              
                            
                        </form>
                    </div>
                </div>
            </div>
        </div> 
@endsection