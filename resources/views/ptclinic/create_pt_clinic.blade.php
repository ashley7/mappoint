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

            <form method="POST" action="{{route('pt_clinic.store')}}">
                {{ csrf_field() }}

                <label>Name:</label>
                <input type="text" name="name" value="{{old('name')}}" class="form-control">

                <label>Description:</label>
                <input type="text" name="description" value="{{old('description')}}" class="form-control">


                <label>Number:</label>
                <input type="text" name="number" value="{{old('number')}}" class="form-control">

                

                    <fieldset class="form-group">
                     <label>District</label>
                        <select class="form-control" name="district_id">
                            @foreach($read_districts as $district)      
                                <option value="{{$district->id}}">{{$district->name}}</option>
                            @endforeach
                        </select>
                    </fieldset>
          

                <br><br>
                <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save PT Clinic</button>              
                
            </form>
            </div>
        </div> 
@endsection