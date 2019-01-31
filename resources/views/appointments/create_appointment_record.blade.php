@extends('layouts.master')
@section('content')
<br><br>
     <div class="card-box">
     <br>                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Make {{$read_HivCareArtCard->surName}} {{$read_HivCareArtCard->firstName}}'s record for {{$read_Appointment->familysuportgroup->name}} {{$read_Appointment->date_to_return}} {{$read_Appointment->time_to_return}}</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('appointments.index')}}">View Appointments</a>
                 </div>
            </div>
                <br>
            
                  <form method="POST" action="{{route('appointment_records.store')}}">
                    <div class="row">
                        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">                      
                            {{ csrf_field() }}                    
                            

                            <label>Number of visits</label>
                            <input type="text" name="number_of_visits" class="form-control">

                            <label>Attendance status</label>
                            <input type="text" name="attendance_status" class="form-control">  

                            <label>Follow up status</label> 
                            <input type="text" name="follow_up_status" class="form-control"> 

                            <label>Notes</label>
                            <textarea name="notes" class="form-control"></textarea>

                            <input type="hidden" name="appointment_id" value="{{$read_Appointment->id}}">
                            <input type="hidden" name="hiv_care_art_card_id" value="{{$read_HivCareArtCard->id}}">
                            <input type="hidden" name="id" value="{{$id}}">
                      
                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>              
                            
                       
                    </div>

                     <div class="col-sm-6 col-xs-12 col-md-6 col-lg-6">                            

                            <label>Method of follow up</label>
                            <input type="text" name="methodoffollowup" class="form-control"> 

                            <label>Reschedauled date</label>
                            <input type="text" id="reschedauleddate" name="reschedauleddate"  class="form-control"> 

                            <label>Reschedauled time</label>
                            <input type="text" id="timepicker3" name="reschedauledtime" class="form-control">

                            <label>Care Type</label>
                            <select name="caretype_id[]" class="form-control select2" multiple="multiple">
                                <option></option>
                                @foreach($read_CareType as $caretype)
                                  <option value="{{$caretype->id}}">{{$caretype->name}}</option>
                                @endforeach
                            </select>
                         
                     </div>
                 </div>
             </form>
        </div>
    </div> 
@endsection