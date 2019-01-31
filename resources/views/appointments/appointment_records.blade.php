@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">{{$title}}</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('appointments.index')}}">Appointments</a>
                 </div>
            </div>
             <div class="table-responsive">
             	<table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Number of visits</th>
	                        <th>Appointment period</th>
	                        <th>Attendance status</th>   
	                        <th>Follow up status</th>
	                        <th>Notes</th>
	                        <th>Method of follow up</th>
	                        <th>Reschedauled date</th>
	                        <th>Reschedauled time</th>
	                        <th>Care types</th>
	                        <th>Action</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	@foreach($read_ApointmentRecord as $apointmentRecord)
	                	<tr>
	                		<td>{{$apointmentRecord->id}}</td>
	                		<td>{{$apointmentRecord->number_of_visits}}</td>
	                		<td>{{$apointmentRecord->appointment->date_to_return}} {{$apointmentRecord->appointment->time_to_return}}</td>
	                		<td>{{$apointmentRecord->attendance_status}}</td>
	                		<td>{{$apointmentRecord->follow_up_status}}</td>
	                		<td>{{$apointmentRecord->notes}}</td>
	                		<td>{{$apointmentRecord->method_of_follow_up}}</td>
	                		<td>{{$apointmentRecord->reschedauled_date}}</td>
	                		<td>{{$apointmentRecord->reschedauled_time}}</td>
	                		<td>
	                			@foreach($apointmentRecord->appointmentrecordcaretype as $caretypetress)
	                			  {{$caretypetress->caretype->name}}
	                			@endforeach
	                		</td>
	                		<td>
	                			{{ Form::open(array('route' => array('appointment_records.destroy',$apointmentRecord->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}
	                			<?php 
	                			
	                			// $data_id=$id."_".$apointmentRecord->id;

	                			 ?>
	                				<a title="Add records" class="btn btn-info waves-effect" href="{{route('appointmentcarepoint.edit',$apointmentRecord->id)}}"><i class="zmdi zmdi-edit"></i></a>                             
                  				 	<button type="submit" class="btn btn-danger waves-effect" title="Delete"> <i class="fa fa-trash m-r-5"></i> </button>
                			     {{ Form::close()}} 
	                		</td>
	                	</tr>
	                	@endforeach	                	               	 
					</tbody>
	            </table>
	         </div>
        </div>
	</div> 
@endsection