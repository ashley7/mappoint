@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Edit</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('appointments.index')}}">View Appointments</a>
                 </div>
            </div>
            
                {{Form::model($save_ApointmentRecord,['method'=>'PATCH', 'action'=>['ApointmentRecordController@update',$save_ApointmentRecord->id]])}}
                    <div class="row">
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">                      
                            <label>Number of visits</label>
                            <input type="text" name="number_of_visits" value="{{$save_ApointmentRecord->number_of_visits}}" class="form-control">

                            <label>Attendance status</label>
                            <input type="text" name="attendance_status" value="{{$save_ApointmentRecord->attendance_status}}" class="form-control">  

                            <label>Follow up status</label> 
                            <input type="text" name="follow_up_status" value="{{$save_ApointmentRecord->follow_up_status}}" class="form-control"> 

                            <label>Notes</label>
                             <input type="text" name="notes" value="{{$save_ApointmentRecord->notes}}" class="form-control"> 

                              <input type="hidden" name="id" value="{{$id}}">
                      
                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>              
                            
                       
                    </div>

                     <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">                            

                            <label>Method of follow up</label>
                            <input type="text" name="methodoffollowup" value="{{$save_ApointmentRecord->method_of_follow_up}}" class="form-control"> 

                            <label>Reschedauled date</label>
                            <input type="text" name="reschedauleddate" id="reschedauleddate" value="{{$save_ApointmentRecord->reschedauled_date}}" class="form-control"> 

                            <label>Reschedauled time</label>
                            <input type="text" id="datepicker" name="reschedauledtime" value="{{$save_ApointmentRecord->reschedauled_time}}" class="form-control">

                            <label>Care Type</label>
                            <select name="caretype_id[]" class="form-control" multiple="multiple">
                                <option></option>
                                @foreach($read_CareType as $caretype)
                                  <option value="{{$caretype->id}}">{{$caretype->name}}</option>
                                @endforeach
                            </select>
                         
                     </div>
                 </div>
             {{Form::close()}}
        </div>
    </div> 
@endsection