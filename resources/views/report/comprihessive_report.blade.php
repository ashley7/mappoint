@extends('layouts.master')
@section('content')
  <div class="card-box">                 
    <center> 
     <h3>A REPORT ABOUT THE CURRENT HEALTH SITUATION OF HIV CLIENTS IN KASUBI HEALTH CENTRE III, BUIKWE DISTRICT </h3>
     <img src="{{asset('images/wv_logo.png')}}" width="50px">
    </center>


    <div class="row">
      <h3>ART CLIENTS</h3>      
    </div>

    <div class="row">
      <h4>Number of clients</h4>
      <table class="table table-striped table-bordered">
        <tr>
          <td>Male</td> <td>{{$count_HivCareArtCard_male}}</td>
        </tr>
        <tr>
          <td>Female</td> <td>{{$count_HivCareArtCard - $count_HivCareArtCard_male}}</td>
        </tr>
        <tr class="table-warning">
          <td>Total</td> <td>{{$count_HivCareArtCard}}</td>
        </tr>
      </table>
    </div>

    <h4>ART CLIENTS RETAINTION</h4>

    <div class="row">
      <?php
        $count_6 = $count_12 = $count_24 = $count_36 = $count_48 = $count_above = 0;
       ?>
      @foreach($raed_HivCareArtCard as $client)
      <?php
      $numberofdays = 0;
      try {
        $new_date=explode("-", $client->date_enrolled_in_HIV);//m-d-y
        $date=$new_date[2]."-".$new_date[0]."-".$new_date[1];
        $return_date = date_create($date);
        $today = date("Y-m-d");
        $today = date_create($today);
        $days_left = date_diff($today,$return_date);
        $numberofdays = ($days_left->format("%R%a")/30)/-1;
      } catch (\Exception $e) {}
        
        if ($numberofdays <=6) {
          $count_6++;
        }elseif ($numberofdays >6 && $numberofdays <=12) {
          $count_12++;
        }elseif ($numberofdays >12 && $numberofdays <=24) {
          $count_24++;
        }elseif ($numberofdays >24 && $numberofdays <=36) {
          $count_36++;
        }elseif ($numberofdays >36 && $numberofdays <=48) {
          $count_48++;
        }else{
          $count_above++;
        }
      ?>
      @endforeach

      <table class="table">
        <tbody>
          <tr>
            <td>Up to 6 months</td> <td>{{$count_6}}</td>
          </tr>
          
          <tr><td>Up to 12 months</td> <td>{{$count_12}}</td></tr>
          <tr><td>Up to 24 months</td> <td>{{$count_24}}</td></tr>
          <tr><td>Up to 36 months</td> <td>{{$count_36}}</td></tr>
          <tr><td>Up to 48 months</td> <td>{{$count_48}}</td></tr>
          <tr><td>Over 48 months</td> <td>{{$count_above}}</td></tr>
        </tbody>
      </table>
    </div>

  <div class="row">
      <p>Number of clients that have been transfered: {{$place_tranfred_to}}</p>

      @if(count($raed_hivcareArtcard_tranfred) > 0)

      <table class="table table-striped table-bordered">
        <th>Unique Number</th> <th>Name</th> <th>Phone Number</th> <th>Date transfered</th> <th>Place Tranfered to</th>
        @foreach($raed_hivcareArtcard_tranfred as $only_numbers)
          <tr>
            <td>{{$only_numbers->PatientNumber}}</td>
            <td>{{$only_numbers->surName}} {{$only_numbers->firstName}}</td>                  
            <td>{{$only_numbers->phone_number}}</td>
            <td>{{$only_numbers->date_transfred_out}}</td>
            <td>{{$only_numbers->place_tranfred_to}}</td>
          </tr>
        @endforeach        
      </table>
      @endif
  </div>


  <div class="row">
    <h4></h4>
    <table class="table table-striped table-bordered">
      <tr>
        <td>Number of clients Lactating</td> <td>{{$lact}}</td>
      </tr>
      <tr>
        <td>Number of clients Not Lactating</td> <td>{{$not_lact}}</td>
      </tr>
      </table>
  </div>

  <div class="row">
    <h4>Client Marital status</h4>
    <table class="table table-striped table-bordered">
      <tr>
        <td>Child</td> <td>{{$child}}</td>
      </tr>
      <tr>
        <td>Never Married</td> <td>{{$never_married}}</td>
      </tr>

      <tr>
        <td>Married</td> <td>{{$married}}</td>
      </tr>

      <tr>
        <td>Single</td> <td>{{$single}}</td>
      </tr>

      <tr>
        <td>Living Together</td> <td>{{$livingtogether}}</td>
      </tr>

      <tr>
        <td>Divorced</td> <td>{{$bivorced}}</td>
      </tr>

      <tr>
        <td>Separated</td> <td>{{$separated}}</td>
      </tr>

      <tr>
        <td>Widowed</td> <td>{{$widowed}}</td>
      </tr>
      </table>
  </div>


   <div class="row">
    <h4>Prior ART</h4>
    <table class="table table-striped table-bordered">
      <tr>
        <td>Number of clients Transfered in with records</td> <td>{{$transfer_in}}</td>
      </tr>
      <tr>
        <td>Number of clients on PMTCT only</td> <td>{{$pmtct}}</td>
      </tr>

      <tr>
        <td>Number of clients with Earlier ARV, Not Transfer in</td> <td>{{$earlier_arv}}</td>
      </tr>

      <tr>
        <td>Number of clients on Prior ART</td> <td>{{$prior_art}}</td>
      </tr>

      <tr>
        <td>Number of clients on PEP</td> <td>{{$pep}}</td>
      </tr>

      <tr>
        <td>Number of clients with HEP-B</td> <td>{{$hep_b}}</td>
      </tr>

      <tr>
        <td>Number of clients with None</td> <td>{{$none}}</td>
      </tr> 
      </table>
  </div>


  <div class="row">    
    @if(count($raed_hivcareArtcard_lact) > 0)
    <h3>clients Lactating</h3>
      <table class="table table-striped table-bordered">
        <th>Unique Number</th> <th>Name</th> <th>Phone Number</th> <th>Address</th>
        @foreach($raed_hivcareArtcard_lact as $only_numbers)
          <tr>
   
            <td>{{$only_numbers->PatientNumber}}</td>
            <td>{{$only_numbers->surName}} {{$only_numbers->firstName}}</td>                  
            <td>{{$only_numbers->phone_number}}</td>

            <td>
              <?php 
                try {?>
                    {{$only_numbers->village->name}} [{{$only_numbers->village->parish->name}}->{{$only_numbers->village->parish->sub_county->name}}->{{$only_numbers->village->parish->sub_county->district->name}}]
                  <?php                  
                } catch (\Exception $e) {
                  
                } 
              ?>
              
            </td>
          
          </tr>
        @endforeach        
      </table>
  @endif
</div>

<div class="row">
 
  @if(count($returns7)>0)
   <h3>Client return after 7 days</h3>
    <table class="table table-striped table-bordered">
        <th>Unique Number</th> <th>Name</th> <th>Phone Number</th> <th>Gender</th> <th>Phone Number</th> <th>Address</th>
        @foreach($returns7 as $client_return)
        <tr>
          <td>{{$client_return->PatientNumber}}</td>
          <td>{{$client_return->surName}}  {{$client_return->firstName}}</td>
          <td>{{$client_return->phone_number}}</td>
          <td>{{$client_return->sex}}</td>
          <td>{{$client_return->phone_number}}</td>        
          <td>{{$client_return->address}}</td>
        </tr>
        @endforeach
    </table>
  @endif
</div>

<div class="row">
  
  @if(count($returns14)>0)
  <h3>Client return between 8 to 14 days</h3>
    <table class="table table-striped table-bordered">
        <th>Unique Number</th> <th>Name</th> <th>Phone Number</th> <th>Gender</th> <th>Phone Number</th> <th>Address</th>
        @foreach($returns14 as $client_return)
        <tr>
          <td>{{$client_return->PatientNumber}}</td>
          <td>{{$client_return->surName}}  {{$client_return->firstName}}</td>
          <td>{{$client_return->phone_number}}</td>
          <td>{{$client_return->sex}}</td>
          <td>{{$client_return->phone_number}}</td>           
          <td>{{$client_return->address}}</td>
        </tr>
        @endforeach
    </table>
  @endif
</div>


<div class="row">
 
  @if(count($returns21)>0)
   <h3>Client return after 21 days</h3>
    <table class="table table-striped table-bordered">
        <th>Unique Number</th>
        <th>Name</th>
        <th>Phone Number</th>
        <th>Gender</th>
        <th>Phone Number</th>
        <th>Address</th>
        @foreach($returns21 as $client_return)
         <tr>
          <td>{{$client_return->PatientNumber}}</td>
          <td>{{$client_return->surName}}  {{$client_return->firstName}}</td>
          <td>{{$client_return->phone_number}}</td>
          <td>{{$client_return->sex}}</td>
          <td>{{$client_return->phone_number}}</td>
          <td>{{$client_return->address}}</td>
        </tr>
        @endforeach
    </table>
  @endif
</div>

  <div class="row">
    <h3>Number of clients that have died: {{$died}}</h3>
    @if(count($raed_hivcareArtcard_died) > 0)
      <table class="table table-striped table-bordered">
        <th>Unique Number</th> <th>Name</th> <th>Phone Number</th> <th>Address</th> <th>Date died</th>
        @foreach($raed_hivcareArtcard_died as $only_numbers)
          <tr>
   
            <td>{{$only_numbers->PatientNumber}}</td>
            <td>{{$only_numbers->surName}} {{$only_numbers->firstName}}</td>                  
            <td>{{$only_numbers->phone_number}}</td>

            <td>
              <?php 
                try {?>
                    {{$only_numbers->village->name}} [{{$only_numbers->village->parish->name}}->{{$only_numbers->village->parish->sub_county->name}}->{{$only_numbers->village->parish->sub_county->district->name}}]
                  <?php
                  
                } catch (\Exception $e) {
                  
                } 
              ?>
              
            </td>
              
            <td>
              {{$only_numbers->date_died}}
            </td>
          </tr>
        @endforeach        
      </table>
  @endif
</div>

    <div class="row">
     <h4>Client Distribution across villages</h4>  
       <table class="table table-striped table-bordered">
        @foreach($village as $villages)
        <tr>
          <td>{{$villages->name}}</td> 
          <td>{{App\HivCareArtCard::all()->where('village_id',$villages->id)->count()}}</td>
        </tr>
        @endforeach        
      </table>
    </div>

    <div class="row">
      <h4>Clients TB Status</h4>
      <table class="table table-striped table-bordered">
        <tr>
          <td>Number of Clients Currently on TB Treatment</td> <td>{{$currently_on_tb_treatment}}</td>
        </tr>
        <tr>
          <td>Number of clients with No signs or Symptoms of TB</td> <td>{{$no_signs}}</td>
        </tr>
        <tr>
          <td>Suspected clients </td> <td>{{$status}}</td>
        </tr>
        <tr>
          <td>Number of clients Diagnosed with TB Disease</td> <td>{{$diagnosed}}</td>
        </tr>
      </table>
    </div>

    <div class="row">
      @if(count($tb_treatment_list) > 0)
      <table class="table table-striped table-bordered">
        <th>Unique Number</th> <th>Name</th> <th>Phone Number</th> <th>Address</th> <th>Date died</th>
        @foreach($tb_treatment_list as $only_numbers)
          <tr>
   
            <td>{{$only_numbers->PatientNumber}}</td>
            <td>{{$only_numbers->surName}} {{$only_numbers->firstName}}</td>                  
            <td>{{$only_numbers->phone_number}}</td>

            <td>
              <?php 
                try {?>
                    {{$only_numbers->village->name}} [{{$only_numbers->village->parish->name}}->{{$only_numbers->village->parish->sub_county->name}}->{{$only_numbers->village->parish->sub_county->district->name}}]
                  <?php
                  
                } catch (\Exception $e) {
                  
                } 
              ?>
              
            </td>
              
            <td>
              {{$only_numbers->date_died}}
            </td>
          </tr>
        @endforeach        
      </table>
  @endif
    </div>


    <div class="row">
      <h4>ART Interruption</h4>
       <table class="table table-striped table-bordered">
        <tr class="table-danger">
          <td>Number of Lost clients</td> <td>{{$art_ArtTreatmentInteraption_lost}}</td>
        </tr>
        <tr class="table-warning">
          <td>Number of clients that Stopped</td> <td>{{$art_ArtTreatmentInteraption_Stop}}</td>
        </tr>      
      </table>
    </div>

    <div class="row">
      <h4>Number of Linkage facilitators: {{$count_LinkFacilitator}}</h4>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Phone Number</th>                                    
                    <th>Address</th>
                    <th>Number of clients</th>
                 </tr>
            </thead>

            <tbody>
              @foreach($read_LinkFacilitator as  $LinkFacilitator)
               <tr>
                <td>{{$LinkFacilitator->id}}</td>
                <td>{{$LinkFacilitator->user->name}}</td> 
                <td>{{$LinkFacilitator->user->phone_number}}</td> 
                 <td>
                  @php
                    try {
                      $vilage=App\Village::find($LinkFacilitator->user->address); 
                      echo $vilage->name."->".$vilage->parish->name."->".$vilage->parish->sub_county->name."->".$vilage->parish->sub_county->district->name;
                    } catch (\Exception $e) {
                      echo $LinkFacilitator->user->address;
                    }
                 @endphp
                </td>
                <td>
                  @php
                     $groups = App\FamilySuportGroupLinkFacilitator::all()->where('lf_id',$LinkFacilitator->id);

                     $total_members = 0;

                     foreach ($groups as $fsg_value) {

                      $total_members = $total_members + App\FalimlySuportGroupRegister::all()->where('family_suport_group_id',$fsg_value->fs_group_id)->count();
                      
                     }
                   @endphp
                   {{$total_members}}
                </td>
               
               </tr>

              @endforeach              
                 
            </tbody>
        </table>
      </div>


      <div class="row">
        <h4>Family support groups</h4>
        <table class="table table-striped table-bordered">
          <thead>
              <tr>
                  <th>#</th>
                  <th>Name</th>                                        
                  <th>Number of members</th>                  
                 
              </tr>
          </thead>


          <tbody>
            @foreach($read_FamilySuportGroup as  $familysuportgroup)
             <tr>
              <td>{{$familysuportgroup->id}}</td> 
              <td>{{$familysuportgroup->name}} Family Support Group</td>             
              <td>
                {{App\FalimlySuportGroupRegister::all()->where('family_suport_group_id',$familysuportgroup->id)->count()}}</td>                                 
             </tr>
            @endforeach    
          </tbody>
        </table>
      </div>

      <div class="row">
        <h4>ARV adherence</h4>
        <table class="table table-striped table-bordered">
          <tr>
            <td>Number of Clients with good ARV adherence</td> <td>{{$good}}</td>
          </tr>
          <tr>
            <td>Number of clients with fair ARV adherence</td> <td>{{$fair}}</td>
          </tr>
          <tr>
            <td>Number of clients with poor ARV adherence</td> <td>{{$poor}}</td>
          </tr>
      </table>
    </div>

    <div class="row">
      @if(count($raed_hivcareArtcard_bad) > 0)

      <h4>Clients with Poor ARV adherence</h4>
      <table class="table table-striped table-bordered">
        <th>Unique Number</th> <th>Name</th> <th>Phone Number</th> <th>Address</th>

        @foreach($raed_hivcareArtcard_bad as $only_numbers)
          <tr>
   
            <td>{{$only_numbers->PatientNumber}}</td>
            <td>{{$only_numbers->surName}} {{$only_numbers->firstName}}</td>                  
            <td>{{$only_numbers->phone_number}}</td>

            <td>
              <?php 
                try {?>
                    {{$only_numbers->village->name}} [{{$only_numbers->village->parish->name}}->{{$only_numbers->village->parish->sub_county->name}}->{{$only_numbers->village->parish->sub_county->district->name}}]
                  <?php
                  
                } catch (\Exception $e) {
                  
                } 
              ?>
              
            </td>
          </tr>
        @endforeach
        
      </table>
      @endif
    </div>

    <div class="row">
      <h1>HIV EXPOSED INFANTS</h1>      
    </div>

    <div class="row">
      <h4>Number of infants</h4>
      <table class="table table-striped table-bordered">
        <tr>
          <td>Male</td> <td>{{$read_hivexposedinfantmale}}</td>
        </tr>
        <tr>
          <td>Female</td> <td>{{$read_hivexposedinfantfemale}}</td>
        </tr>

        <tr>
          <td>Gender not recorded</td> <td>{{$raed_HivExposedInfant-($read_hivexposedinfantmale+$read_hivexposedinfantfemale)}}</td>
        </tr>

        <tr class="table-warning">
          <td>Total</td> <td>{{$raed_HivExposedInfant}}</td>
        </tr>
      </table>
    </div>

     <div class="row">
      <h6>Number of infants Referred to ART Clinic: {{$referred_to_art_clinicyes}}</h6>
    </div>
    <div class="row">
      <h6>Number of infants Not Referred to ART Clinic: {{$referred_to_art_clinicno}}</h6>
    </div>

    <div class="row">
      <h4>List of infants refered to ART Clinic</h4>
      <table class="table table-striped table-bordered">
          <thead>
              <tr>
                <th>#</th>
                <th>Unique Number</th>
                <th>Surname</th>                       
                <th>Firstname</th>                       
                <th>Date of registration</th>
                <th>Sex</th>
                <th>Date of Birth</th>                       
              </tr>
          </thead>

          <tbody>
             @foreach($raedhivexposedinfant_yes as $infants)
             <tr>
              <td>{{$infants->id}}</td>
              <td>{{$infants->infant_number}}</td>
              <td>{{$infants->surname}}</td>
              <td>{{$infants->firstname}}</td>
              <td>{{date('d-m-Y',$infants->date_of_registration)}}</td>
              <td>{{$infants->sex}}</td>
              <td>{{date('d-m-Y',$infants->date_of_birth)}}</td>                      
             </tr>
            @endforeach                     
         </tbody>
      </table>
    </div>

    <div class="row">
      <h4>Infant Feeding Status (Testing information)</h4>
      <table class="table table-striped table-bordered">
        <tr>
          <td>EBF—Exclusive Breastfeeding</td> <td>{{$EBF_Exclusive}}</td>
        </tr>

        <tr>
          <td>RF—Replacement Feeding (never Breastfed)</td> <td>{{$RF_Replacement}}</td>
        </tr>

        <tr>
          <td>MF--Mixed Feeding (< 6 months)</td> <td>{{$MF_Mixed}}</td>
        </tr>

        <tr>
          <td>CF—Complementary Feeding (> 6 months)</td> <td>{{$CF_Complementary}}</td>
        </tr>

         <tr>
          <td>W—Wean from Breastfeeding</td> <td>{{$W_Wean}}</td>
        </tr>

         <tr>
          <td>NLB—No Longer Breastfeeding</td> <td>{{$NLB_No}}</td>
        </tr>
      </table>
    </div>

    <div class="row">
      <h4>Result (Testing information)</h4>
      <table class="table table-striped table-bordered">
        <tr>
          <td>Positive</td> <td>{{$result_first_positive}}</td>
        </tr>

        <tr>
          <td>Negative</td> <td>{{$result_first_negative}}</td>
        </tr>
      </table>
    </div>



  </div>
</div>
@endsection

@section('styles')
  <style type="text/css">
    .card-box{
      border-style: solid;
      border-color: orange;
      border-width: 5px 5px 5px 5px;
      border-radius: 7px;
   }
  </style>
@endsection