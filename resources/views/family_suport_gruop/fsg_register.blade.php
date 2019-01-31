@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Family Support group register</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('fsg_register.create')}}">Add Family support group member</a>
                 </div>
            </div>
             <div class="table-responsive">
             	<table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Name</th>
	                        <th>Client Serial Number</th>       
	                        <th>Sex</th>  
	                        <th>Date of Enrolement</th>	    
	                        <th>Age at enrolment</th>
	                        <th>Client Phone</th>
	                        <th>Client Address</th>
	                        <th>Family Support Group</th>    
	                        <th>FSG service</th>              
	                                         
	                        <th>Relationship to index client</th>
	                        <th>First-time attendance or re-enrolment?</th>
	                        <th>HIV status at Enrolment</th>
	                        <th>Disclousure Status</th>
	                        <th>Entry Point</th>
	                        <th>Family planning method</th>
	                        <th>Maternal Care</th>
	                        <th>HIV Care Pre-ART #</th>
	                        <th>HIV Care ART #</th>
	                        <th>ART Regimen at enrolment (if applicable)</th>	                        
	                        <th>Receiving OI Prophylaxis?</th>
	                        <th>Most recent CD4 Count and Date</th>
	                        <th>Most recent WHO Clinical Stage</th>
	                        <th>Tested by DNA PCR?</th>
	                        <th>EXP</th>
	                        <th>Date of DNA PCR Test</th>
	                        <th>Result of DNA PCR Test</th>
	                        <th>Prophylaxis Ttreatment</th>
	                        <th>Medical Services Accessed (list all the apply)</th>
	                        <th>Community / Non-health Services Accessed (list all that apply)</th>
	                        <th>HIV Status of Children (if client is adult)</th>
	                        <th>Action</th>
	                    </tr>
	                </thead>


	                <tbody>
	                	@foreach($read_members as $members)
	                	 <tr>
	                	 	<td>{{$members->id}}</td>
	                	 	<td>
	                	 		<a title="FOLLOW-UP SECTION" href="{{route('fsg_follow_up.show',$members->id)}}">
	                	 		{{$members->hivcareartcard->surName}} {{$members->hivcareartcard->firstName}}</a>
	                	 	</td>
	                	 	<td>{{$members->hivcareartcard->PatientNumber}}</td>
	                	 	<td>{{$members->hivcareartcard->sex}}</td>
	                	 	<td>{{$members->date_of_enrolement}}</td>
	                	 	<td>{{$members->hivcareartcard->age}}</td>
	                	 	<td>{{$members->hivcareartcard->phone_number}}</td>
	                	 	<td>
	                	 		<?php 
	                	 		try {

	                	 			?>

	                	 			{{$members->hivcareartcard->village->name}}  [{{$members->hivcareartcard->village->parish->name}}->{{$members->hivcareartcard->village->parish->sub_county->name}}->{{$members->hivcareartcard->village->parish->sub_county->district->name}}]

	                	 			<?php
	                	 			
	                	 		} catch (\Exception $e) {
	                	 			
	                	 		}

	                	 		 ?>
	                	 		
	                	 	</td>
	                	 	<td>{{$members->familysuportgroup->name}}</td>
	                	 	<td></td>
	                	 	
	                	 	<td>{{$members->relationship_to_index_client}}</td>
	                	 	<td>{{$members->first_time_or_reEnrollemt}}</td>
	                	 	<td>{{$members->hiv_status_at_enrolment}}</td>
	                	 	<td>{{$members->disclousure_status}}</td>
	                	 	<td>
	                	 		<?php 
	                	 		try {
	                	 			echo App\CareEntryPoint::find($members->entry_point)->name.", ";
	                	 		} catch (\Exception $e) {
	                	 			echo $members->entry_point;
	                	 		}
	                	 		 
	                	 		?>
	                	 	</td>
	                	 	<td>
	                	 		<?php 

	                	 		try {
	                	 			$service_string=str_replace("[", "", $members->family_planning_method);
	                	 		    $service_string=str_replace("]", "", $service_string);
	                	 		    $service_string=str_replace("\"", "", $service_string);
	                	 		    echo $service_string;
	                	 		} catch (\Exception $e) {
	                	 			
	                	 		}

	                	 		   

	                	 		 ?>	
	                	 	 </td>
	                	 	<td>{{$members->maternal_care}}</td>
	                	 	<td>{{$members->prior_art}}</td>
	                	 	<td>{{$members->art}}</td>
	                	 	<td>{{$members->art_regimen_at_enrolment}}</td>
	                	 	<td>{{$members->Receiving_OI_Prophylaxis}}</td>
	                	 	<td>{{$members->Most_recent_CD4_Count}} | {{$members->Most_recent_CD4_Count_date}}</td>
	                	 	<td>{{$members->Most_recent_WHO_Clinical_Stage}}</td>
	                	 	<td>{{$members->Tested_by_DNA_PCR}}</td>
	                	 	<td>{{$members->exp}}</td>
	                	 	<td>{{$members->Date_of_DNA_PCR_Test}}</td>
	                	 	<td>{{$members->Result_of_DNA_PCR_Test}}</td>

	                	 	<td>{{$members->prophylaxis_treatment}}</td>
	                	 	<td>
	                	 		<?php 
	                	 		try {
	                	 		
	                	 		    $service_string=str_replace("[", "", $members->fsg_service_id_medical);
	                	 		    $service_string=str_replace("]", "", $service_string);
	                	 		    $service_string=str_replace("\"", "", $service_string);

	                	 		    $service=explode(",", $service_string);

	                	 		    for ($i=0; $i <count($service) ; $i++) { 
	                	 		    	# code...
	                	 		    	$serv=App\FsgService::find($service[$i]);
	                	 		    	echo $serv->name.", ";
	                	 		    }


	                	 		} catch (\Exception $e) {
	                	 			
	                	 		}

	                	 		 ?>
	                	 		 
	                	 	</td>
	                	 	<td>
	                	 	 
	                	 		<?php 
	                	 		try {
	                	 		
	                	 		    $service_string=str_replace("[", "", $members->fsg_service_id_community);
	                	 		    $service_string=str_replace("]", "", $service_string);
	                	 		    $service_string=str_replace("\"", "", $service_string);

	                	 		    $service=explode(",", $service_string);

	                	 		    for ($i=0; $i <count($service) ; $i++) { 
	                	 		    	# code...
	                	 		    	$serv=App\FsgService::find($service[$i]);
	                	 		    	echo $serv->name.", ";
	                	 		    }

	                	 		    	
	                	 		} catch (\Exception $e) {
	                	 			
	                	 		}

	                	 		 ?>
	                	 	</td>
	                	 	 
	                	 	<td>
	                	 		<ol>
	                	 			@foreach($members->childrenHivstatus as $childrenHivstatus)
	                	 			 <li>{{$childrenHivstatus->sName}} {{$childrenHivstatus->fName}} {{$childrenHivstatus->date_tested}} Results: {{$childrenHivstatus->test_results}}</li>
	                	 			@endforeach
	                	 		</ol>
	                	 	</td>
	                	 	<td>
	                	 		{{ Form::open(array('route' => array('fsg_register.destroy',$members->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}
									<a title="Edit" class="btn btn-info waves-effect" href="{{route('fsg_register.edit',$members->id)}}"> Edit</a>

									<a title="FOLLOW-UP SECTION" class="btn btn-success waves-effect" href="{{route('fsg_follow_up.show',$members->id)}}">FOLLOW-UP SECTION</a>   

                                    <!-- <button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i></button> -->
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
