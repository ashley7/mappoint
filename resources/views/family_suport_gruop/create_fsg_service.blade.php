@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create family support group service</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('fsg_service.index')}}">View family suport group service</a>
                 </div>
            </div>
             <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">

                    <form method="POST" action="{{route('fsg_service.store')}}">
                        {{ csrf_field() }}

                         <label>Name:</label>
                        <input type="text" name="name" value="{{old('name')}}" class="form-control">

                        <label>Short name:</label>
                        <input type="text" name="short_name" value="{{old('short_name')}}" class="form-control">
                                   
                        <br><br>
                        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save family suport group service</button>
                    </form>
                </div>
            </div>

            </div>
        </div> 
@endsection