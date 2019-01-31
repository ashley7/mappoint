@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Follow-up section for Client No. {{$falimlysuportgroupregister->hivcareartcard->PatientNumber}} ({{$falimlysuportgroupregister->hivcareartcard->surName}} {{$falimlysuportgroupregister->hivcareartcard->firstName}})</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('fsg_follow_up.edit',$falimlysuportgroupregister->id)}}">Add Follow-up</a>
                 </div>
            </div>
            <div class="table-responsive">
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                    	<th>#</th>
	                        <th>Visit Number</th>
	                        <th>FSG Appointment Date</th>
	                        <th>FSG Visit Date</th>                         
	                        <th>HIV Status</th>	                  
	                        <th>Medical Services accessed</th>
	                        <th>Community services accessed</th>
	                        <th>Family Planning Method</th>
	                        <th>Comments</th>
	                    </tr>
	                </thead>


	                <tbody>

	                	@foreach($read_FamilySupportGroupRegisterFollowup as $follow_up)
	                	  <tr>
	                	  	<td>{{$follow_up->id}}</td>
	                	  	<td>{{$follow_up->fsg_number}}</td>
	                	  	<td>{{$follow_up->appoint_date}}</td>
	                	  	<td>{{$follow_up->visit_date}}</td>
	                	  	<td>{{$follow_up->hiv_status}}</td>
	                	  	<td>

	                	  		<?php 
	                	 		try {
	                	 		
	                	 		    $service_string=str_replace("[", "", $follow_up->medical_services_accessed);
	                	 		    $service_string=str_replace("]", "", $service_string);
	                	 		    $service_string=str_replace("\"", "", $service_string);

	                	 		    $service=explode(",", $service_string);

	                	 		    for ($i=0; $i <count($service) ; $i++) { 
	                	 		    	# code...
	                	 		    	try {
	                	 		    		$serv=App\FsgService::find($service[$i]);
	                	 		    		echo $serv->name.", ";
	                	 		    	} catch (\Exception $e) {
	                	 		    		echo $service[$i].", ";
	                	 		    	}
	                	 		    	
	                	 		    }

	                	 		    	
	                	 		} catch (\Exception $e) {
	                	 			 
	                	 		}

	                	 		 ?>

	                	  		</td>
	                	  	<td>

	                	  		<?php 
	                	 		try {
	                	 		
	                	 		    $service_string=str_replace("[", "", $follow_up->community_services_accessed);
	                	 		    $service_string=str_replace("]", "", $service_string);
	                	 		    $service_string=str_replace("\"", "", $service_string);

	                	 		    $service=explode(",", $service_string);

	                	 		    for ($i=0; $i <count($service) ; $i++) { 
	                	 		    	# code...
	                	 		    	try {
	                	 		    		$serv=App\FsgService::find($service[$i]);
	                	 		    		echo $serv->name.", ";
	                	 		    	} catch (\Exception $e) {
	                	 		    		echo $service[$i].", ";
	                	 		    	}
	                	 		    	
	                	 		    }

	                	 		    	
	                	 		} catch (\Exception $e) {
	                	 			 
	                	 		}

	                	 		 ?>


	                	  		</td>
	                	  	<td>

	                	  		<?php 
	                	 		try {
	                	 		
	                	 		    $service_string=str_replace("[", "", $follow_up->family_planning_methods);
	                	 		    $service_string=str_replace("]", "", $service_string);
	                	 		    $service_string=str_replace("\"", "", $service_string);

	                	 		    $service=explode(",", $service_string);

	                	 		    for ($i=0; $i <count($service) ; $i++) { 
	                	 		    	# code...
	                	 		    	try {
	                	 		    		$serv=App\FsgService::find($service[$i]);
	                	 		    		echo $serv->name.", ";
	                	 		    	} catch (\Exception $e) {
	                	 		    		echo $service[$i].", ";
	                	 		    	}
	                	 		    	
	                	 		    }

	                	 		    	
	                	 		} catch (\Exception $e) {
	                	 			 
	                	 		}

	                	 		 ?>

	                	  		</td>
	                	  	<td>{{$follow_up->coments }}</td>
	                	  </tr>
	                	@endforeach
	                	 
	                     
	                </tbody>
	            </table>
	        </div>
            </div>
        </div> 
@endsection
