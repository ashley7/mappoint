@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">HIV Care/ART Card</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('hiv_care_art_card.edit',$read_HivCareArtCard->id)}}">Patient form</a>
                 </div>
            </div>

            <div class="row">
                  <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                        <table class="table table-hover">
                             <!--  <thead>
                                    <th>Item</th>
                                    <th>Data</th>
                              </thead> -->
                              <tbody>
                                    <tr><td>Unique Number</td><td><strong>{{$read_HivCareArtCard->PatientNumber}}</strong></td></tr>
                                    <tr><td>Sur Name</td><td><strong>{{$read_HivCareArtCard->surName}}</strong></td></tr>
                                    <tr><td>First name</td><td><strong>{{$read_HivCareArtCard->firstName}}</strong></td></tr>
                                    <tr><td>Health unit</td><td><strong>{{$read_HivCareArtCard->health_unit}}</strong></td></tr>
                                    <tr><td>Gander</td><td><strong>{{$read_HivCareArtCard->sex}}</strong></td></tr>
                                    <tr><td>Date of birth</td><td><strong>{{$read_HivCareArtCard->date_of_birth}}</strong></td></tr>
                                    <tr><td>Age</td><td><strong>{{$read_HivCareArtCard->age}}</strong></td></tr>
                                    <tr><td>Merital Status</td><td><strong>{{$read_HivCareArtCard->merital_status}}</strong></td></tr>
                                    <tr><td>Address</td><td><strong>
                                          <?php 
                                          try {

                                                ?>
                                                {{$read_HivCareArtCard->village->name}}  [{{$read_HivCareArtCard->village->parish->name}}->{{$read_HivCareArtCard->village->parish->sub_county->name}}->{{$read_HivCareArtCard->village->parish->sub_county->district->name}}]


                                                <?php
                                                
                                          } catch (\Exception $e) {
                                                
                                          }
                                           ?>
                                           | {{$read_HivCareArtCard->address}}
                                          
                                    </strong></td></tr>
                                    <tr><td>Phone Number</td><td><strong>{{$read_HivCareArtCard->phone_number}}</strong></td></tr>
                                    <tr><td>Phone Owner</td><td><strong>{{$read_HivCareArtCard->phone_owner_name}}</strong></td></tr>
                                    <tr><td>PT clinic</td><td>
                                          <strong><?php try {
                                                echo $read_HivCareArtCard->ptclinic->name;
                                          } catch (\Exception $e) {
                                                
                                          } ?></strong>
                                    </td></tr>
                                    <tr><td>Care Entry Point</td><td><strong><?php try {
                                                echo $read_HivCareArtCard->careentrypoint->name;
                                          } catch (\Exception $e) {
                                                
                                          } ?>
                                           
                                           ({{$read_HivCareArtCard->care_entry_point_specify }})
                                     </strong></td></tr>

                                     <tr><td>District clinitian</td><td><strong>
                                          <?php try {
                                                echo $read_HivCareArtCard->districtclinitian->name;
                                          } catch (\Exception $e) {
                                                
                                          } ?></strong>
                                    </td></tr>

                                    <tr><td>Treatmemnt Suporter</td><td><strong>{{$read_HivCareArtCard->treatmemnt_suporter}}</strong></td></tr>
                                    <tr><td>Treatment Address</td><td><strong>
                                          <?php                                            
                                            try {
                                                $village=App\Village::find($read_HivCareArtCard->treatment_address);
                                                echo $read_HivCareArtCard->village->name." ".$read_HivCareArtCard->village->parish->name."->".$read_HivCareArtCard->village->parish->sub_county->name."->".$read_HivCareArtCard->village->parish->sub_county->district->name;
                                            } catch (\Exception $e) {
                                                  
                                            }


                                           ?>
                                    </strong></td></tr>
                                    <tr><td>Treatment Telephone</td><td><strong>{{$read_HivCareArtCard->treatment_telephone}}</strong></td></tr>
                                    <tr><td>Home based care provider</td><td><strong>{{$read_HivCareArtCard->home_based_care_provider}}</strong></td></tr>

                                    <tr><td>Is the person Pregnant?</td><td><strong>{{$read_HivCareArtCard->preg}}</strong></td></tr>
                                    <tr><td>Is the person Lactating?</td><td><strong>{{$read_HivCareArtCard->lact}}</strong></td></tr>


                              </tbody>
                        </table>

                  </div>

                  <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                        <table class="table table-hover">
                              <!-- <thead>
                                    <th>Item</th>
                                    <th>Data</th>
                              </thead> -->
                              <tbody>
                                    <tr><td>Drug Allagies</td><td><strong>{{$read_HivCareArtCard->drug_allagies}}</strong></td></tr>
                                    <tr><td>Drug Relevant Medical Conditions</td><td><strong>{{$read_HivCareArtCard->relevant_medical_conditions}}</strong></td></tr>
                                    <tr><td>Date comfirmed HIV</td><td><strong>{{$read_HivCareArtCard->date_comfirmed_hiv}}</strong></td></tr>
                                    <tr><td>Place of HIV confirmation</td><td><strong>{{$read_HivCareArtCard->place_of_hive_confirmation}}</strong></td></tr>
                                    <tr><td>Test type</td><td><strong>{{$read_HivCareArtCard->test_type}}</strong></td></tr>
                                    <tr><td>Test Location</td><td><strong>{{$read_HivCareArtCard->test_location}}</strong></td></tr>
                                    <tr><td>Date enrolled in HIV</td><td><strong>{{$read_HivCareArtCard->date_enrolled_in_HIV}}</strong></td></tr>
                                    <tr><td>COHORT</td><td><strong>{{$read_HivCareArtCard->cohort}}</strong></td></tr>
                                    <tr><td>Date Medically Legible</td><td><strong>{{$read_HivCareArtCard->date_medically_legible}}</strong></td></tr>
                                    <tr><td>Clinical Stage</td><td><strong>{{$read_HivCareArtCard->clinical_stage}}</strong></td></tr>
                                    <tr><td>Reason why Elligible</td><td><strong>{{$read_HivCareArtCard->reason_why_elligible}}</strong></td></tr>
                                    <tr><td>Date Madically Eligible Date ART</td><td><strong>{{$read_HivCareArtCard->date_madically_eligible_date_ART}}</strong></td></tr>
                                    <tr><td>Date Transfered in</td><td><strong>{{$read_HivCareArtCard->date_transfered_in}}</strong></td></tr>
                                    <tr><td>Transfred in From</td><td><strong>{{$read_HivCareArtCard->transfred_in_from}}</strong></td></tr>
                                    <tr><td>Date ART Started</td><td><strong>{{$read_HivCareArtCard->date_art_started}}</strong></td></tr>
                                    <tr><td>Initial Regimen</td><td><strong>{{$read_HivCareArtCard->initial_regimen}}</strong></td></tr>
                                    <tr><td>Weight at ART start</td><td><strong>{{$read_HivCareArtCard->weight_at_ART_start}}</strong></td></tr>
                                    <tr><td>Function at ART start</td><td><strong>{{$read_HivCareArtCard->function_at_ART_start}}</strong></td></tr>
                                    <tr><td>Date Transfred Out</td><td><strong>{{$read_HivCareArtCard->date_transfred_out}}</strong></td></tr>
                                    <tr><td>Place Tranfred to</td><td><strong>{{$read_HivCareArtCard->place_tranfred_to}}</strong></td></tr>                                    
                                    <tr><td>Date died</td><td><strong>{{$read_HivCareArtCard->date_died}}</strong></td></tr>

                              </tbody>
                        </table>

                  </div>
            </div>


            <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
                    <h2>Exposed Infant Follow-up</h2>
                    <table class="table">
                        <thead>
                            <th>Exposed infant (#Name)</th> <th>Date of Birth</th> <th>Infant feeding status</th> <th>CTP started by 2 months</th> <th>Date of 1st PCR/results</th><th>Final status</th> <th>If confirmed +ve (Unique ID)</th>
                        </thead>

                        <tbody>
                            @foreach($read_HivCareArtCard->exposedinfantfollowup as $exposedinfantfollowup)
                                <tr>
                                    <td>{{$exposedinfantfollowup->name}}</td><td>{{$exposedinfantfollowup->dob}}</td><td>{{$exposedinfantfollowup->feeding_status}}</td><td>{{$exposedinfantfollowup->CTP}}</td><td>{{$exposedinfantfollowup->date_of_first_PCR}}</td><td>{{$exposedinfantfollowup->final_status}}</td><td>{{$exposedinfantfollowup->unique_id}}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>


 

        

            <div class="row">
            	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
            		<h2>Family members and Partners</h2>
                    <!-- <table class="table" id="family_member"> -->
            		<table class="table">
            			<thead>
            				<th>#</th><th>Name</th><th>Age</th><th>HIV status</th><th>HIV Care</th> <th>Number</th><th>Action</th>
            			</thead>
            			<tbody>
            				@foreach($read_HivCareArtCard->hivcareartcartfamilymember as $family_member)
            				<tr>
                                          <td>{{$family_member->id}}</td>
            					<td>{{$family_member->surName}} {{$family_member->firstName}}</td>
            					<td>{{$family_member->age}}</td>
            					<td>{{$family_member->HIV_status}}</td>
            					<td>
            						@if($family_member->Hive_Care==1)
            						  Yes
            						  @elseif($family_member->Hive_Care==2)
            						  No
            						 @endif
            					</td>

            					<td>{{$family_member->family_members_number}}</td>
            					<td>            						
            						{{ Form::open(array('route' => array('art_familymember.destroy',$family_member->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}                                     
                  				 	  	<button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i> </button>
                			                 	{{ Form::close()}} 
            					</td>
            				</tr>

            				@endforeach		
            			</tbody>
            		</table>
             		 
            	</div>
            	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
            		<h2>ART treatment interruptions</h2>
                    <!-- <table class="table" id="interaptions"> -->
            		<table class="table">
            			<thead>
            				<th>#</th><th>Circle</th><th>Date</th><th>Reason</th><th>Restart date</th><th>Action</th>
            			</thead>

            			<tbody>
            				@foreach($read_HivCareArtCard->arttreatmentinteraption as $interaptions)
            					<tr>
                                    <td>{{$interaptions->id}}</td>
            						<td>
            							{{$interaptions->circle}}
            						</td>

            						<td>{{$interaptions->date_accured}}</td>
            						<td>
            							 
            							   <span>{{$interaptions->reason}}</span>
	       							  
            						</td>
            						<td id="data{{$interaptions->id}}"  contenteditable="true">{{$interaptions->date_restart}}</td>

            						@push('scripts')
            						 <script type="text/javascript">
                                                      // jQuery('#data{{$interaptions->id}}').datepicker();

            						 	 $(document).ready(function() {
          
            
										         $("td[contenteditable=true]").blur(function(){
										            $.ajax({
										                type:"PUT",
										                url: "{{ route('art_treatmentinteraption.update',$interaptions->id) }}",
										                data: {
                                      date_recieved: $(this).text(),
 										                  _token: "{{Session::token()}}"},
										                success: function (result) {
										                    // alert(result);                     
										                }
										              })
										            })            
										       })
            						 </script>
            						@endpush
            						<td>
            							{{ Form::open(array('route' => array('art_treatmentinteraption.destroy',$interaptions->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}                                     
                  				 	  	<button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i>  </button>
                			     		{{ Form::close()}} 
            							
            						</td>
            					</tr>
            				@endforeach
            			</tbody>
            		</table>
             	</div>          	 
            </div>

            <div class="row">
            	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
            		<h2>Regimen</h2>
                    <!-- <table class="table" id="regimen"> -->
            		<table class="table">
            			<thead>
            				<th>#</th><th>Date</th> <th>Regimen</th> <th>Reason</th> <th>Action</th>
            			</thead>
            			<tbody>
            				@foreach($read_HivCareArtCard->artcardregimen as $regimen)
            				  <tr>
            				  	<td>{{$regimen->id}}</td>
                                          <td>{{$regimen->date_recorded}}</td> 
                                          <td>{{$regimen->regimen}}</td> 
                                          <td>
                                                @if($regimen->reason==1)
                                                      <span>Toxicity/side effects</span>
                                                @elseif($regimen->reason==2)
                                                      <span>Pregnancy</span>
                                                @elseif($regimen->reason==3)
                                                      <span>Treatment failure</span>
                                                @elseif($regimen->reason==4)
                                                      <span>Poor adherence</span>
                                                @elseif($regimen->reason==5)
                                                      <span>Illness</span>
                                                @elseif($regimen->reason==6)
                                                      <span>Hospitalization</span>
                                                @elseif($regimen->reason==7)
                                                      <span>Drugs out of stock</span>
                                                @elseif($regimen->reason==8)
                                                      <span>Patient lack finances</span>
                                                @elseif($regimen->reason==9)
                                                      <span>Other patient decision</span>
                                                @elseif($regimen->reason==10)
                                                      <span>Planned Rx interruption</span>
                                                @else
                                                 <span>{{$regimen->reason}}</span>
                                                @endif

                                          </td>

                                          <td>
            				  		{{ Form::open(array('route' => array('art_regimen.destroy',$regimen->id), 'method' => 'delete','onsubmit' => 'return confirm("You are about to delete a Regimen. This will remove all the data corresponding to him/her, Do you want to proceed?"); return false;')) }}                                     
                  				 	   <button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i></button>
                			     	{{ Form::close()}} 

            				  	</td>
            				  </tr>
            				@endforeach
            			</tbody>
            		</table>
            	</div>
            	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
            		<h2>Prior ART</h2>
                    <!-- <table class="table" id="datatable"> -->
            		<table class="table">
            			<thead>
            				<th>#</th><th>Prior ART</th> <th>Date</th> <th>Location</th> <th>ARVs</th><th>Actions</th>
            			</thead>
            			<tbody>
            				@foreach($read_HivCareArtCard->priorart as $art_prior)
            				  <tr>
                        <td>{{$art_prior->id}}</td>
            				  	<td>{{$art_prior->name}}</td>
                        <td>{{$art_prior->date}}</td>
                        <td>{{$art_prior->location}}</td>
                        <td>{{$art_prior->ARVs}}</td>
            				  	<td>
            				  		{{ Form::open(array('route' => array('art_prior.destroy',$art_prior->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}                                     
                  				 	   <button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i>  </button>
                			     	           {{ Form::close()}}
            				  	</td>
            				  </tr>
            				@endforeach
            			</tbody>
            		</table>
            	</div>
            </div>

            <br>
            <div class="row">
                    <h3><u>HIV Care/ART Card—Encounter Page</u></h3>
                    <div class="table-responsive">
                          <table class="table" id="counter_page">
                              <thead>
                                    <th>#</th> 
                                    <th>Date checked in</th>
                                    <th>Follow up date</th>
                                    <th>Duration since start regimen</th>
                                    <th>Wt</th>
                                    <th>Hieght</th>
                                    <th>MUAC/Oedema</th>
                                    <th>If pregnant EDD/eM</th>
                                    <th>FP/no FP Method</th>
                                    <th>Age (In months if < 2 year )</th>
                                    <th>Function work</th>                                    
                                    <th>TB status</th>
                                    <th>If TB Rx Start/Stop date</th>
                                    <th>District TB Reg.</th>
                                    <th>Potential side effects</th>
                                    <th>Other problems</th>
                                    <th>Function status</th>
                                    <th>WHO clinic stage</th>                                 
                                    <th>CPT/Dapsone Adhere</th>
                                    <th>CPT/Dapsone Adhere of pills dispensed</th>
                                    <th>CPT/Dapsone Adhere of days</th>
                                    <th>INH of pills</th>
                                    <th>INH of Days</th>
                                    <th>Other Meds dispensed</th>
                                    <th>ARV adhere</th>
                                    <th>ARV reason for poor/fair Adherence</th>
                                    <th>ARV regimen</th>
                                    <th>ARV Regimen of pills dispensed</th>
                                    <th>ARV Regimen of days dispensed</th>
                                    <th>CD4 count</th>
                                    <th>Link Provider</th>
                                    <th>Name of attending clinician</th>
                                    <td>Action</td>
                              </thead>

                              <tbody>
                                    @foreach($read_HivCareArtCard->hivcardrrecords as $hiv_card_record)
                                     <tr>
                                           <td>{{$hiv_card_record->id}}</td>
                                           <td>{{$hiv_card_record->date_checked_in}}</td>
                                           <td>{{$hiv_card_record->follow_up_date}}</td>
                                           <td>{{$hiv_card_record->duration_since_start_regimen}}</td>
                                           <td>{{$hiv_card_record->Wt}}</td>
                                           <td>{{$hiv_card_record->method_hieght}}</td>
                                           <td>{{$hiv_card_record->muac_oedema}}</td>
                                           <td>{{$hiv_card_record->edd_emtct}}</td>
                                           <td>{{$hiv_card_record->fp_nofp}}</td>
                                           <td>{{$hiv_card_record->age}}</td>
                                           <td>{{$hiv_card_record->function_work}}</td>
                                           <td>{{$hiv_card_record->TB_status}}</td>
                                           <td>{{$hiv_card_record->TB_rx}}</td>
                                           <td>
                                            <?php 
                                            try {
                                                echo App\District::find($hiv_card_record->district_tb)->name;
                                            } catch (\Exception $e) {
                                                
                                            }
                                             ?>
                                            </td>
                                           <td>
                                            <?php 

                                            try {
                                                $service_string=str_replace("[", "", $hiv_card_record->potential_side_effects);
                                                  $service_string=str_replace("]", "", $service_string);
                                                  $service_string=str_replace("\"", "", $service_string);
                                                  $service_string=str_replace("\\", "", $service_string);
                                                  $service_string=str_replace("/", "", $service_string);
                                                  echo $service_string;
                                              } catch (\Exception $e) {
                                                
                                              }

                                             ?> 

                                            </td>
                                           <td>
                                            <?php
                                             try {
                                                $service_string=str_replace("[", "", $hiv_card_record->other_problems);
                                                  $service_string=str_replace("]", "", $service_string);
                                                  $service_string=str_replace("\"", "", $service_string);
                                                  $service_string=str_replace("\\", "", $service_string);
                                                  $service_string=str_replace("/", "", $service_string);
                                                  echo $service_string;
                                              } catch (\Exception $e) {
                                                
                                              }

                                             ?>  

                                      

                                            </td>
                                           <td>{{$hiv_card_record->functional_status}}</td>
                                           <td>{{$hiv_card_record->WHO_clinic_stage}}</td>                                        
                                           <td>{{$hiv_card_record->Cotrimoxole_Adhere}}</td>
                                           <td>{{$hiv_card_record->Cotrimoxole_Dose}}</td>
                                           <td>{{$hiv_card_record->Cotrimoxole_days}}</td>
                                           <td>{{$hiv_card_record->INH_of_pills}}</td>
                                           <td>{{$hiv_card_record->INH_of_days}}</td>
                                           <td>{{$hiv_card_record->Other_methods_dispensed}}</td>
                                           <td>{{$hiv_card_record->ARV_adhere}}</td>
                                           <td>
                                             <?php
                                             try {
                                                $service_string=str_replace("[", "", $hiv_card_record->reason_for_pooradherence);
                                                  $service_string=str_replace("]", "", $service_string);
                                                  $service_string=str_replace("\"", "", $service_string);
                                                  $service_string=str_replace("\\", "", $service_string);
                                                  $service_string=str_replace("/", "", $service_string);
                                                  echo $service_string;
                                              } catch (\Exception $e) {
                                                
                                              }

                                             ?> 

                                             </td>
                                           <td>{{$hiv_card_record->ARV_regimen}}</td>
                                           <td>{{$hiv_card_record->ARV_regimen_of_pills}}</td>
                                           <td>{{$hiv_card_record->ARV_regimen_of_dispensed}}</td>
                                           <td>{{$hiv_card_record->CD4_count}}</td>
                                           <td>{{$hiv_card_record->link_provider}}</td>
                                           <td>{{$hiv_card_record->user->name}} {{$hiv_card_record->user->phone_number}}</td>
                                           <td>
                                                {{ Form::open(array('route' => array('hivecard_records.destroy',$hiv_card_record->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}                                     
                                                   <button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i>  </button>
                                               {{ Form::close()}}
                                                 
                                           </td>
                                     </tr>
                                    @endforeach                                    
                              </tbody>
                          </table>
                    </div>                  
            </div>
	</div>
</div> 
@endsection

@push('scripts')
	<script type="text/javascript">
	    $(document).ready(function() {
	        $('#datatable').DataTable();
	        $('#family_member').DataTable();
	        $('#regimen').DataTable();
              $('#interaptions').DataTable();
	        $('#counter_page').DataTable();
	    });
	</script>
@endpush