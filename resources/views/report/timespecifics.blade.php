@extends('layouts.master')
@section('content')
  <div class="card-box">                 
    <center> 
     <h3>A REPORT ABOUT THE CURRENT HEALTH SITUATION OF HIV CLIENTS IN KASUBI HEALTH CENTRE III, BUIKWE DISTRICT FOR THE MONTH OF {{$month}} YEAR {{$year}}</h3>
     <img src="{{asset('images/wv_logo.png')}}" width="50px">
    </center>


    <div class="row">
      <h1>ART CLIENTS</h1>      
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