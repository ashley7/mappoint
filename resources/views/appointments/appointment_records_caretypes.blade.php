@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create Care types</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('care_types.index')}}">View Care types</a>
                 </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6"> 

                    <form method="POST" action="{{route('care_types.store')}}">
                        {{ csrf_field() }}

                        <label>Name:</label>
                        <input type="text" name="name" value="{{old('name')}}" class="form-control">

                        <label>Description:</label>
                        <input type="text" name="description" value="{{old('description')}}" class="form-control">         
                        <br><br>
                        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>              
                        
                    </form>
                </div>
            </div>
        </div>
    </div> 
@endsection