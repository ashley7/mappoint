@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create PT Clinic</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('pt_clinic.index')}}">View PT Clinic</a>
                 </div>
            </div>

                 {{Form::model($read_PtClinic,['method'=>'PATCH', 'action'=>['PtClinicController@update',$read_PtClinic->id]])}}

                <label>Name:</label>
                <input type="text" name="name" value="{{$read_PtClinic->name}}" class="form-control">

                <label>Description:</label>
                <input type="text" name="description" value="{{$read_PtClinic->description}}" class="form-control">


                <label>Number:</label>
                <input type="text" name="number" value="{{$read_PtClinic->number}}" class="form-control">

                

                    <fieldset class="form-group">
                     <label>District</label>
                        <select class="form-control" name="district_id">
                            @foreach($read_districts as $district)      
                                <option value="{{$district->id}}">{{$district->name}}</option>
                            @endforeach
                        </select>
                    </fieldset>
          

                <br><br>
                <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Edit {{$read_PtClinic->name}}</button>              
                
            {{Form::close()}}
            </div>
        </div> 
@endsection