@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Edit {{$read_district_clinitian->name}}</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('district_clinician.index')}}">View District Clinicians</a>
                 </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">

                   {{Form::model($read_district_clinitian,['method'=>'PATCH', 'action'=>['DistrictClinicianController@update',$read_district_clinitian->id]])}}

                        <label>Name:</label>
                        <input type="text" name="name" value="{{$read_district_clinitian->name}}" class="form-control">

                        <label>Description:</label>
                        <input type="text" name="description" value="{{$read_district_clinitian->description}}" class="form-control">

                        <fieldset class="form-group">
                         <label>District</label>
                            <select class="form-control" name="district_id">
                                @foreach($read_districts as $district)      
                                    <option value="{{$district->id}}">{{$district->name}}</option>
                                @endforeach
                            </select>
                        </fieldset>
                  

                        <br><br>
                        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Edit {{$read_district_clinitian->name}}</button>              
                        
                    {{Form::close()}}
                </div>
            </div>
            </div>
        </div> 
@endsection