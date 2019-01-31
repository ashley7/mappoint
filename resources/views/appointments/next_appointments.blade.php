@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Clients next Appointment</h2>
                </div>
            </div>
             <div class="table-responsive">
             	<table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                	<tr>
	                        <th>#</th>
	                        <th>Name</th>
	                        <th>Number</th>   
	                        <th>Phone Number</th>
	                        <th>Previous date</th>
	                        <th>Next date</th>
	                        <th>FSG</th>
	                    </tr>	                    
	                </thead>
	                <tbody>
	                	@foreach($clients as $client_value)
	                	
	                		<?php
	                		$read_last_entry = App\HivCardRrecords::all()->where('hiv_care_art_card_id',$client_value->id)->last();
				            if (json_encode($read_last_entry)!="null") {
				                $prev_date = $read_last_entry->date_checked_in;
				                $new_date = $read_last_entry->follow_up_date;
								?>
								<tr>
				                  <td>{{$client_value->id}}</td>
				                  <td>{{$client_value->surName." ".$client_value->firstName}}</td>
				                  <td>{{$client_value->PatientNumber}}</td>
				                  <td>{{$client_value->phone_number}}</td>
				                  <td>{{$prev_date}}</td>
				                  <td>{{$new_date}}</td>
				                  <td>
				                  	<?php
					                  	try {
					                  		echo $client_value->falimlysuportgroupregister->familysuportgroup->name;
					                  	} catch (\Exception $e) {}
				                  	 ?>
				                 
				                  </td>
				                  </tr>
				                <?php
				            } 
                		 ?>         	 	 
	                   		            
	                	@endforeach	                	 
					</tbody>
	            </table>
	         </div>
        </div>
	</div> 
@endsection