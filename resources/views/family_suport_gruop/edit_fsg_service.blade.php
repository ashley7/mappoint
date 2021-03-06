@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;"> Edit {{$read_FsgService->name}}</h2>
                </div>
                <div class="pull-right">
                    <a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('family_suport_group.index')}}">View FSG</a>
                 </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">

                 {{Form::model($read_FsgService,['method'=>'PATCH', 'action'=>['FsgServiceController@update',$read_FsgService->id]])}}

                    <label>Name:</label>
                    <input type="text" name="name" value="{{$read_FsgService->name}}" class="form-control">

                    <label>Short Name:</label>
                    <input type="text" name="short_name" value="{{$read_FsgService->short_name}}" class="form-control">
                    <br><br>
                    <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Edit {{$read_FsgService->name}}</button>              
                
                {{Form::close()}}
                </div>
            </div>
            </div>
        </div> 
@endsection