@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Record Attendance for {{$read_FamilySuportGroup->name}} ({{$read_Appointment->date_to_return}} : {{$read_Appointment->time_to_return}})</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('attandance.index')}}">Attendance</a>
                 </div>
            </div>

            <form method="POST" action="{{route('attandance.store')}}">
                 {{ csrf_field() }}
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
                            <th>#</th>
                            <th>Name</th>                          
                            <th>Patient Number</th>                          
                            <th>Phone Number</th>                          
                            <th>Present</th>                                                            
	                        <th>Absent</th>
	                    </tr>
	                </thead>

	                <tbody> 

                    @foreach($read_members as $members)                
                        <tr>
                          <td><input type="checkbox" name="member[]" value="{{$members->hiv_care_art_card_id}}"></td>
                          <td>{{$members->surName}} {{$members->firstName}}</td>
                          <td>{{$members->PatientNumber}}</td>
                          <td>{{$members->phone_number}}</td>
                          <td><input type="checkbox" name="present[]" value="1_{{$members->hiv_care_art_card_id}}"></td>
                          <td><input type="checkbox" name="present[]" value="0_{{$members->hiv_care_art_card_id}}"></td>
                        </tr>
                    @endforeach
	                     
	                </tbody>
	            </table>

                <br>
                <?php $data=explode('_', $id) ?>
                <input type="hidden" name="appointment" value="{{$data[1]}}">
                <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>
            </form>
        </div>
    </div> 
@endsection