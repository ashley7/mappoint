@extends('layouts.master')

@section('content')
    <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">FORM 082: HIV-EXPOSED INFANT REGISTER</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('hiv_exposed_infant.index')}}">View List</a>
                 </div>
            </div>

            <div class="row">
            	<div class="col-sm-6 col-xs-12 col-md-6">
                    <h1>Data</h1>
            		   <table class="table table-striped table-hover">
                          <tr>
                              <td>Exposed Infant Number</td><td><strong>{{$read_HivExposedInfant->infant_number}}</strong></td>
                          </tr>

                          <tr>
                              <td>Date Chart Opened</td><td><strong>{{date('d-m-Y',$read_HivExposedInfant->date_of_registration)}}</strong></td>
                          </tr>

                          <tr>
                              <td>Infant's name</td><td><strong>{{$read_HivExposedInfant->surname}} {{$read_HivExposedInfant->firstname}}</strong></td>
                          </tr>

                          <tr>
                              <td>Entry Point (Clinic/Ward)</td><td><strong>{{$read_HivExposedInfant->entry_point}}</strong></td>
                          </tr>

                          <tr>
                              <td>Sex</td><td><strong>{{$read_HivExposedInfant->sex}}</strong></td>
                          </tr>

                          <tr>
                              <td>Date of Birth</td><td><strong>{{date('d-m-Y',$read_HivExposedInfant->date_of_birth)}}</strong></td>
                          </tr>

                          <tr>
                              <td>Age</td><td><strong>{{$read_HivExposedInfant->age}} Months</strong></td>
                          </tr>

                        <!--   <tr>
                              <td>Clinic Referred From</td><td>{{$read_HivExposedInfant->clinic_referred_from}}</td>
                          </tr> -->

                          <tr>
                              <td>Date at NVP Initiation</td><td><strong>{{date('d-m-Y',$read_HivExposedInfant->date_at_nvp)}}</strong></td>
                          </tr>

                          <tr>
                              <td>Age at NVP Initiation</td><td><strong>{{$read_HivExposedInfant->age_at_nvp}} Months</strong></td>
                          </tr>
 

                          <tr>
                              <td>Date of CTX start</td><td><strong>{{date('d-m-Y',$read_HivExposedInfant->date_at_cotrim)}}</strong></td>
                          </tr>

                          <tr>
                              <td>Age of CTX start</td><td><strong>{{$read_HivExposedInfant->age_at_cotrim}} Months</strong></td>
                          </tr>


                        </table>

                        <h1>Mother/Caregiver Follow-up Information</h1>

                        <table class="table table-striped table-hover">

                           <tr>
                              <td>Mother's name</td><td><strong> {{$read_HivExposedInfant->surname_of_mother}} {{$read_HivExposedInfant->firstname_of_mother}}</strong></td>
                          </tr>

                          <tr>
                              <td>Common Name</td><td><strong> {{$read_HivExposedInfant->commonname_of_mother}}</strong></td>
                          </tr>

                           <tr>
                              <td>Telephone No: </td><td><strong> {{$read_HivExposedInfant->phone_number}}</strong></td>
                          </tr>

                           <tr>
                              <td>Address </td><td><strong>

                                <?php 

                                try {
                                  ?>

                                  {{$read_HivExposedInfant->village->name}} [{{$read_HivExposedInfant->village->parish->name}}->{{$read_HivExposedInfant->village->parish->sub_county->name}}->{{$read_HivExposedInfant->village->parish->sub_county->district->name}}]

                                  <?php
                                } catch (\Exception $e) {
                                  
                                }

                                 ?>

                                  </strong></td>
                          </tr>

                          <tr>
                              <td>LC1 Zone</td><td><strong>{{$read_HivExposedInfant->lc_one_zone}}</strong></td>
                          </tr>

                          <tr>
                              <td>LC1 Chairman</td><td><strong>{{$read_HivExposedInfant->lc_chairman}}</strong></td>
                          </tr>

                           <tr>
                              <td>How should Outreach workers introduce themselves</td><td><strong>{{$read_HivExposedInfant->outreachworkers_intro }}</strong></td>
                          </tr>

                           <tr>
                              <td>Directions to caregiver's home address</td><td><strong>{{$read_HivExposedInfant->care_giver_address_directions}}</strong></td>
                          </tr>

                          <tr>
                              <td>Alternative contact person</td><td><strong>{{$read_HivExposedInfant->alternative_contact_person}}</strong></td>
                          </tr>

                          <tr>
                              <td>Alternative contact person relationship</td><td><strong>{{$read_HivExposedInfant->relationship}}</strong></td>
                          </tr>

                          <tr>
                              <td>Alternative phone</td><td><strong>{{$read_HivExposedInfant->relative_phonenumber}}</strong></td>
                          </tr>

                          <tr>
                              <td>Has this person been disclosed to?</td><td><strong><u> {{$read_HivExposedInfant->person_disclosure}}</u></strong></td>
                          </tr>

                        </table>


                        <h1>Follow-up Section</h1>
                        <table class="table table-striped table-hover">
                          <thead>
                            <th>Attempt Name</th><th>Date</th><th>Method</th><th>Outcome</th>
                          </thead>

                          <tbody>
                            @foreach($read_HivExposedInfant->hivexposedinfantfollowup as $followups)
                              <tr>
                                <td>{{$followups->attempt_name}}</td><td>{{date('d-m-Y',$followups->attempt_date)}}</td><td>{{$followups->attempt_outcome}}</td><td>{{$followups->final_status}}</td>
                              </tr>
                            @endforeach
                          </tbody>
                          
                        </table>

                        

                           		
            	</div>  

                <div class="col-sm-6 col-xs-12 col-md-6">
                    <h1>Mother's History</h1>

                   <table class="table table-striped table-hover">

                          <tr>
                              <td>Place of delivery</td><td><strong>{{$read_HivExposedInfant->place_of_delivery}}</strong></td>
                          </tr>

                          <tr>
                              <td>Mode of delivery</td><td><strong>{{$read_HivExposedInfant->mode_of_delivery}}</strong></td>
                          </tr>

                          <tr>
                              <td>Mother recieved ARVs for PMTCT</td><td><strong>{{$read_HivExposedInfant->mother_pmtct}}</strong></td>
                          </tr>



                          <tr>
                              <td>Mother's ANC No</td><td><strong>{{$read_HivExposedInfant->Mothers_ANC_No}}</strong></td>
                          </tr>

                         

                          <tr>
                              <td>Infant's PMTCT ARVs</td><td>{{$read_HivExposedInfant->infants_arvforemtct}}</td>
                          </tr>

                          <tr>
                              <td>Mother in care at an ART clinic</td><td>{{$read_HivExposedInfant->art_clinic_option}}</td>
                          </tr>

                           <tr>
                              <td>Mother's ART Clinic</td><td>{{$read_HivExposedInfant->art_clinic}}</td>
                          </tr>

                          <tr>
                              <td>Mother's ART No</td><td>

                                <?php 
                                try {?>

                                  <a target="_blank" href="{{route('hiv_care_art_card.show',$read_HivExposedInfant->hivcareartcard->id)}}">{{$read_HivExposedInfant->hivcareartcard->PatientNumber}}</a>


                                  <?php
                                  
                                } catch (\Exception $e) {
                                  
                                }

                                 ?>

                                </td>
                          </tr>                           

                            
                           <tr>
                              <td>Mother's ARVs for EMTCT (Antenatal)</td><td>{{$read_HivExposedInfant->mother_antinantal}}</td>
                          </tr>

                          <tr>
                              <td>Mother's ARVs for EMTCT (Delivery)</td><td>{{$read_HivExposedInfant->mother_delivery}}</td>
                          </tr>

                          <tr>
                              <td>Mother's ARVs for EMTCT (Postnatal)</td><td>{{$read_HivExposedInfant->mother_postnantal}}</td>
                          </tr>
                    </table>     


                    <h1>Test Information</h1>

                    <table class="table table-striped table-hover">

                      <thead>
                        <th>Test</th><th>Test date</th> <th>Feeding method</th> <th>Result</th><th>Date result given to caregiver</th>
                      </thead>

                        @foreach($read_HivExposedInfant->hivexposedinfanttesinginformation as $tests)
                          <tr>
                            <td>{{$tests->testname}}</td> <td>{{date('d-m-Y',$tests->testdate)}}</td><td>{{$tests->infant_feeding_status_first}}</td><td>{{$tests->result_first}}</td><td>{{date('d-m-Y',$tests->date_given_to_caregiver_first)}}</td>
                          </tr>
                        @endforeach

                      <tbody>
                        
                      </tbody>
                    </table>

                     

                    

                    <h1>Linkage to care/Treatment</h1>
                    <table class="table table-striped table-hover">
                         <tr>
                            <td>Referred to ART Clinic;</td> <td><u>{{$read_HivExposedInfant->referred_to_art_clinic}}</u></td>
                             
                        </tr>

                         <tr>
                            <td>Date; </u></td><td>{{$read_HivExposedInfant->date_referred_to_art_clinic}}</u></td>
                        </tr>

                        <tr>
                            <td>Enrolled at ART Clinic</td>
                            <td><u>Enrolled? {{$read_HivExposedInfant->enrolled_to_art_clinic}}</u></td>
                        </tr>

                        <tr>
                            <td>Date: <u>{{$read_HivExposedInfant->date_enrolled_at_art_clinic}}</u></td>
                            <td></td>
                        </tr>

                        <tr>
                          <td>Pre-ART No.</td><td>{{$read_HivExposedInfant->Mothers_PRE_ART_No}}</td>
                        </tr>

                        <tr>
                            
                            <td>Presumptive referral</td><td> <u>{{$read_HivExposedInfant->transferred_to}}</u></td>
                        </tr>
                    </table>
                                    
                </div>          	
            </div>

            <div class="row">
                <h1>Visit Details</h1>
                <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                      <th>Visit name</th>  <th>Appointment Date:</th><th>Date of Visit:</th><th>Age (Months)</th> <th>HIV Test(PCR or Antibody test)</th> <th>Infant feeding Code</th> <th>Immunization Code</th> <th>Height(cm)</th> <th>Height(Kg)</th> <th>MUAC(cm)</th> <th>Clinic Assessment for Sign & Symptoms of HIV</th> <th>Developmemt Milestones</th><th>Head Circumference</th><th>Prophylaxis Cotrim</th><th>Prophylaxis NVP</th><th>Other medication or basic care</th><th>Actions Taken</th>
                    </thead>

                    <tbody>
                        @foreach($read_HivExposedInfant->hivexposedinfantvisits as $hiv_exposed_infant_visit)
                        <tr>
                            <td>{{ $hiv_exposed_infant_visit->visit_name}}</td>
                            <td>{{date('d-m-Y',$hiv_exposed_infant_visit->appointment_date)}}</td>
                            <td>{{date('d-m-Y',$hiv_exposed_infant_visit->visit_date)}}</td>
                            <td>{{ $hiv_exposed_infant_visit->age}} Months</td>
                            <td>{{ $hiv_exposed_infant_visit->hive_test}}</td>
                            <td>{{ $hiv_exposed_infant_visit->infant_feeding}}</td>                             
                            <td>{{ str_replace("\"", "", $hiv_exposed_infant_visit->immunisation_codes) }}</td>
                            <td>{{ $hiv_exposed_infant_visit->height}}</td>
                            <td>{{ $hiv_exposed_infant_visit->weight}}</td>
                            <td>{{ $hiv_exposed_infant_visit->muac}}</td>
                            <td>{{str_replace("\"", "", $hiv_exposed_infant_visit->clinical_assessment_spec)}}</td>
                            <td>{{ $hiv_exposed_infant_visit->development_milestones}}</td>
                            <td>{{ $hiv_exposed_infant_visit->head_circumference}}</td>
                            <td>{{ $hiv_exposed_infant_visit->cotrim}}</td>
                            <td>{{ $hiv_exposed_infant_visit->ctx_nvp}}</td>
                            <td>{{ $hiv_exposed_infant_visit->other_indicators}}</td>
                            <td>{{ $hiv_exposed_infant_visit->other_indicators}}</td>
                            <td>{{ $hiv_exposed_infant_visit->actions_taken}}</td>
                            <td>
                              {{ Form::open(array('route' => array('hiv_exposed_infant_visit.destroy',$hiv_exposed_infant_visit->id), 'method' => 'delete','onsubmit' => 'return confirm("You are about to delete a record, Do you want to proceed?"); return false;')) }}        
                                  <button type="submit" class="btn btn-danger">Delete</button> 
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