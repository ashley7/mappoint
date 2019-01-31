@extends('layouts.master')

@section('content')
    <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">FORM 082: HIV-EXPOSED INFANT REGISTER</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('hiv_exposed_infant.show',$read_HivExposedInfant->id)}}">View Infant Details</a>
                 </div>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-12 col-lg-4 col-xs-12">
                    <h2>Baby's information</h2>
                    <label>Infant Exposed Number</label>
                    <input type="text" id="infant_number" class="form-control" value="{{$read_HivExposedInfant->infant_number}}">
 
                    <label>Date chart opened</label>                    
                     <input type="date" class="form-control" id="date_of_registration" value="({{date('d-m-y',$read_HivExposedInfant->date_of_registration)}})" placeholder="mm/dd/yyyy">

                     <label>Health Facility</label>
                     <select id="pt_clinic" class="form-control select2">
                         <option></option>
                         @foreach($read_ptclinics as $pt_clinic)
                           <option value="{{$pt_clinic->id}}">{{$pt_clinic->name}} [{{$pt_clinic->district->name}}]</option>
                         @endforeach
                     </select>

                    <label>Surname</label>                    
                    <input type="text" value="{{$read_HivExposedInfant->surname}}" id="surname" class="form-control">

                    <label>Firsname</label>
                    <input type="text" id="firstname" value="{{$read_HivExposedInfant->firstname}}" class="form-control">

                    <label>Entry point (Clinic/Ward)</label>
                    <input type="text" id="entry_point" value="{{$read_HivExposedInfant->entry_point}}" class="form-control">

                    <label>Sex [{{$read_HivExposedInfant->sex}}]</label>
                    <select class="form-control select2" id="sex">
                        <option></option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>

                    <label>Date of Birth</label>
                    <input type="date" class="form-control" id="date_of_birth" value="{{$read_HivExposedInfant->date_of_birth}}" placeholder="mm/dd/yyyy">

                    <label>Age (Months)</label>
                    <input type="number" id="age" min="0" step="any" value="{{$read_HivExposedInfant->age}}" class="form-control">

                    <!--  <label>Clinic referred from</label>
                    <input type="text" id="clinic_referred_from" class="form-control" value="{{$read_HivExposedInfant->clinic_referred_from}}"> -->

                    <label>Date of NVP Start</label>
                    <input type="date" id="date_at_nvp" class="form-control" value="{{$read_HivExposedInfant->date_at_nvp}}" placeholder="mm/dd/yyyy">

                     <label>Age of NVP Start (months)</label>
                    <input type="number" id="age_at_nvp" min="0" step="any" class="form-control" value="{{$read_HivExposedInfant->age_at_nvp}}">

                    <label>Date of CTX Start</label>
                    <input type="date" id="date_at_cotrim" value="{{$read_HivExposedInfant->date_at_cotrim}}" class="form-control">

                    <label>Age of CTX Start (months)</label>
                    <input type="number" min="0" step="any" id="age_at_cotrim" value="{{$read_HivExposedInfant->age_at_cotrim}}" class="form-control">

                   
                </div>

                 <div class="col-md-4 col-sm-12 col-lg-4 col-xs-12">
                    
                    

                    <h4>Mother/Caregiver follow-up Information</h4>

                    <label>Mother's Surname</label>
                    <input type="text" id="surname_of_mother" value="{{$read_HivExposedInfant->surname_of_mother}}" class="form-control">

                     <label>Mother's Firstname</label>
                    <input type="text" id="firstname_of_mother" value="{{$read_HivExposedInfant->firstname_of_mother}}" class="form-control">

                    <label>Mother's Common name</label>
                    <input type="text" id="commonname_of_mother" value="{{$read_HivExposedInfant->commonname_of_mother}}" class="form-control">

                    <label>Telephone Number</label>
                    <input type="text" id="phone_number" value="{{$read_HivExposedInfant->phone_number}}" class="form-control">

                    <label>Address</label>
                   <select id="village_id" class="form-control select2">
                        <option></option>
                        @foreach($read_Village as $village)
                         <option value="{{$village->id}}">{{$village->name}} [{{$village->parish->name}}->{{$village->parish->sub_county->name}}->{{$village->parish->sub_county->district->name}}]</option>
                        @endforeach
                    </select>


                    <label>LC1 Zone</label>
                    <input type="text" id="lc_one_zone" value="{{$read_HivExposedInfant->lc_one_zone}}" class="form-control">

                    <label>LC1 Chairman</label>
                    <input type="text" id="lc_chairman" value="{{$read_HivExposedInfant->lc_chairman}}" class="form-control">

                    <label>How should outreach workers introduce themselves?</label>
                    <input type="text" id="outreachworkers_intro" value="{{$read_HivExposedInfant->outreachworkers_intro}}" class="form-control">

                    <label>Directions to caregiver's address</label>
                    <input type="text" id="care_giver_address_directions" value="{{$read_HivExposedInfant->care_giver_address_directions}}" class="form-control">

                    <label>Alternative contact person</label>
                    <input type="text" id="alternative_contact_person" value="{{$read_HivExposedInfant->alternative_contact_person}}" class="form-control">

                     <label>Relationship</label>
                    <input type="text" id="relationship" value="{{$read_HivExposedInfant->relationship}}" class="form-control">

                     <label>Telephone Number</label>
                    <input type="text" id="relative_phonenumber" value="{{$read_HivExposedInfant->relative_phonenumber}}" class="form-control">

                    <label>Has this person been Disclosed to?</label>
                    <select class="form-control select2" id="person_disclosure">
                        <option></option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                    </select>

                               
                </div>

                <div class="col-md-4 col-sm-12 col-lg-4 col-xs-12">
                    <h2>Mother's History</h2>

                    <label>Place of delivery</label>
                    <input type="text" id="place_of_delivery" value="{{$read_HivExposedInfant->place_of_delivery}}" class="form-control">

                    <label>Mode of delivery</label>
                    <input type="text" id="mode_of_delivery" value="{{$read_HivExposedInfant->mode_of_delivery}}" class="form-control">

                    <label>Mother recieved ARVs for PMTCT</label>
                    <select class="form-control" id="mother_pmtct">
                        <option></option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>
                        <option value="RT">Unknown</option>
                    </select>

                    <label>Mother's ANC No</label>
                    <input type="text" id="Mothers_ANC_No" value="{{$read_HivExposedInfant->Mothers_ANC_No}}" class="form-control">

                    


                    <label title="Indicate which ARVs the mother received during antenatal (pregnancy)">Mother's ARVs for EMTCT (Antenatal) [{{$read_HivExposedInfant->mother_antinantal}}]</label>
                    <select class="form-control" id="mother_antinantal">
                        <option></option>
                        <option value="Life long ART">Life long ART</option>
                        <option value="No ART">No ART</option>
                        <option value="Unknown">Unknown</option>
                        
                    </select>

                    <label title="Indicate which ARVs the mother received during delivery">Mother's ARVs for EMTCT (During labour/Delivery) [{{$read_HivExposedInfant->mother_delivery}}]</label>
                    <select class="form-control" id="mother_delivery">
                        <option></option>
                        <option value="Life long ART">Life long ART</option>
                        <option value="No ART">No ART</option>
                        <option value="Unknown">Unknown</option>
                        
                    </select>

                    <label title="Indicate which ARVs the mother received during delivery">Mother's ARVs for EMTCT (Postnatal) [{{$read_HivExposedInfant->mother_postnantal}}]</label>
                    <select class="form-control" id="mother_postnantal">
                        <option></option>
                        <option value="Life long ART">Life long ART</option>
                        <option value="No ART">No ART</option>
                        <option value="Unknown">Unknown</option>                        
                    </select>

                    <label>Infant's ARVs for PMTCT [{{$read_HivExposedInfant->infants_arvforemtct}}]</label>
                     <select class="form-control select2" id="infants_arvforemtct">
                        <option></option>
                        <option value="Daily NVP">Daily NVP</option>
                        <option value="Received NVP within 72 hours of birth until 6 weeks">Received NVP within 72 hours of birth until 6 weeks</option>
                        <option value="NVP taken after 72 hours of birth">NVP taken after 72 hours of birth</option>
                        <option value="No ARVs taken at birth">No ARVs taken at birth</option> 
                        <option value="Unknown">Unknown</option>                      
                    </select>

                    <label>Mother in care at an ART clinic?</label>
                    <select class="form-control" id="art_clinic_option">
                        <option></option>
                        <option value="Yes">Yes</option>
                        <option value="No">No</option>                       
                    </select>

                    <label>ART Clinic</label>
                    <input type="text" id="art_clinic" value="{{$read_HivExposedInfant->art_clinic}}" class="form-control">

                    <label>Mother's ART Number</label>
                    <select class="form-control select2" id="mother_art_number">
                        <option></option>

                        <?php 

                        try {                           
                        
                          ?>

                           @foreach($read_only_numbers as $members)
                                <option value="{{$members->id}}">{{$members->PatientNumber}} [{{$members->surName}} {{$members->firstName}}]</option>
                            @endforeach

                          <?php
                          } catch (\Exception $e) {
                            
                        }

                         ?>
                       

                    </select>

                </div>
                        	
            </div>

            <br><br>

           
            <section class="form-control">  
                 <div class="row">                 
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xs-12">
                         <h1>Testing information</h1>
                        
                        <label>Test name</label>
                        <input type="text" id="testname" class="form-control" placeholder="1st PCR or 2nd PCR or something else">

                        <label>Test date</label>
                        <input type="date" id="testdate" class="form-control">

                   
                        <label>Infant Feeding Status</label>
                        <select class="form-control" id="infant_feeding_status">
                             <option></option>
                             <option value="EBF—Exclusive Breastfeeding">EBF—Exclusive Breastfeeding</option>
                             <option value="RF—Replacement Feeding (never Breastfed)">RF—Replacement Feeding (never Breastfed)</option>
                             <option value="MF--Mixed Feeding (< 6 months)">MF--Mixed Feeding (< 6 months)</option>
                             <option value="CF—Complementary Feeding (> 6 months)">CF—Complementary Feeding (> 6 months)</option>
                             <option value="W—Wean from Breastfeeding">W—Wean from Breastfeeding</option>
                             <option value="NLB—No Longer Breastfeeding">NLB—No Longer Breastfeeding</option>
                         </select>

                         <label title="Result of the 1st DBS test. Indicate “negative” or “positive”.">Result</label>
                         <select id="result" class="form-control">
                             <option></option>
                             <option value="Positive">Postive</option>
                             <option value="Negative">Nagative</option>
                         </select>
 
                         <label>Date results given to caregiver</label>
                         <input type="date" id="date_given_to_caregiver" class="form-control">
                         <br>
                         <button id="save_test" class="btn btn-warning">Save</button>

                         



                    </div>
                    <div class="col-md-6 col-sm-6 col-lg-6 col-xs-12">
                        <h1>Linkage to Care/Treatment</h1>

                        <label>Referred to ART Clinic?</label>
                        <select class="form-control" id="referred_to_art_clinic">
                            <option></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>                       
                        </select>

                        <label>Date</label>
                        <input type="date" id="date_referred_to_art_clinic" class="form-control">

                        <label>Enrolled at ART Clinic?</label>
                        <select class="form-control" id="enrolled_to_art_clinic">
                            <option></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>                       
                        </select>

                        <label>Date</label>
                        <input type="date" id="date_enrolled_at_art_clinic" class="form-control">

                        <label>Pre-ART No</label>
                        <input type="text" id="Mothers_PRE_ART_No" value="{{$read_HivExposedInfant->Mothers_PRE_ART_No}}" class="form-control">

                        <label>Presumptive Referral?</label>
                        <input type="text" id="transferred_to" class="form-control">
                    

                    </div>
                </div>
            </section>
            <br>
            <section class="form-control">
                <div class="row">
                    <h1>Follow-up section</h1>
                    <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">

                        <label>Attempt Name</label>
                        <input type="text" id="attempt_name" placeholder="E.g  First Attempt" class="form-control">
                        
                        <label>Date</label>
                        <input type="date" id="attempt_date" class="form-control">

                        <label>Outcome</label>
                        <input type="text" id="attempt_outcome" class="form-control">
                        <label>Final Status (Optional)</label><br>
                        <select class="form-control select2" id="final_status">
                            <option></option>
                            <option value="Discharged Nagative">Discharged Nagative</option>
                            <option value="Referred to ART Clinic">Referred to ART Clinic</option>
                            <option value="Lost (Above 6 months)">Lost (Above 6 months)</option>
                            <option value="Transferred">Transferred</option>
                            <option value="Died">Died</option>
                        </select>
                        <br><br>
                        <button id="save_followup" class="btn btn-warning">Save</button>
                    </div>
                    
                </div>
                
            </section>

            <br>

            <section class="form-control">
                <div class="row">
                     
                     <div class="col-md-6 col-sm-6 col-lg-6 col-xs-12">
                        <h1>Visit Details</h1>

                        <label>Visit Name</label>
                        <input type="text" id="visit_name" class="form-control" placeholder="E.g Visit 1">                        
                        <label>Date of Appointment</label>
                        <input type="date" id="appointment_date" class="form-control">

                        <label>Visit date</label>
                        <input type="date" id="visit_date" class="form-control">

                        <label>Age (Months)</label>
                        <input type="number" id="age_of_baby" class="form-control" min="0" step="any">

                        <label>HIV Test</label>
                        <input type="text" id="hive_test" class="form-control" placeholder="PCR or Antibody test">

                        <label>Infant Feeding</label>
                        <select class="form-control" id="infant_feeding">
                            <option></option>
                            <option value="EBF—Exclusive Breastfeeding">EBF—Exclusive Breastfeeding</option>
                            <option value="RF—Replacement Feeding (never Breastfed)">RF—Replacement Feeding (never Breastfed)</option>
                            <option value="MF--Mixed Feeding (< 6 months)">MF--Mixed Feeding (< 6 months)</option>
                            <option value="CF—Complementary Feeding (> 6 months)">CF—Complementary Feeding (> 6 months)</option>
                            <option value="W—Wean from Breastfeeding">W—Wean from Breastfeeding</option>
                            <option value="NLB—No Longer Breastfeeding">NLB—No Longer Breastfeeding</option>
                        </select>

                        <label>Immunisation Codes</label>
                        <select id="immunisation_codes" multiple="multiple" class="multi-select">
                            <option></option>
                            <option value="BCG">BCG</option>
                            <option value="DPT-HepB + Hib1">DPT-HepB + Hib1</option>
                            <option value="DPT-HepB + Hib2">DPT-HepB + Hib2</option>
                            <option value="DPT-HepB + Hib3">DPT-HepB + Hib3</option>
                            <option value="Vitamin A">Vitamin A</option>
                            <option value="De-worming">De-worming</option>
                            <option value="Not Done">Not Done</option>
                        </select>
                        <br>
                        <label>Specify which ones</label>
                        <input type="text" id="immunisation_codes_spec" class="form-control">

                        <label>Height (cm)</label>
                        <input type="number" step="any" min="0" id="height" class="form-control">

                        <label>Weight (Kg)</label>
                        <input type="number" step="any" min="0" id="weight" class="form-control">

                        <label>MUAC(cm)</label>
                        <input type="number" step="any" min="0" id="muac" class="form-control">


                        <br>
 
                        
                        <button id="savedetails" class="btn btn-warning">Save</button>
                     </div>
                      <div class="col-md-6 col-sm-6 col-lg-6 col-xs-12">

                        <label>Clinical Assessment for Signs and Symptoms of HIV</label>
                        <select id="clinical_assessment" multiple="multiple" class="multi-select">
                            <option></option>
                            <option value="Well">Well: no Clinical signs and symptoms</option>
                            <option value="LN">LN: Palbable Lymph Nodes in more than one place</option>
                            <option value="WL">WL: Weight loss</option>
                            <option value="F">F: Fever</option>
                            <option value="OT">OT: Oral thrush</option>
                            <option value="El">El: Ear Infection</option>
                            <option value="G">G: Poor Growth (height)</option>
                            <option value="C">Coughing</option>
                            <option value="ADR">ADR: Acute Diarrhea</option>
                            <option value="RDR">RDR: Recurrent Diarrhea</option>
                            <option value="PNEU">PNEU: Pneumonia</option>
                            <option value="RASH">RASH: Skin Rash</option>
                            <option value="PDR">PDR: Persistent Diarrhea</option>
                            <option>Other</option>
                        </select>

                        <label>Specify which ones</label>
                        <input type="text" id="clinical_assessment_spec" class="form-control">
                        <br>

                        <label>Development Milestones</label>
                        <select id="development_milestones" multiple="multiple" class="multi-select">
                            <option></option>
                            <option value="SMI">SMI: Smiling</option>
                            <option value="ROLL">ROLL: Rolling Over</option>
                            <option value="SIT">SIT: Sitting</option>
                            <option value="CRA">CRA: Crawl</option>
                            <option value="ST">ST: Stand</option>
                            <option value="W">Walk</option>
                            <option value="HEAD">HEAD: Controlling the head</option>
                            <option value="TOB">TOB: Transfering objects from hand to hand</option>
                            <option value="COG">COG: Cognition</option>
                        </select>

                        <br>


                        <label>Head Circumference</label>
                        <input type="text" id="head_circumference" class="form-control">
                        <br>

                        <label>Propylaxis Cotrim</label>
                        <select class="form-control" id="cotrim">
                            <option></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>                       
                        </select>

                        <label>Propylaxis NVP</label>
                        <select class="form-control" id="nvp">
                            <option></option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>                       
                        </select>

                        <label>Other indicators or basi care items</label>
                        <input type="text" id="other_indicators" class="form-control" placeholder="E.g ITNs, water Vessels">

                        <label>ACTION(S) TAKEN if anycare</label>
                        <input type="text" id="actions_taken" class="form-control">

                      </div>
                </div>
            </section>
            
        </div>
    </div> 
@endsection

@push("scripts")
 
<script type="text/javascript">

    $(document).ready(function(){
            $("#savedetails").click(function(){     
                var immunisationcodes = [];
                $('#immunisation_codes :selected').each(function(i, selectedElement) {
                  immunisationcodes[i] = $(selectedElement).val();
                }); 

                var clinicalassessment = [];
                $('#clinical_assessment :selected').each(function(i, selectedElement) {
                  clinicalassessment[i] = $(selectedElement).val();
                }); 

                var developmentmilestones = [];
                $('#development_milestones :selected').each(function(i, selectedElement) {
                  developmentmilestones[i] = $(selectedElement).val();
                }); 

                     

                       
                  $.ajax({
                      type: "PUT",
                      url: "{{ route('hiv_exposed_infant_visit.update',$read_HivExposedInfant->id) }}",
                      data: {
                          visit_name: $("#visit_name").val(),
                          hive_test: $("#hive_test").val(),
                          immunisation_codes:immunisationcodes,
                          clinical_assessment:clinicalassessment,
                          development_milestones:developmentmilestones,
                          immunisation_codes_spec:$("#immunisation_codes_spec").val(),
                          clinical_assessment_spec:$("#clinical_assessment_spec").val(),
                          height:$("#height").val(),
                          weight:$("#weight").val(),
                          muac:$("#muac").val(),
                          cotrim: $("#cotrim").val(),
                          head_circumference: $("#head_circumference").val(),
                          actions_taken: $("#actions_taken").val(),
                          other_indicators: $("#other_indicators").val(),
                          appointment_date: $("#appointment_date").val(),
                          visit_date: $("#visit_date").val(),                          
                          age: $("#age_of_baby").val(),                          
                          infant_feeding: $("#infant_feeding").val(),
                          nvp: $("#nvp").val(),
                          mother_arv: $("#mother_arv").val(),
                           _token: "{{Session::token()}}"},
                      success: function (result) {
                          alert(result); 
                          
                       }
                    })
                })
            });
    


        $(document).ready(function(){
            $("#save_followup").click(function(){                  
                  $.ajax({
                      type: "PUT",
                      url: "{{ route('hivie_follow_up.update',$read_HivExposedInfant->id) }}",
                      data: {
                        attempt_name:$("#attempt_name").val(),
                        attempt_date:$("#attempt_date").val(),
                        attempt_outcome:$("#attempt_outcome").val(),                                                
                        final_status:$("#final_status").val(),                                                
                        _token: "{{Session::token()}}"},
                      success: function (result) {
                          alert(result); 
                          
                       }
                    })
                })
            });


        $(document).ready(function(){
            $("#save_test").click(function(){                  
                  $.ajax({
                      type: "PUT",
                      url: "{{ route('hivie_test_info.update',$read_HivExposedInfant->id) }}",
                      data: {
                        testname:$("#testname").val(),
                        testdate:$("#testdate").val(),
                        infant_feeding_status_first:$("#infant_feeding_status").val(),
                        result_first:$("#result").val(),
                        date_given_to_caregiver_first:$("#date_given_to_caregiver").val(),                         
                        _token: "{{Session::token()}}"},
                      success: function (result) {
                          alert(result); 
                          
                       }
                    })
                })
            });
            
  
      
</script>

<script type="text/javascript">  
        $(document).ready(function() {
            $('#enrolled').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    enrolled: $("#enrolled").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });


        $(document).ready(function() {
            $('#enrolled_to_art_clinic').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    enrolled_to_art_clinic: $("#enrolled_to_art_clinic").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });

        $(document).ready(function() {
            $('#referred_to_art_clinic').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    referred_to_art_clinic: $("#referred_to_art_clinic").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });
        

         $(document).ready(function() {
            $('#mother_art_number').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    hiv_care_art_card_id: $("#mother_art_number").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });

     

        $(document).ready(function() {
            $('#mother_pmtct').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    mother_pmtct: $("#mother_pmtct").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });

     $(document).ready(function() {
            $('#person_disclosure').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    person_disclosure: $("#person_disclosure").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        $(document).ready(function() {
            $('#village_id').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    village_id: $("#village_id").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

     

        $(document).ready(function() {
            $('#mode_of_delivery').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    mode_of_delivery: $("#mode_of_delivery").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });

        

        $(document).ready(function() {
            $('#art_clinic_option').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    art_clinic_option: $("#art_clinic_option").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });

        $(document).ready(function() {
            $('#rapid_test_result').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    rapid_test_result: $("#rapid_test_result").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });


        $(document).ready(function() {
            $('#date_enrolled_at_art_clinic').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_enrolled_at_art_clinic: $("#date_enrolled_at_art_clinic").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });


        $(document).ready(function() {
            $('#date_referred_to_art_clinic').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_referred_to_art_clinic: $("#date_referred_to_art_clinic").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });

        $(document).ready(function() {
            $('#art_clinic').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    art_clinic: $("#art_clinic").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
        });


        $(document).ready(function() {
            $('#place_of_delivery').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    place_of_delivery: $("#place_of_delivery").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        $(document).ready(function() {
            $('#relative_phonenumber').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    relative_phonenumber: $("#relative_phonenumber").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        $(document).ready(function() {
            $('#relationship').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    relationship: $("#relationship").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        $(document).ready(function() {
            $('#outreachworkers_intro').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    outreachworkers_intro: $("#outreachworkers_intro").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        
        $(document).ready(function() {
            $('#alternative_contact_person').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    alternative_contact_person: $("#alternative_contact_person").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        

         $(document).ready(function() {
            $('#care_giver_address_directions').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    care_giver_address_directions: $("#care_giver_address_directions").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });
     

       $(document).ready(function() {
            $('#lc_chairman').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    lc_chairman: $("#lc_chairman").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

      $(document).ready(function() {
            $('#lc_one_zone').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    lc_one_zone: $("#lc_one_zone").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });


     $(document).ready(function() {
            $('#phone_number').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    phone_number: $("#phone_number").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

          $(document).ready(function() {
            $('#commonname_of_mother').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    commonname_of_mother: $("#commonname_of_mother").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });


        $(document).ready(function() {
            $('#infant_number').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    infant_number: $("#infant_number").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

     


        $(document).ready(function() {
            $('#pt_clinic').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    pt_clinic_id: $("#pt_clinic").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

      $(document).ready(function() {
            $('#rapid_test_age').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    rapid_test_age: $("#rapid_test_age").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });
      

      $(document).ready(function() {
            $('#entry_point').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    entry_point: $("#entry_point").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

     $(document).ready(function() {
            $('#rapid_test_date').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    rapid_test_date: $("#rapid_test_date").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

    $(document).ready(function() {
            $('#Pre_ART_No').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    pre_art_number: $("#Pre_ART_No").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

    $(document).ready(function() {
            $('#transferred_to').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    transferred_to: $("#transferred_to").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

     $(document).ready(function() {
            $('#transferred').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    transferred: $("#transferred").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

     $(document).ready(function() {
            $('#died').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    died: $("#died").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

    $(document).ready(function() {
            $('#clinic').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    clinic: $("#clinic").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

    $(document).ready(function() {
            $('#refferred_for_art').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    refferred_for_art: $("#refferred_for_art").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

     $(document).ready(function() {
            $('#lost').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    lost: $("#lost").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

    

    $(document).ready(function() {
            $('#discharged_neg').on('change',function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    discharged_neg: $("#discharged_neg").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });


        $(document).ready(function() {
            $('#date_given_to_caregiver_second').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_given_to_caregiver_second: $("#date_given_to_caregiver_second").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });
    

     $(document).ready(function() {
            $('#date_result_recieved_second').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_result_recieved_second: $("#date_result_recieved_second").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        $(document).ready(function() {
            $('#result_second').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    result_second: $("#result_second").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        $(document).ready(function() {
            $('#infant_feeding_status_second').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    infant_feeding_status_second: $("#infant_feeding_status_second").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

        $(document).ready(function() {
            $('#age_at_first_dbs_second').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    age_at_first_dbs_second: $("#age_at_first_dbs_second").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });
    

    $(document).ready(function() {
         
            $('#date_dbs_collected_second').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_dbs_collected_second: $("#date_dbs_collected_second").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

    $(document).ready(function() {
         
            $('#date_given_to_caregiver_first').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_given_to_caregiver_first: $("#date_given_to_caregiver_first").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

     $(document).ready(function() {
         
            $('#date_result_recieved_first').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_result_recieved_first: $("#date_result_recieved_first").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

      $(document).ready(function() {
         
            $('#result_first').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    result_first: $("#result_first").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

      $(document).ready(function() {
         
            $('#infant_feeding_status_first').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    infant_feeding_status_first: $("#infant_feeding_status_first").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });
    

       $(document).ready(function() {
         
            $('#date_dbs_collected_first').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_dbs_collected_first: $("#date_dbs_collected_first").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });

         $(document).ready(function() {
         
            $('#age_at_first_dbs_first').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    age_at_first_dbs_first: $("#age_at_first_dbs_first").val(),
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
         
            $('#infants_arvforemtct').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    infants_arvforemtct: $("#infants_arvforemtct").val(),
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
         
            $('#mother_postnantal').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    mother_postnantal: $("#mother_postnantal").val(),
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
         
            $('#mother_postnantal').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    mother_postnantal: $("#mother_postnantal").val(),
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
         
            $('#mother_delivery').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    mother_delivery: $("#mother_delivery").val(),
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
         
            $('#mother_delivery').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    mother_delivery: $("#mother_delivery").val(),
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
         
            $('#mother_antinantal').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    mother_antinantal: $("#mother_antinantal").val(),
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
         
            $('#MotherNewlyEnrolledARTDuringBreastFeeding').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    MotherNewlyEnrolledARTDuringBreastFeeding: $("#MotherNewlyEnrolledARTDuringBreastFeeding").val(),
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
         
            $('#MotherNewlyTestedDuringBreastFeeding').on('change',function(e){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    MotherNewlyTestedDuringBreastFeeding: $("#MotherNewlyTestedDuringBreastFeeding").val(),
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
         
            $('#Mothers_PRE_ART_No').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    Mothers_PRE_ART_No: $("#Mothers_PRE_ART_No").val(),
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
         
            $('#Mothers_ANC_No').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    Mothers_ANC_No: $("#Mothers_ANC_No").val(),
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
         
            $('#firstname_of_mother').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    firstname_of_mother: $("#firstname_of_mother").val(),
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
         
            $('#surname_of_mother').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    surname_of_mother: $("#surname_of_mother").val(),
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
         
            $('#age_at_cotrim').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    age_at_cotrim: $("#age_at_cotrim").val(),
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
         
            $('#date_at_cotrim').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_at_cotrim: $("#date_at_cotrim").val(),
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
         
            $('#age_at_nvp').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    age_at_nvp: $("#age_at_nvp").val(),
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
         
            $('#date_at_nvp').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_at_nvp: $("#date_at_nvp").val(),
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
         
            $('#clinic_referred_from').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    clinic_referred_from: $("#clinic_referred_from").val(),
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
         
            $('#age').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
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
         
            $('#date_of_birth').blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_of_birth: $("#date_of_birth").val(),
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

            $("#sex").on('change',function(){
                $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    sex: $("#sex").val(),
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
            $("#date_of_registration").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    date_of_registration: $("#date_of_registration").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       }) ;


         $(document).ready(function() {
            $("#surname").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    surname: $("#surname").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       }) ;

          $(document).ready(function() {
            $("#firstname").blur(function(){
               $.ajax({
                type: "PUT",
                url: "{{ route('hiv_exposed_infant.update',$read_HivExposedInfant->id) }}",
                data: {
                    firstname: $("#firstname").val(),
                    _token: "{{Session::token()}}"},
                success: function (result) {
                    // alert(result);                     
                }
              })
            })            
       });



         
  </script>

@endpush