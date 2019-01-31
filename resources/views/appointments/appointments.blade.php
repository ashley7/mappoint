@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Family Support Group Appointments</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('appointments.create')}}">Add Appointment</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                    	<th>#</th>
	                        <th>Gruop Name</th>
	                        <th>Date</th>            
	                        <th>Time</th>	  
	                        <th>Status</th>
	                        <th>No. of Poeple</th>
	                        <th>Recorded</th>               
	                        <th>No records</th>               
	                        <th>Action</th>               
	                    </tr>
	                </thead>
	                
	                <tbody>
	                @foreach($read_Appointment as $appointments)
	                	<tr>
	                		<td>{{$appointments->id}}</td>
	                		<td><a title="Show Members" href="{{route('family_suport_group.show',$appointments->familysuportgroup->id)}}"> {{$appointments->familysuportgroup->name}}</a></td>
	                		<td>{{$appointments->date_to_return}}</td>
	                		<td>{{$appointments->time_to_return}}</td>
	                		<td>
	                			@if($appointments->appointment_status==1)
	                			  <a href="{{route('appointmentcarepoint.show',$appointments->id)}}" class="btn btn-danger waves-effect">Pending</a>
	                			@elseif($appointments->appointment_status==2)
	                			  <a href="{{route('appointmentcarepoint.show',$appointments->id)}}" class="btn btn-success waves-effect">Done</a>
	                			@endif
	                		</td>
	                		<?php 
	                		  $count_of_members=App\FalimlySuportGroupRegister::all()->where('family_suport_group_id',$appointments->familysuportgroup->id)->count();
	                		  // COUNT MEMEMBERS WITH APPOINTMTNT RECORDS
	                		  $count_ApointmentRecord=App\ApointmentRecord::where('appointment_id',$appointments->id)->count();
	                		 ?>
	                		 <td>{{$count_of_members}}</td>
	                		<td>{{$count_ApointmentRecord}}</td>
	                		<td>{{$count_of_members-$count_ApointmentRecord}}</td>
	                		<td>
	                			{{ Form::open(array('route' => array('appointments.destroy',$appointments->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}	
	                			<?php 
	                				$id=$appointments->familysuportgroup->id."_".$appointments->id;

	                			 ?>                			
	                			 	<a title="Add records {{$appointments->name}}" class="btn btn-success waves-effect" href="{{route('appointment_records.edit',$id)}}"><i class="zmdi zmdi-plus"></i> <span> Record</span>  </a>  

                				    <a title="Edit {{$appointments->name}}" class="btn btn-info waves-effect" href="{{route('appointments.edit',$appointments->id)}}"><i class="zmdi zmdi-edit"></i> <span> Edit</span>  </a>  

                				    <a title="Munually push SMS Notifications to Members in {{$appointments->familysuportgroup->name}}" class="btn btn-warning waves-effect" href="{{route('communication.show',$appointments->id)}}"><i class="zmdi zmdi-edit"></i> <span>Push SMS</span>  </a>  

                  				 	<button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i> </button>
                			     {{ Form::close()}} 
	                		</td>
	                	</tr>
	                @endforeach
	              	</tbody>
	            </table>
            </div>
        </div> 
@endsection
