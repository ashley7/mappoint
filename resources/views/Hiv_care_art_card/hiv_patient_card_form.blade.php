@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">HIV Care/ART Card</h2>
                </div>
                 <div class="pull-right">
                  <a class="btn btn-primary btn-rounded waves-effect waves-light" href="{{route('hiv_care_art_card.show',$read_HivCareArtCard->id)}}">Patient information</a>

                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('hiv_care_art_card.index')}}">View Patients</a>
                 </div>
            </div>

            

            <div class="row">
            	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
            		<div class="row">
            			<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Patient Number</label>
                                    <input type="text" id="patient_number" class="form-control" value="{{$read_HivCareArtCard->PatientNumber}}">
            				<label>Address <span class="alert-index alert-success">
                                          <?php try {
                                                echo $read_HivCareArtCard->village->name;       
                                          } catch (\Exception $e) {
                                                
                                          } ?>
                                          </span></label>
            				<select id="district_id" class="form-control select2">
                                          <option></option>
                                          @foreach($read_Village as $village)
            					 <option value="{{$village->id}}">{{$village->name}} [{{$village->parish->name}}->{{$village->parish->sub_county->name}}->{{$village->parish->sub_county->district->name}}]</option>
            					@endforeach
            				</select>

            				<label>Surname</label>
	        				<input type="text" id="sirname" value="{{$read_HivCareArtCard->surName}}" class="form-control">

	        				<label>Sex <span class="alert-index alert-success">{{$read_HivCareArtCard->sex}}</span></label>
	        				<select class="form-control select2" id="sex">
                                          <option></option>
	        					<option value="Male">Male</option>
	        					<option value="Female">Female</option>
	        				</select>

	        				<label>Marital status:  
                                          <span class="alert-index alert-success">{{$read_HivCareArtCard->merital_status}}</span></label>
                                          
	        				<select id="merital_status" class="form-control select2">
                                          <option></option>
                                          <option value="Child">Child</option>                                        
                                          <option value="Never Married">Never Married</option>
                                          <option value="Married">Married</option>                                      
                                          <option value="Single">Single</option>                                        
	        					<option value="Living Together">Living Together</option>			
                                          <option value="Divorced">Divorced</option>                                    
	        					<option value="Separated">Separated</option>
                                          <option value="Widowed">Widowed</option> 					
	        				</select>

	        				<label>Phone Number</label>
	        				<input type="text" id="phone_number" placeholder="+256787444081" value="{{$read_HivCareArtCard->phone_number}}" class="form-control">

                                    <label>Is the person Pregnant?</label>
                                    <select class="form-control select2" id="preg">
                                          <option></option>
                                          <option value="YES">Yes</option>
                                          <option value="NO">No</option>
                                    </select>

            			 
            			</div> 

            			<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
            				 <label>Health Unit</label>
            				 <input type="text" id="health_unit" value="{{$read_HivCareArtCard->health_unit}}" class="form-control">

            				 <label>First Name</label>
	        				 <input type="text" id="firstname" value="{{$read_HivCareArtCard->firstName}}" class="form-control">

	        				<label>Age</label>
	        				<input type="number" step="any" min="0" id="age"  value="{{$read_HivCareArtCard->age}}" class="form-control">

	        				<label>Address</label>
	        				<input type="text" id="address" value="{{$read_HivCareArtCard->address}}" class="form-control">

	        				<label>Phone Number Owner</label>
	        				<input type="text" id="phone_number_owner" value="{{$read_HivCareArtCard->phone_owner_name}}" class="form-control">

                                    <label>Is the person Lactating?</label>
                                    <select class="form-control select2" id="lact">
                                          <option></option>
                                          <option value="YES">Yes</option>
                                          <option value="NO">No</option>
                                    </select>
            			</div> 

            			<div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
            				<label>District clinician/team</label>
            				<select id="clinician_id" class="form-control select2">
                                          <option></option>
            					@foreach($read_district_clinician as $clinicial)
            					 <option value="{{$clinicial->id}}">{{$clinicial->name}}</option>
            					@endforeach
            				</select>

            				<label>PT Clinic / Health Unit</label>
                                    
            				<select id="pt_clinic_id" class="form-control select2">
                                          <option></option>
            					@foreach($read_PtClinic as $ptclinic)
            						<option value="{{$ptclinic->id}}">{{$ptclinic->name}}</option>
            					@endforeach
            				</select>

            				<label>Date of Birth</label>                              
                                    <input type="text" class="form-control date_of_birth" id="datepicker" value="{{$read_HivCareArtCard->date_of_birth}}" placeholder="mm/dd/yyyy">

                                    <label>Test type: <span class="alert-index alert-success">{{$read_HivCareArtCard->test_type}}</span></label>
                                    <select class="form-control select2" id="test_type">
                                          <option></option>
                                          <option value="Ab">Ab</option>
                                          <option value="PCR">PCR</option>
                                    </select>

                                    <label>Test location</label>
                                    <input type="text" id="test_location" value="{{$read_HivCareArtCard->test_location}}" class="form-control">

                                     <label>Care Entry Point</label>
                                    <select id="care_entry_point" class="form-control select2">
                                          <option></option>
                                          @foreach($read_CareEntryPoint as $careEntryPoint)
                                                <option value="{{$careEntryPoint->id}}">{{$careEntryPoint->name}}</option> 
                                          @endforeach
                                    </select>

                           

                                    
                          </div>           			
            		</div>

                        <div class="row">                             

                              <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                                    Or <label>Specify C . E . P</label>
                                    <input type="text" id="care_entry_point_specify" class="form-control">
                              </div>
                        
                              <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                                    <label>Treatment supporter</label>
                                    <input type="text" id="treatmemnt_suporter" class="form-control">

                              </div>

                              <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                                    <label>Treatment Address </label>
                                     
                                    <select id="treatment_address" class="form-control select2">
                                          <option></option>
                                          @foreach($read_Village as $village)
                                           <option value="{{$village->id}}">{{$village->name}} [{{$village->parish->name}}->{{$village->parish->sub_county->name}}->{{$village->parish->sub_county->district->name}}]</option>
                                          @endforeach
                                    </select>
                              </div>

                              <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                                    <label>Treatment Telephone</label>
                                    <input type="text" id="treatment_telephone" placeholder="+256787444081" class="form-control">
                              </div>

                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Home-based care provided by:</label>
                                    <input type="text" id="home_based_care_provider" class="form-control">
                              </div>
                        </div>

                        <br>

            <div class="row">
                  <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                        <div class="row">
                                    <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                                          <label>Drug Allergies</label>
                                          <input type="text" id="drug_allagies" value="{{$read_HivCareArtCard->drug_allagies}}" class="form-control">

                                          <label>Drug Relevant Medical Conditions</label>
                                          <input type="text" id="relevant_medical_conditions" value="{{$read_HivCareArtCard->relevant_medical_conditions}}" class="form-control">
                                    </div>

                                    
                                    <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                                          <label>Date Comfirmed HIV</label>
                                          <input type="text" id="date_comfirmed_hiv" value="{{$read_HivCareArtCard->date_comfirmed_hiv}}" class="form-control">
                                    </div>
                              </div>
                         <div class="row">
                              <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                                    <label>Place of HIV Confirmation</label>
                                    <input type="text" id="place_of_hiv_confirmation" value="{{$read_HivCareArtCard->place_of_hiv_confirmation}}" class="form-control">
                              </div>                     

                       
                              <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                                    <label>Clinical Stage</label>
                                    <input type="text" id="clinical_stage" value="{{$read_HivCareArtCard->clinical_stage}}" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Reason why Elligible</label>
                                    <input type="text" id="reason_why_elligible" value="{{$read_HivCareArtCard->reason_why_elligible}}" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">
                                    <label>Date Madically Eligible for ART</label>
                                    <input type="text" id="date_madically_eligible_date_ART" value="{{$read_HivCareArtCard->date_madically_eligible_date_ART}}" class="form-control">
                              </div>

                         </div>

                         <br><br>
                  </div> <!-- colom one -->
                  <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                        <div class="row">
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Date Enrolled in HIV</label>
                                    <input type="text" id="date_enrolled_in_HIV" value="{{$read_HivCareArtCard->date_enrolled_in_HIV}}" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>COHORT</label>
                                    <input type="text" id="cohort" value="{{$read_HivCareArtCard->cohort}}" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Date Medically Legible </label>
                                    <input type="text" id="date_medically_legible" value="{{$read_HivCareArtCard->date_medically_legible}}" class="form-control">
                              </div>
                         </div>

                         <div class="row">
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Date Transfered in</label>
                                    <input type="text" id="date_transfered_in" value="{{$read_HivCareArtCard->date_transfered_in}}" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Transfred in From</label>
                                    <input type="text" value="{{$read_HivCareArtCard->transfred_in_from}}" id="transfred_in_from" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Date ART Started</label>
                                    <input type="text" value="{{$read_HivCareArtCard->date_art_started}}" id="date_art_started" class="form-control">
                              </div>                            
                        </div>
                        
                  </div>  <!-- colom two -->
            </div>
      </div><!-- The left colom -->


            <br>                    	

            	<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
                        <section class="form-control">
                              <h2>Prior ART</h2>
                  		<div class="row">
                  			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
                  				<label>Prior ART</label>
      	        				<select id="prior_art" class="form-control select2">
      	        					<option></option>
      	        					<option value="Transfer in with records">Transfer in with records</option>       	
                                                <option value="PMTCT only">PMTCT only</option>
      	        					<option value="Earlier ARV, Not Transfer in">Earlier ARV, Not Transfer in</option>
      	        					<option value="Prior ART">Prior ART</option>
      	        					<option value="PEP">PEP</option>
      	        					<option value="HEP-B">HEP-B</option>
      	        					<option value="None">None</option>	        					
      	        				</select>
                  			</div>

                  			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
                  				<label>Prior ART Date</label>
      	        				<input type="text" id="prior_art_date" class="form-control prior_art_date" placeholder="mm/dd/yyyy">
                  			</div>

                  			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
                  				<label>Prior ART Location</label>
      	        				<input type="text" id="prior_art_location" class="form-control">
                  			</div>

                                    <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                                          <label>ARVs</label>
                                          <input type="text" id="prior_art_arvs" class="form-control">
                                    </div>
                                    <div class="col-sm-12 col-md-1 col-lg-1 col-xs-12">
                                          <label></label><br>
                                          <button id="save_prior_art" class="btn btn-success waves-effect"><span>Save Prior ART</span> </button>
                                    </div> 
                              </div>

                              
                     </section>       			
            		 
                		

            		 
                        <br>
            					 
            	</div> <!-- The right colom -->
            </div> <!-- the row -->

            <div class="row"> <!-- the second row -->
            	<div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                      <section class="form-control">
            		<legend> <u>Family members and Partners</u></legend>

            		<div class="row">
            			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
							<label>Surname</label>
            				<input type="text" id="family_sirname" class="form-control">
            			</div>

            			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
							<label>Firstname</label>
            				<input type="text" id="family_firstname" class="form-control">
            			</div>

            			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
							<label>Age</label>
            				<input type="number" step="any" min="0" id="family_age" class="form-control">
            			</div>

            			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
							<label>HIV U/N/P</label>
            				<input type="text" id="Hive_Care" class="form-control">
            			</div>
            		</div>

            		<div class="row">
            			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
            				<label>HIV Care</label>
            				<select id="HIV_status" class="form-control select2">
                                          <option></option>
            					<option value="1">Yes</option>
            					<option value="2">No</option>
            				</select>
            			</div>

            			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
							<label>Unique Number</label>
            				<input type="text" id="family_unique_number" class="form-control">
            			</div>

            			<div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
            				<label>.</label>
            				<button id="save_family_member" class="btn btn-success waves-effect">  <span>Save family member</span> </button>
            			</div>

            		</div>
                  </section>

            		
            	</div> <!-- the first row done -->

            	<div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                        <section class="form-control">
            		<legend> <u>ART Treatment Interruptions | STOP or Missed drug Pick-up</u></legend>
                        <div class="row">
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Circle</label>
                                    <select class="form-control select2" id="circle">
                                          <option></option>
                                          <option value="Stop">Stop</option>                                          
                                          <option value="Lost">Lost</option>                                          
                                          <option value="Missed Drug Pick-up">Missed Drug Pick-up</option>
                                    </select>
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Date recorded</label>
                                    <input type="text" id="circle_date_recorded" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Reason</label>
                                    <select class="form-control select2" id="circle_reason">
                                          <option></option>
                                          <option value="Toxicity/side effects">Toxicity/side effects</option>
                                          <option value="Pregnancy">Pregnancy</option>
                                          <option value="Treatment failure">Treatment failure</option>
                                          <option value="Poor adherence">Poor adherence</option>
                                          <option value="Illness">Illness</option>
                                          <option value="Hospitalization">Hospitalization</option>
                                          <option value="Drugs out of stock">Drugs out of stock</option>
                                          <option value="Patient lack finances">Patient lack finances</option>
                                          <option value="Other patient decision">Other patient decision</option>
                                          <option value="Planned Rx interruption">Planned Rx interruption</option>
                                          <option value="Other">Other</option>
                                    </select>                                     
                              </div>
                        </div>
                        <div class="row">
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Or specify</label>
                                    <input type="text" id="reason_specify" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <br>
                                    <button id="save_ART_treatment_iterruptions" class="btn btn-success waves-effect">Save</button>
                              </div>
                        </div>
                  </section>
            	</div>
            </div> <!-- the third row -->	          

         

                  <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                              <div class="row">
                                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                          <label>Initial Regimen</label>
                                          <input type="text" value="{{$read_HivCareArtCard->initial_regimen}}" id="initial_regimen" class="form-control">
                                    </div>
                                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                          <label>Weight at ART start </label>
                                          <input type="number" step="any" min="0" value="{{$read_HivCareArtCard->weight_at_ART_start}}" id="weight_at_ART_start" class="form-control">
                                    </div>
                                    <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                          <label>Function at ART start </label>
                                          <input type="text" value="{{$read_HivCareArtCard->function_at_ART_start}}" id="function_at_ART_start" class="form-control">
                                    </div>                                    
                              </div>
                              
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                          <div class="row">
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Date Transfred Out</label>
                                    <input type="text" value="{{$read_HivCareArtCard->date_transfred_out}}" id="date_transfred_out" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Place Tranfred to</label>
                                    <input type="text" value="{{$read_HivCareArtCard->place_tranfred_to}}" id="place_tranfred_to" class="form-control">
                              </div>   

                              <div class="col-sm-12 col-md-4 col-lg-4 col-xs-12">
                                    <label>Date Died</label>
                                    <input type="text" value="{{$read_HivCareArtCard->date_died}}" id="date_died" class="form-control">
                              </div>                            
                          </div>
                        </div>                                                
                  </div>
                  <br>

                  <section class="form-control">   
                        <div class="row">
                             
                              <div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
                                    <label>Date of Regimen</label>
                                    <input type="text" value="{{$read_HivCareArtCard->date_of_regimen}}" id="date_of_regimen" class="form-control">
                                     <br>
                                   
                              </div>
                              <div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
                                    <label>Regimen</label>
                                    <input type="text" id="regimen" class="form-control">
                              </div>
                              <div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
                                    <label>Reason</label>
                                     <select  id="regimen_reason" class="form-control select2">
                                          <option></option>
                                          <option value="1">Toxicity/ side effects</option>
                                          <option value="2">Pregnancy</option>
                                          <option value="3">Risk of pregnancy</option>
                                          <option value="4">Due to new TB</option>
                                          <option value="5">New drug available</option>
                                          <option value="6">Drug out of Stock</option>
                                          <option value="7">0ther reason (specify) Reasons for SWITCH to 2nd-Line Regimen only</option>
                                          <option value="8">Clinical treatment failure</option>
                                          <option value="9">Immunologic failure</option>
                                          <option value="10">Virologic failure</option>
                                    </select>
                                    
                              </div>  
                              <div class="col-sm-12 col-md-3 col-lg-3 col-xs-12">
                                    or Specify 
                                    <input type="text" id="regimen_reason_specify" class="form-control"><br>
                                    <button id="saveregimen" class="btn btn-success waves-effect">Save</button>
                              </div>   
                        </div> 
                  </section>             
            </div>
            <br><br>
            <section class="form-control">
                  <h2>Exposed Infant Follow-up</h2>
                  <div class="row">
                         <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                              <label>Exposed infant name</label>
                              <input type="text" id="infant_name" class="form-control">

                              <label>Date of birth</label>
                              <input type="text" id="infant_dob" class="form-control">

                              <label>Feeding Status</label>
                              <select class="form-control" id="feeding_status">
                                    <option></option>
                                    <option value="Exclussive Breast Feeding">Exclussive Breast Feeding</option>
                                    <option value="Replacement Feeding">Replacement Feeding</option>
                                    <option value="Mixed Feeding Or Complementary Feeding">Mixed Feeding Or Complementary Feeding</option>
                              </select>

                              <label>If confirmed +ve(Unique ID)</label>
                              <input type="text" id="unique_id" class="form-control">
                         </div>

                         <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                              <label>CTP started by 2 months</label>
                              <input type="text" id="ctp" class="form-control">

                              <label>Date of 1st PCR result</label>
                              <input type="text" id="first_pcr_date" class="form-control">

                              <label>Final status</label>
                              <input type="text" id="final_status" class="form-control">
                              <br>
                              <button id="infant_followup" class="btn btn-success waves-effect">Save</button>
                         </div>                        

                  </div>

            </section>
            <br><br>

            <section class="form-control">   
                  <h3><u>HIV Care/ART Card—Encounter Page</u></h3>

                  <table class="table">
                        <th>.</th><th>.</th><th>.</th>
                        <tr>
                              <td>
                                    <label>Date checked in</label>
                                    <input type="text" id="date_checked_in" class="form-control">

                                    <label>Next Appointment date</label>
                                    <input type="text" id="follow_up_date" class="form-control">

                                    <label>Duration in months since starting ART</label>
                                    <input type="number" step="any" min="0" id="duration_since_start_art" class="form-control">

                                    <label>Duration in months since starting regimen</label>
                                    <input type="number" step="any" min="0" id="duration_since_start_regimen" class="form-control">

                                    <label>Wt</label>
                                    <input type="number" step="any" min="0" id="Wt" class="form-control">

                                    <label>Height</label>
                                    <input type="number" step="any" min="0" id="method_hieght" class="form-control">

                                    <label>CPT/Dapsone Adhere</label>
                                    <input type="text" id="Cotrimoxole_Adhere" class="form-control">

                                    <label>CPT/Dapsone Adhere of pills dispensed</label>
                                    <input type="text" id="Cotrimoxole_Dose" class="form-control">

                                    <label>CPT/Dapsone Adhere of days</label>
                                    <input type="text" id="Cotrimoxole_days" class="form-control">

                                    <label>INH of pills Dispensed</label>
                                    <input type="text" id="INH_of_pills" class="form-control">

                                    <label>INH of days</label>
                                    <input type="text" id="INH_of_days" class="form-control">

                                    <label>Other methods dispensed</label>
                                    <input type="text" id="Other_methods_dispensed" class="form-control">
                                    <label>ARV adherence</label><br>
                                    <select class="form-control select2" id="ARV_adhere">
                                          <option></option>
                                          <option>Good</option>
                                          <option>Fair</option>
                                          <option>Poor</option>
                                    </select>

                                    <label>Reason for Poor/Fair ARV Adherence</label><br>
                                    <select class="form-control select2" multiple="multiple"  id="reason_for_pooradherence">
                                          <option></option>
                                          <option value="Toxicity/Side effects">Toxicity/Side effects</option>
                                          <option value="Share with others">Share with others</option>
                                          <option value="Forgot">Forgot</option>
                                          <option value="Felt better">Felt better</option>
                                          <option value="Too Ill">Too Ill</option>
                                          <option value="Stigma Disclosure or Privacy Issue">Stigma Disclosure or Privacy Issue</option>
                                          <option value="Drug stock out">Drug stock out</option>
                                          <option value="Patient Lost/Ran out of Pills">Patient Lost/Ran out of Pills</option>
                                          <option value="Delivery/Travel problems">Delivery/Travel problems</option>
                                          <option value="Inability to pay">Inability to pay</option>
                                          <option value="Alcohol">Alcohol</option>
                                          <option value="Depression">Depression</option>
                                          <option value="Pill Burden">Pill Burden</option>
                                          <option value="Lack of food">Lack of food</option>
                                    </select>
                                    <br> OR <label>Specify ARV Reason for poor/fair adherence</label>
                                    <input type="text" id="reason_for_pooradherence_spec" class="form-control">
                              </td>
                              <td>
                                    <label>MUAC/Oedema</label><br>
                                    <select class="form-control select2" id="muac_oedema">
                                          <option></option>
                                          <option value="MUAC|+">MUAC|+</option>
                                          <option value="MUAC|-">MUAC|-</option>
                                    </select>
                                    <br>

                                    <label>FP/no FP. if FP write method</label><br>
                                    <input type="text" id="fp_nofp" class="form-control">

                                    <label>Age in months if <= 2 years</label><br>
                                    <input type="text" id="age" class="form-control">

                                    <label>Function work</label>
                                    <input type="text" id="function_work" class="form-control">

                                    <label>WHO clinic stage</label>
                                    <input type="text" id="WHO_clinic_stage" class="form-control">


                                    <label>TB status</label><br>
                                    <select class="form-control select2" id="TB_status">
                                          <option></option>
                                          <option>No signs or Symptoms of TB</option>
                                          <option>Suspect</option>
                                          <option>Diagnosed with TB Disease</option>
                                          <option>Currently on TB Treatment</option>
                                    </select>
                                    <br>                                 
                                     
                                    <label>ARV regimen</label>
                                    <input type="text" id="ARV_regimen" class="form-control">

                                    <label>ARV regimen of pills</label>
                                    <input type="text" id="ARV_regimen_of_pills" class="form-control">

                                    <label>ARV regimen of days dispensed</label>
                                    <input type="text" id="ARV_regimen_of_dispensed" class="form-control">

                                    <label>CD4 count (if <15% write "-" else write "+") </label>
                                    <input type="text" id="CD4_count" class="form-control">

                                    <label>Hgb, RPR, CXR, TB, Sputums, Infant Ab/PCR, Others</label>
                                    <input type="text" id="infant_ab_pcr" class="form-control">
                              </td>
                              <td>
                                    <label>If pregnant EDD/eM TCT? write gestation in weeks and ANC#</label>
                                    <input type="text" id="edd_emtct" class="form-control">

                                    <label>If TB Rx, Start/Stop</label>
                                    <input type="text" id="TB_rx" class="form-control">

                                    <label>District TB Number</label>
                                    <input type="text" id="district_tb" class="form-control">
                                     <br>

                                    <label>Potential side effects or Other problems</label><br>
                                    
                                    <select class="form-control select2"  multiple="multiple" id="potential_side_effects">
                                          <option></option>
                                          <option value="Nausea">Nausea</option>
                                          <option value="Diarrhoea">Diarrhoea</option>
                                          <option value="Fatigue*">Fatigue*</option>
                                          <option value="FAT changes">FAT changes</option>
                                          <option value="BN Burning/numb/tingling">BN Burning/numb/tingling</option>
                                          <option value="CNS: Dizzy, anxiety, nightmare,depression">CNS: Dizzy, anxiety, nightmare,depression</option>
                                          <option value="Rash">Rash</option>
                                          <option value="Anaemia*">Anaemia*</option>
                                          <option value="Abdominal pain*">Abdominal pain*</option>
                                          <option value="Headeche">Headeche</option>
                                          <option value="Jaundice*">Jaundice*</option>
                                          <option value="Vomiting">Vomiting</option>
                                    </select><br>
                                    OR <label>Specify</label>
                                    <input type="text" id="potential_side_effects_spec" class="form-control">

                                    <label>New OI, Other problems (Include Nutritional problems)</label><br>
                                    <select class="form-control select2" multiple="multiple" id="other_problems">
                                          <optgroup label="Symptoms with * are suggestive of TB">
                                                <option value="Zoster">Zoster</option>
                                                <option value="Pneumonia">Pneumonia</option>
                                                <option value="Demantia / Enceph">Demantia / Enceph</option>
                                                <option value="Thrush-oral/Vaginal">Thrush-oral/Vaginal</option>
                                                <option value="COUGH*">COUGH *</option> 
                                                <option value="FEVER*">FEVER *</option>
                                                <option value="DB difficult in breathing">DB (Difficult in breathing)</option>
                                                <option value="Weight Loss*">Weight Loss *</option>
                                                <option value="UD (Urethral Discharge)">UD (Urethral Discharge)</option> 
                                                <option value="PID (Pelvic inflammatory Disease)">PID (Pelvic inflammatory Disease)</option>
                                                <option value="Ulcers">Ulcers</option>
                                                <option value="GUD (Gental Ulcer Disease)">GUD (Gental Ulcer Disease)</option>
                                                <option value="KS Kaposi Sarcoma)">KS (Kaposi Sarcoma)</option>
                                                <option value="CCM (Cryptococcal Maningitis)">CCM (Cryptococcal Maningitis)</option>
                                                <option value="IRIS Immune Reconstitution Inflammatory syndrome">IRIS (Immune Reconstitution Inflammatory syndrome)</option>
                                          </optgroup>
                                    </select>
                                    <br>
                                     Or<label>Specify</label>
                                    <input type="text" id="other_problems_spec" class="form-control">

                                    <label>Functional status(Work/Playing Amb Bed)</label>
                                    <input type="text" id="functional_status" class="form-control">

                                    <label>Refer or consult or link/provider (Including nutritional support and infant feeding. If hospitalised #No. of days)</label>
                                    <input type="text" id="link_provider" class="form-control">
                                    <br>

                                    <label>Recorded by </label>
                                    <select class="form-control select2" id="user_id">
                                          @foreach(App\User::all() as $users)
                                            <option  value="{{$users->id}}">{{$users->name}}</option>
                                          @endforeach
                                    </select>

                                    <br><br>

                                    <button id="save_HIVare_ARTCardEncounterPage" class="btn btn-success waves-effect">Save</button>

                              </td>
                        </tr>
                  </table>    
            </section>
      </div> 
@endsection

@push("scripts")

<script type="text/javascript">
       $(document).ready(function() {
            $("#save_HIVare_ARTCardEncounterPage").click(function(){

                   $("#save_HIVare_ARTCardEncounterPage").attr("disabled","disabled");
                   $("#save_HIVare_ARTCardEncounterPage").html("Saving, please wait ...");

                  var ps_effects = [];
                  $('#potential_side_effects :selected').each(function(i, selectedElement) {
                      ps_effects[i] = $(selectedElement).val();
                  }); 

                  var otherproblems = [];
                  $('#other_problems :selected').each(function(i, selectedElement) {
                     otherproblems[i] = $(selectedElement).val();
                  });

                  var reasonforpooradherence=[];
                  $('#reason_for_pooradherence :selected').each(function(i, selectedElement) {
                     reasonforpooradherence[i] = $(selectedElement).val();
                  });
           
            $.ajax({
                type: "POST",
                url: "{{ route('hivecard_records.store') }}",
                data: {
                    hiv_card_id:{{$read_HivCareArtCard->id}},
                    date_checked_in: $("#date_checked_in").val(),
                    follow_up_date: $("#follow_up_date").val(),
                    duration_since_start_regimen: $("#duration_since_start_regimen").val(),
                    duration_since_start_art: $("#duration_since_start_art").val(),
                    Wt: $("#Wt").val(),
                    method_hieght: $("#method_hieght").val(),
                    function_work: $("#function_work").val(),
                    WHO_clinic_stage: $("#WHO_clinic_stage").val(),
                    TB_status: $("#TB_status").val(),
                    potential_side_effects: ps_effects,
                    potential_side_effects_spec: $("#potential_side_effects_spec").val(),
                    other_problems: otherproblems,
                    other_problems_spec: $("#other_problems_spec").val(),
                    Cotrimoxole_Adhere: $("#Cotrimoxole_Adhere").val(),
                    Cotrimoxole_Dose: $("#Cotrimoxole_Dose").val(),
                    Cotrimoxole_days: $("#Cotrimoxole_days").val(),
                    INH_of_pills: $("#INH_of_pills").val(),
                    INH_of_days: $("#INH_of_days").val(),
                    Other_methods_dispensed: $("#Other_methods_dispensed").val(),
                    ARV_adhere: $("#ARV_adhere").val(),
                    ARV_regimen: $("#ARV_regimen").val(),
                    CD4_count: $("#CD4_count").val(),
                    link_provider: $("#link_provider").val(),       
                    reason_for_pooradherence: reasonforpooradherence,       
                    reason_for_pooradherence_spec: $("#reason_for_pooradherence_spec").val(),       
                    muac_oedema: $("#muac_oedema").val(),       
                    fp_nofp: $("#fp_nofp").val(),       
                    age: $("#age").val(),       
                    ARV_regimen_of_pills: $("#ARV_regimen_of_pills").val(),       
                    ARV_regimen_of_dispensed: $("#ARV_regimen_of_dispensed").val(),  
                    infant_ab_pcr: $("#infant_ab_pcr").val(),  
                    edd_emtct: $("#edd_emtct").val(),  
                    TB_rx: $("#TB_rx").val(),  
                    district_tb: $("#district_tb").val(),  
                    user_id: $("#user_id").val(),  
                    functional_status: $("#functional_status").val(),  
                     _token: "{{Session::token()}}"
               },

                success: function (result) {
                     alert(result);

                     $("#save_HIVare_ARTCardEncounterPage").removeAttr("disabled");
                     $("#save_HIVare_ARTCardEncounterPage").html("Save");


                     $("#link_provider").val(" ");
                     $("#CD4_count").val(" ");
                     $("#ARV_regimen").val(" ");
                     $("#ARV_adhere").val(" ");
                     $("#Other_methods_dispensed").val(" ");
                     $("#Cotrimoxole_Dose").val(" ");
                     $("#Cotrimoxole_Adhere").val(" ");
                     $("#other_problems").val(" ");
                     $("#potential_side_effects").val(" ");
                     $("#date_checked_in").val(" ");
                     $("#follow_up_date").val(" ");
                     $("#duration_since_start_regimen").val(" ");
                     $("#Wt").val(" ");
                     $("#method_hieght").val(" ");
                     $("#function_work").val(" ");
                     $("#WHO_clinic_stage").val(" ");
                     $("#TB_status").val(" ");                    
                     $("#reason_for_pooradherence").val(" ");                    
                     $("#reason_for_pooradherence_spec").val(" ");                    
                     $("#muac_oedema").val(" ");                 
                     $("#fp_nofp").val(" ");                 
                     $("#age").val(" ");                 
                     $("#ARV_regimen_of_pills").val(" ");                 
                     $("#ARV_regimen_of_dispensed").val(" ");               
                     $("#infant_ab_pcr").val(" ");               
                     $("#edd_emtct").val(" ");               
                     $("#TB_rx").val(" ");               
                     $("#district_tb").val(" ");               
                     $("#functional_status").val(" ");               
                 }
              })
            })            
       })        
  </script>

<script type="text/javascript">
      $(document).ready(function(){
            $("#infant_followup").click(function(){
                  $("#infant_followup").attr("disabled","disabled");
                  $("#infant_followup").html("Saving ...");
                  $.ajax({
                      type: "PUT",
                      url: "{{ route('exposedinfant_followup.update',$read_HivCareArtCard->id) }}",
                      data: {
                          infant_name: $("#infant_name").val(),
                          infant_dob: $("#infant_dob").val(),
                          feeding_status: $("#feeding_status").val(),
                          unique_id: $("#unique_id").val(),
                          ctp: $("#ctp").val(),
                          first_pcr_date: $("#first_pcr_date").val(),
                          final_status: $("#final_status").val(),
                           _token: "{{Session::token()}}"},
                      success: function (result) {
                          alert(result);
                          $("#infant_followup").removeAttr("disabled");
                          $("#infant_followup").html("Save");
                          $("#infant_name").val(" ");
                          $("#infant_dob").val(" ");
                          $("#feeding_status").val(" ");
                          $("#unique_id").val(" ");
                          $("#ctp").val(" ");
                          $("#first_pcr_date").val(" ");
                          $("#final_status").val(" ");
                       }
              })
            })
      })
</script>


<script type="text/javascript">
       $(document).ready(function() {
            $("#saveregimen").click(function(){
                  $("#saveregimen").attr("disabled","disabled");
                  $("#saveregimen").html("Saving ...");
              $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_of_regimen: $("#date_of_regimen").val(),
                    regimen: $("#regimen").val(),
                    regimen_reason: $("#regimen_reason").val(),
                    regimen_reason_specify: $("#regimen_reason_specify").val(),
                     _token: "{{Session::token()}}"},
                success: function (result) {
                    $("#saveregimen").removeAttr("disabled");
                    $("#saveregimen").html("Save");

                    $("#date_of_regimen").val(" ");
                    $("#regimen").val(" ");
                    $("#regimen_reason").val(" ");
                 }
              })
            })            
       })        
  </script>



<script type="text/javascript">
       $(document).ready(function() {
            // $("#test_type").blur(function(){
            $('#test_type').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    test_type: $("#test_type").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>



  

  <script type="text/javascript">
       $(document).ready(function() {
            $("#test_location").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    test_location: $("#test_location").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

    <script type="text/javascript">
       $(document).ready(function() {
            $("#patient_number").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    patient_number: $("#patient_number").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

  

    <script type="text/javascript">
       $(document).ready(function() {
            $("#relevant_medical_conditions").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    relevant_medical_conditions: $("#relevant_medical_conditions").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>



<script type="text/javascript">
       $(document).ready(function() {
            $("#date_enrolled_in_HIV").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_enrolled_in_HIV: $("#date_enrolled_in_HIV").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#cohort").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    cohort: $("#cohort").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#date_died").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_died: $("#date_died").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>


<script type="text/javascript">
       $(document).ready(function() {
            $("#place_tranfred_to").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    place_tranfred_to: $("#place_tranfred_to").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>


<script type="text/javascript">
       $(document).ready(function() {
            $("#date_transfred_out").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_transfred_out: $("#date_transfred_out").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#function_at_ART_start").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    function_at_ART_start: $("#function_at_ART_start").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#function_at_ART_start").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    function_at_ART_start: $("#function_at_ART_start").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#weight_at_ART_start").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    weight_at_ART_start: $("#weight_at_ART_start").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#initial_regimen").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    initial_regimen: $("#initial_regimen").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#date_art_started").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_art_started: $("#date_art_started").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#transfred_in_from").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    transfred_in_from: $("#transfred_in_from").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#date_transfered_in").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_transfered_in: $("#date_transfered_in").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

<script type="text/javascript">
       $(document).ready(function() {
            $("#date_madically_eligible_date_ART").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_madically_eligible_date_ART: $("#date_madically_eligible_date_ART").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>


<script type="text/javascript">
       $(document).ready(function() {
            $("#reason_why_elligible").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    reason_why_elligible: $("#reason_why_elligible").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>


<script type="text/javascript">
       $(document).ready(function() {
            $("#clinical_stage").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    clinical_stage: $("#clinical_stage").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>


<script type="text/javascript">
       $(document).ready(function() {
            $("#place_of_hiv_confirmation").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    place_of_hiv_confirmation: $("#place_of_hiv_confirmation").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>



<script type="text/javascript">
       $(document).ready(function() {
            $("#date_comfirmed_hiv").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_comfirmed_hiv: $("#date_comfirmed_hiv").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })        
  </script>

 <script type="text/javascript">
       $(document).ready(function() {
            $("#drug_allagies").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    drug_allagies: $("#drug_allagies").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
        
  </script>

  <script type="text/javascript">
       $(document).ready(function() {
            $('#district_id').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    district_it: $("#district_id").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            }) 


            $('#lact').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                  lact: $("#lact").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            }) 


            $('#preg').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                  preg: $("#preg").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })           
       })
        
  </script>

  <script type="text/javascript">
          $(document).ready(function() {
            $("#sirname").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    sirname: $("#sirname").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $('#sex').on('change',function(e){
         // $("#sex").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    sex: $("#sex").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                     //alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $("#phone_number").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    phone_number: $("#phone_number").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                     alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         // $("#merital_status").blur(function(){
        $('#merital_status').on('change',function(e){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    merital_status: $("#merital_status").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $("#health_unit").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    health_unit: $("#health_unit").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $("#firstname").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    firstname: $("#firstname").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $("#age").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    age: $("#age").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $("#address").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    address: $("#address").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                     //alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $("#phone_number_owner").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    phone_number_owner: $("#phone_number_owner").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         // $("#clinician_id").blur(function(){
        $('#clinician_id').on('change',function(e){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    clinician_id:$("#clinician_id").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         // $("#pt_clinic_id").blur(function(){
          $('#pt_clinic_id').on('change',function(e){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    pt_clinic_id:$("#pt_clinic_id").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
  </script>

  <script type="text/javascript">
      $(document).ready(function() {
         $(".date_of_birth").blur(function(){
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    date_of_birth:$(".date_of_birth").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
   </script>

   <script type="text/javascript">
      $(document).ready(function() {            
            $("#care_entry_point").on('change',function(){
               $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    care_entry_point: $('#care_entry_point').val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })
                   
       })
   </script>

   

   <script type="text/javascript">
      $(document).ready(function() {
         $("#save_prior_art").click(function(){
            $("#save_prior_art").html("Saving...");
            $("#save_prior_art").attr("disabled", "disabled");
            $.ajax({
                type: "PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    prior_art:$("#prior_art").val(),
                    prior_art_date:$("#prior_art_date").val(),
                    prior_art_location:$("#prior_art_location").val(),
                    prior_art_arvs:$("#prior_art_arvs").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                  $("#save_prior_art").html("Save Prior ART");
                  $("#save_prior_art").removeAttr("disabled"); 
                  $("#prior_art").val(" ")
                  $("#prior_art_date").val(" ")
                  $("#prior_art_location").val(" ")
                  $("#prior_art_arvs").val(" ")
                      alert(result);                     
                }
              })
            })            
       })
  </script>

  
     <script type="text/javascript">
      $(document).ready(function() {
         // $("#care_entry_point_specify").blur(function(){
        $('#care_entry_point_specify').on('change',function(e){
            $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    care_entry_point_specify:$("#care_entry_point_specify").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
   </script>
   

   <script type="text/javascript">
      $(document).ready(function() {
         $("#treatmemnt_suporter").blur(function(){
            $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    treatmemnt_suporter:$("#treatmemnt_suporter").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
   </script>

   <script type="text/javascript">
      $(document).ready(function() {
         // $("#treatment_address").blur(function(){
         $('#treatment_address').on('change',function(e){
            $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    treatment_address:$("#treatment_address").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
   </script>

   <script type="text/javascript">
      $(document).ready(function() {
         $("#treatment_telephone").blur(function(){
            $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    treatment_telephone:$("#treatment_telephone").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
   </script>

   <script type="text/javascript">
      $(document).ready(function() {
         $("#home_based_care_provider").blur(function(){
            $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    home_based_care_provider:$("#home_based_care_provider").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       })
   </script>

   <script type="text/javascript">
      $(document).ready(function() {
         $("#save_family_member").click(function(){
            $("#save_family_member").attr("disabled","disabled");
            $("#save_family_member").html("Saving ...");
            $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    family_sirname:$("#family_sirname").val(),
                    family_firstname:$("#family_firstname").val(),
                    family_age:$("#family_age").val(),
                    Hive_Care:$("#Hive_Care").val(),
                    HIV_status:$("#HIV_status").val(),
                    family_unique_number:$("#family_unique_number").val(),
                    _token: "{{Session::token()}}"},

                success: function (result) {
                     alert(result);
                     $("#save_family_member").removeAttr("disabled");
                     $("#save_family_member").html("Save family member"); 
                     $("#family_sirname").val(" ");
                     $("#family_firstname").val(" ");
                     $("#family_age").val(" ");
                     $("#Hive_Care").val(" ");
                     $("#HIV_status").val(" ");
                     $("#family_unique_number").val(" ");
                },
              })
            })            
       })
   </script>

   <script type="text/javascript">
      $(document).ready(function() {
         $("#save_ART_treatment_iterruptions").click(function(){
            $("#save_ART_treatment_iterruptions").attr("disabled","disabled");
            $("#save_ART_treatment_iterruptions").html("Saving ...");
            $.ajax({
                type:"PUT",
                url: "{{ route('hiv_care_art_card.update',$read_HivCareArtCard->id) }}",
                data: {
                    circle:$("#circle").val(),
                    circle_date_recorded:$("#circle_date_recorded").val(),
                    circle_reason:$("#circle_reason").val(),
                    reason_specify:$("#reason_specify").val(),                  
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    $("#save_ART_treatment_iterruptions").removeAttr("disabled");
                    $("#save_ART_treatment_iterruptions").html("Save");

                    $("#circle").val(" ");
                    $("#circle_date_recorded").val(" ") ;
                    $("#circle_reason").val(" ");
                    $("#reason_specify").val(" ");                      
                }
              })
            })            
       })
   </script>
@endpush