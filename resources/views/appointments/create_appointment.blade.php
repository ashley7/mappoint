@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create new Appointments</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('appointments.index')}}">View Appointments</a>
                 </div>
            </div>

            <div class="row">
                <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">
                        <form method="POST" action="{{route('appointments.store')}}">
                            {{ csrf_field() }}

                            <br><br>

                            <label>Choose a group:</label>
                            <select name="group_id" class="form-control select2">
                                <option></option>
                                @foreach($read_FamilySuportGroup as $family_suport_group)
                                 <option value="{{$family_suport_group->id}}">{{$family_suport_group->name}}</option>
                                @endforeach
                            </select>

                            <br><br>

                            <label>Date:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="date_to_return" value="{{old('date_to_return')}}" placeholder="mm/dd/yyyy" id="datepicker">
                                <span class="input-group-addon bg-custom b-0"><i class="icon-calender"></i></span>
                            </div><!-- input-group -->

                             <br><br>
                           

                            <label>Time:</label>
                             <div class="form-group">
                                 <div class="input-group">
                                    <input id="timepicker3" name="time_to_return" value="{{old('time_to_return ')}}" type="text" class="form-control">
                                    <span class="input-group-addon"><i class="zmdi zmdi-time"></i></span>
                                </div><!-- input-group -->
                            </div>
                        
                      
                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>              
                            
                        </form>
                    </div>
                </div>
            </div>
        </div> 
@endsection