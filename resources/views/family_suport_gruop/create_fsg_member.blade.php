@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Add Family Support Group member</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('fsg_register.index')}}">View Family Support Group Register</a>
                 </div>
            </div>

            <section class="form-control">
                <div class="row">
                    <div class="col-sm-6 col-md-6 col-lg-6 col-xs-6">
                        <label>Choose Person</label>
                        <select id="hiv_care_art_card_id" class="form-control select">                       
                            @foreach($read_HivCareArtCard as $HivCareArtCard)
                             <option value="{{$HivCareArtCard->id}}">{{$HivCareArtCard->PatientNumber}} ({{$HivCareArtCard->surName}} {{$HivCareArtCard->firstName}}) 

                              <?php 
                              try {

                                ?>
                                  [{{$HivCareArtCard->village->name}}]
                                <?php
                                
                              } catch (\Exception $e) {
                                
                              }

                               ?>

                              </option>
                            @endforeach
                        </select>
                       
                        <label>Choose Family Support Group</label>
                        <select id="family_suport_group_id" class="form-control select">
                            @foreach($read_FamilySuportGroup as $FamilySuportGroup)
                             <option value="{{$FamilySuportGroup->id}}">{{$FamilySuportGroup->name}}</option>
                            @endforeach
                        </select>                     
                    
                      
                        <label>Date of Enrolment</label>
                        <input type="text" id="date_of_enrolement" class="form-control">              

                     
                        <label>Relationship to index client</label>
                       
                        <select id="relationship_to_index_client" class="form-control select">
                          <option></option>
                          <option value="Self">Self</option>
                          <option value="Partner">Partner</option>
                          <option value="Child">Child</option>                       
                        </select>
                   
                        OR
                        <label>Specify the Relationship to index client</label>
                         <input type="text" id="relationship_to_index_client_spec" class="form-control">
                        <br>
                        <label>First-time attendance or re-enrolment?</label>
                        <select id="first_time_or_reEnrollemt" class="form-control select">
                          <option value="First-time">First-time</option>                          
                          <option value="Previously enrolled at this facility">Previously enrolled at this facility</option>                          
                          <option value="Previously enrolled at different facility">Previously enrolled at different facility</option>                          
                        </select>


                         <label>HIV Status at enrolment</label>
                        <select id="hiv_status_at_enrolment" class="form-control">
                          <option></option>
                          <option value="HIV-Positive">HIV-Positive</option>
                          <option value="HIV-Negative">HIV-Negative</option>
                          <option value="HIV-Exposed">HIV-Exposed</option>
                          <option value="Unknown Status">Unknown Status</option>
                        </select>
                         
               
                        <label>Disclosure Status (if HIV+)</label>
                        <select id="disclousure_status" class="form-control">
                          <option></option>
                          <option value="Yes, to partner">Yes, to partner</option>
                          <option value="Yes, to other">Yes, to other</option>
                          <option value="Not disclosed">Not disclosed</option>
                        </select>
                      
                        
                     
                        <label>Entry point  
                          <a class="info" style="float: right;" href="{{route('care_entry_point.create')}}">  | Add Entry point</a>
                        </label>
                        <select id="entry_point" class="form-control select">
                          <option></option>
                          @foreach($read_care_entry_point as $read_care_entry_points)
                           <option value="{{$read_care_entry_points->id}}">{{$read_care_entry_points->name}}</option>
                          @endforeach
                        </select>
                       
                   
                        <label>Family planning method</label>
                        <select id="family_planning_method" multiple="multiple" class="multi-select">
                          <option></option>
                          <option value="Condoms">Condoms</option>
                          <option value="Oral Contraceptables">Oral Contraceptables</option>
                          <option value="Injectables">Injectables</option>                          
                          <option value="Implants">Implants</option>                          
                          <option value="BTL">BTL</option>                          
                          <option value="IUD">IUD</option>
                          <option value="NONE">NONE</option>                   
                        </select>                     
                        OR
                 
                        <label>Specify Family planning method</label>
                        <input type="text" id="family_planning_method_spec" class="form-control">

                        <label>Maternal Care</label>
                        <input type="text" id="maternal_care" placeholder="ANC #  | PNC #" class="form-control">


                        <strong>HIV Care</strong><br>
                        <label>Pre-ART #</label>
                        <input type="text" id="prior_art" class="form-control">

                         <label>ART #</label>
                        <input type="text" id="art" class="form-control">

                        <label>ART Regimen at enrolment (if applicable)</label>
                        <input type="text" id="art_regimen_at_enrolment" class="form-control">                     

                      </div>
                      <div class="col-sm-6 col-md-6 col-lg-6 col-xs-6">

                        <label>Receiving OI Prophylaxis?</label>
                        <input type="text" id="Receiving_OI_Prophylaxis" placeholder="CTX, INH, FLUC, None, N/A" class="form-control">

                        <label>Most recent CD4 Count</label>
                        <input type="text" id="Most_recent_CD4_Count" placeholder="CD4 Count" class="form-control">

                        <label>Most recent CD4 Count Date</label>
                        <input type="text" id="Most_recent_CD4_Count_date" class="form-control datepicker">
                      
                        <label>Most recent WHO Clinical Stage</label>
                        <input type="text" id="Most_recent_WHO_Clinical_Stage" class="form-control">
                       
                        <strong>If client is HIV-Exposed Infant</strong><br>
                        <label>Tested by DNA PCR?</label>
                        <select id="Tested_by_DNA_PCR" class="form-control">
                          <option></option>
                          <option value="YES">YES</option>
                          <option value="NO">NO</option>
                          <option value="N/A">N/A</option>
                        </select>

                        <label>Date of DNA PCR Test</label>
                        <input type="text" id="Date_of_DNA_PCR_Test" class="form-control">

                        <label>EXP #</label>
                        <input type="text" id="exp" class="form-control">

                        <label>Result of DNA PCR Test</label>
                        <select id="Result_of_DNA_PCR_Test" class="form-control">
                          <option></option>
                          <option value="Nagative">Negative</option>
                          <option value="Positive">Positive</option>
                          <option value="Ind">Ind</option>
                          <option value="Unk">Unk</option>
                        </select>


                        <label>Medical Services Accessed (list all the apply)</label>
                        <select id="fsg_service_id_medical" multiple="multiple" class="multi-select">
                            @foreach($read_FsgService as $FsgService)
                             <option value="{{$FsgService->id}}">{{$FsgService->name}}</option>
                            @endforeach
                        </select>

                        <label>Community / Non-health Services Accessed (list all that apply)</label>
                        <select id="fsg_service_id_community" multiple="multiple" class="multi-select">
                            @foreach($read_FsgService as $FsgService)
                             <option value="{{$FsgService->id}}">{{$FsgService->name}}</option>
                            @endforeach
                        </select>           
                    
                        <label>Prophylaxis Treatment</label>
                        <input type="text" id="prophylaxis_treatment" class="form-control">

                        <br>                        
                        <a href="#" class="btn btn-success btn-rounded waves-effect waves-light" id="savemember">Save</a>

                    </div>
                    <br>

               
               </div>
           </section>
           <br><br>

            <section class="form-control">
               <div class="clearfix">
                    <div class="pull-left">
                        <h2 class="logo" style="color: #2b3d51 !important;">Children HIV status</h2>
                    </div>                
                </div>         
        
                <div class="row">                                 
                    <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                       <label>Surname of child</label>
                       <input type="text" id="sName" class="form-control">
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                       <label>First name of child</label>
                       <input type="text" id="fName" class="form-control">
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                       <label>Date tested</label>
                       <input type="text" id="date_tested" class="form-control">
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                        <label>Test results</label>
                       <input type="text" id="test_results" class="form-control">
                    </div>
                    <div class="col-sm-12 col-md-2 col-lg-2 col-xs-12">
                        <br>
                        <a href="#" class="btn btn-success btn-rounded waves-effect waves-light" id="savemember_child">Save Child</a>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div> 
@endsection

@push("scripts")
    <script type="text/javascript">
      $(document).ready(function() {
         $("#savemember_child").click(function(){
            $.ajax({
                type: "POST",
                url: "{{ route('child_hivstatus.store') }}",
                data: {
                    hiv_care_art_card_id: $("#hiv_care_art_card_id").val(),
                    sName:$("#sName").val(),
                    fName:$("#fName").val(),
                    date_tested:$("#date_tested").val(),
                    test_results:$("#test_results").val(),
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
         $("#savemember").click(function(){

         var fpm = [];
         $('#family_planning_method :selected').each(function(i, selectedElement) {
              fpm[i] = $(selectedElement).val();
          }); 


         var fsg_service_medical = [];
         $('#fsg_service_id_medical :selected').each(function(i, selectedElement) {
              fsg_service_medical[i] = $(selectedElement).val();
          }); 

          var fsg_service_community=[]; 

           $('#fsg_service_id_community :selected').each(function(i, selectedElement) {
              fsg_service_community[i] = $(selectedElement).val();
          });      

            $.ajax({
                type: "POST",
                url: "{{ route('fsg_register.store') }}",
                data: {                   
                    prophylaxis_treatment: $("#prophylaxis_treatment").val(),
                    maternal_care: $("#maternal_care").val(),
                    family_planning_method: fpm,
                    family_planning_method_spec: $("#family_planning_method_spec").val(),
                    entry_point: $("#entry_point").val(),
                    prior_art: $("#prior_art").val(),                
                    art_regimen_at_enrolment: $("#art_regimen_at_enrolment").val(),                
                    Receiving_OI_Prophylaxis: $("#Receiving_OI_Prophylaxis").val(),                
                    Most_recent_CD4_Count: $("#Most_recent_CD4_Count").val(),                
                    Most_recent_CD4_Count_date: $("#Most_recent_CD4_Count_date").val(),                
                    Most_recent_WHO_Clinical_Stage: $("#Most_recent_WHO_Clinical_Stage").val(),                
                    fsg_service_id_medical: fsg_service_medical,
                    fsg_service_id_community: fsg_service_community,
                    art: $("#art").val(),                
                    exp: $("#exp").val(),                
                    Tested_by_DNA_PCR: $("#Tested_by_DNA_PCR").val(),                
                    Date_of_DNA_PCR_Test: $("#Date_of_DNA_PCR_Test").val(),                
                    Result_of_DNA_PCR_Test: $("#Result_of_DNA_PCR_Test").val(),                
                    disclousure_status: $("#disclousure_status").val(),
                    hiv_status_at_enrolment: $("#hiv_status_at_enrolment").val(),
                    first_time_or_reEnrollemt: $("#first_time_or_reEnrollemt").val(),
                    relationship_to_index_client: $("#relationship_to_index_client").val(),
                    relationship_to_index_client_spec: $("#relationship_to_index_client_spec").val(),
                    date_of_enrolement: $("#date_of_enrolement").val(),
                    fsg_service_id: $("#fsg_service_id").val(),
                    family_suport_group_id: $("#family_suport_group_id").val(),
                    hiv_care_art_card_id: $("#hiv_care_art_card_id").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                      alert(result);
                  }
                })
            })            
        })
  </script>
@endpush