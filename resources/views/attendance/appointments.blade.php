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
	                		 
	                		<?php 
	                		  $count_of_members=App\FalimlySuportGroupRegister::all()->where('family_suport_group_id',$appointments->familysuportgroup->id)->count();
	                		  // COUNT MEMEMBERS WITH APPOINTMTNT RECORDS
	                		  $count_ApointmentRecord=App\ApointmentRecord::where('appointment_id',$appointments->id)->count();
	                		 ?>
	                		  
	                		<td>
	                			 
	                			<?php 
	                				$id=$appointments->familysuportgroup->id."_".$appointments->id;
								?>                			
	                			 	<a title="Add records {{$appointments->name}}" class="btn btn-success waves-effect" href="{{route('attandance.edit',$id)}}"><i class="zmdi zmdi-plus"></i> <span> Record attendance</span>  </a>  
  
 
                			  
	                		</td>
	                	</tr>
	                @endforeach
	              	</tbody>
	            </table>
            </div>
        </div> 
@endsection
