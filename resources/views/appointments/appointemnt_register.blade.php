@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Make member Appointment records for {{$read_Appointment->familysuportgroup->name}} On {{$read_Appointment->date_to_return}} {{$read_Appointment->time_to_return}}</h2>
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
	                        <th>Name</th>
	                        <th>Number</th>   
	                        <th>Action</th>
	                    </tr>
	                </thead>
	                <tbody>
	                	@foreach($read_members as $members)
	                	 <tr>
	                	 	<td>{{$members->id}}</td>
	                	 	<td>{{$members->hivcareartcard->surName}} {{$members->hivcareartcard->firstName}}</td>
	                	 	<td>{{$members->hivcareartcard->PatientNumber}}</td>

	                	 	<?php 
	                	 	  $id=$read_Appointment->id."_".$members->hivcareartcard->id."_".$id;
 	                	 	 ?>
	                	 	
	                	 	<td>
	                	 		<a title="Add records" class="btn btn-success waves-effect" href="{{route('appointment_records.show',$id)}}"><i class="zmdi zmdi-plus"></i></a>

	                	 		<a title="View appointment records" class="btn btn-info waves-effect" href="{{route('appointments.show', $id)}}"><i class="zmdi zmdi-eye"></i></a>
	                	 	</td>
	                	 </tr>	            
	                	@endforeach	                	 
					</tbody>
	            </table>
	         </div>
        </div>
	</div> 
@endsection