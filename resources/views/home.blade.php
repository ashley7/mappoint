@extends('layouts.master')

@section('content')
	<div class="row">
        <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
        	<a href="{{route('hiv_care_art_card.index')}}">
	            <div class="card-box tilebox-one">
	                <i class="ion-android-contacts pull-xs-right text-muted"></i>
	                <h6 class="text-muted text-uppercase m-b-20">Clients</h6>
	                <h2 class="m-b-20" data-plugin="counterup">{{$count_HivCareArtCard}}</h2>
	                <span class="label label-success">Male: {{$count_HivCareArtCard_male}}</span>   <span class="label label-info">Female: {{$count_HivCareArtCard-$count_HivCareArtCard_male}}</span>  
	            </div>
       		</a>
        </div>


         <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
          <a href="{{URL('/art_interuptions')}}">
              <div class="card-box tilebox-one">
                  <i class="ion-android-contacts pull-xs-right text-muted"></i>
                  <h6 class="text-muted text-uppercase m-b-20">ART interruption</h6>
                  <h2 class="m-b-20" data-plugin="counterup">{{$art_ArtTreatmentInteraption}}</h2>
                  <span class="label label-warning">Lost: {{$art_ArtTreatmentInteraption_lost}}</span>
                  <span class="label label-danger">Stoped: {{$art_ArtTreatmentInteraption_Stop}}</span>  
                  <span class="label label-info">Missed: {{$art_ArtTreatmentInteraption_missed}}</span>  
              </div>
          </a>
        </div>

        <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
        	<a href="{{route('link_facilitator.index')}}">
	            <div class="card-box tilebox-one">
	                <i class="ion-android-contact pull-xs-right text-muted"></i>
	                <h6 class="text-muted text-uppercase m-b-20">Linkage facilitators</h6>
	                <h2 class="m-b-20"><span data-plugin="counterup">{{$count_LinkFacilitator}}</span></h2>
	                <span class="label label-info"> Active </span> <span class="text-muted"></span>
	            </div>
	        </a>
        </div>

        <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
        	<a href="{{route('family_suport_group.index')}}">
	            <div class="card-box tilebox-one">
	                <i class="ion-android-social pull-xs-right text-muted"></i>
	                <h6 class="text-muted text-uppercase m-b-20">Family support groups</h6>
	                <h2 class="m-b-20"> <span data-plugin="counterup">{{$count_FamilySuportGroup}}</span></h2>
	                <span class="label label-pink">All</span> <span class="text-muted">FSG</span>
	            </div>
        	</a>
        </div>

        <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
          <a href="{{route('art_regimen.index')}}">
            <div class="card-box tilebox-one">
                <i class="ion-clock pull-xs-right text-muted"></i>
                <h6 class="text-muted text-uppercase m-b-20"> FSG Appointments</h6>
                <h2 class="m-b-20" data-plugin="counterup">{{$count_Appointment}}</h2>
                <span class="label label-success">All</span> <span class="text-muted">Confirmed</span>
            </div>
          </a>
        </div>

        <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
          <a href="{{route('hiv_exposed_infant.index')}}">
            <div class="card-box tilebox-one">
                <i class="ion-android-contacts pull-xs-right text-muted"></i>
                <h6 class="text-muted text-uppercase m-b-20">HIV Exposed infants</h6>
                <h2 class="m-b-20" data-plugin="counterup">{{$read_hivexposedinfant}}</h2>
                <span class="label label-success">Male: {{$read_hivexposedinfantmale}}</span> <span class="label label-danger">Female: {{$read_hivexposedinfantfemale}}</span>
            </div>
          </a>
        </div>

        <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
          <a href="/tb_clients">
            <div class="card-box tilebox-one">
                <i class="ion-contacts pull-xs-right text-muted"></i>
                <h6 class="text-muted text-uppercase m-b-20">ART Clients On TB treatment</h6>
                <h2 class="m-b-20" data-plugin="counterup">{{$tb_treatment}}</h2>
                 <span class="label label-success">Male: {{$tb_treatment_male}}</span> <span class="label label-danger">Female: {{$tb_treatment_female}}</span>
            </div>
          </a>
        </div>

        <div class="col-xs-12 col-md-3 col-lg-3 col-xl-3">
          <a href="/tb_clients">
            <div class="card-box tilebox-one">
                <i class="ion-contacts pull-xs-right text-muted"></i>

                <h6 class="text-muted text-uppercase m-b-20">SMS Cost</h6>
                <h2 class="m-b-20" data-plugin="counterup">{{number_format($money_string)}}</h2>
                 <span class="label label-success">UGX</span>
                </div>
          </a>
        </div>

    </div>
    <!-- end row -->


    <div class="row">
        <div class="col-xs-12 col-lg-12 col-xl-6">
            <div class="card-box">

                <h4 class="header-title m-t-0 m-b-20">CLIENTS in groups</h4>             
                <div id="morris-bar-stacked" style="height: 320px;"></div>

            </div>
        </div><!-- end col-->

        <div class="col-xs-12 col-lg-12 col-xl-6">
            <div class="card-box">

                <h3 class="header-title m-t-0 m-b-30">Pending Appointments</h3>

                <br>

                 
                    <table class="table">
                    	<thead>
                    		<tr>
                    			<th>#</th><th>Family support Group</th> <th>Date</th> <th>Time</th><th></th>
                    		</tr>
                    	</thead>
                    	<tbody>
                    		@foreach($read_Appointment as $appointments)                    			
                    		 	<tr>
                    		 		<td>
                    		 			{{$appointments->id}}	                    		 		
                    		 		</td>
			                		<td>
			                			<a style="color: #000;" title="Show Members" href="{{route('family_suport_group.show',$appointments->familysuportgroup->id)}}"> 
	                    		 			{{$appointments->familysuportgroup->name}}
	                    		 		</a>
			                		</td>
			                		<td>{{$appointments->date_to_return}}</td>
			                		<td>{{$appointments->time_to_return}}</td>
                          <td>
                            <a title="Munually push SMS Notifications to Members in {{$appointments->familysuportgroup->name}}" class="btn btn-info waves-effect" href="{{route('communication.show',$appointments->id)}}"><i class="ion-ios7-email-outline"></i> <span>Push SMS</span>  </a>  
                          </td>
			                	</tr>				            
                    		@endforeach

                    	</tbody>
                    </table>
                    <br>
                    {{ $read_Appointment->links() }}

                    @section('styles')
                     <style type="text/css">
                       .pagination li{
                        list-style-type: none;
                        display: inline;
                       }
                       </style>                    
                     @endsection                   

            </div>
        </div><!-- end col-->
	 </div>    

      <div class="row">
        <div class="col-xs-12 col-lg-12 col-xl-6">
            <div class="card-box">

                <h4 class="header-title m-t-0 m-b-20">CLIENT MUAC</h4>             
                <div id="muac_chat" style="height: 320px;"></div>

                <a href="/client_muac_plus" class="label label-danger">MUAC|+</a>
                <a href="/client_muac_minus" class="label label-warning">MUAC|-</a>

            </div>
        </div><!-- end col-->

         <div class="col-xs-12 col-lg-12 col-xl-6">
            <div class="card-box">

                <h4 class="header-title m-t-0 m-b-20">CLIENT CD4 Count</h4>             
                <div id="cd4count" style="height: 320px;"></div>

                <a href="/cd4_count_plus" class="label label-danger">Above 15%</a>
                <a href="/cd4_count_minus" class="label label-warning">Below 15%</a>

            </div>
        </div><!-- end col-->
      </div> 

      <?php
        $patients=$lost_missed=array();
        $female=$count_HivCareArtCard-$count_HivCareArtCard_male;
        $patients["Male"]=(int)$count_HivCareArtCard_male;
        $patients["Female"]=(int)$female;

        $lost_missed["LOST"]=(int)$art_ArtTreatmentInteraption_lost;
        $lost_missed["STOP"]=(int)$art_ArtTreatmentInteraption_Stop;
        $lost_missed["MISSED"]=(int)$art_ArtTreatmentInteraption_missed;
      ?>

@endsection

@push("scripts")
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


 <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {    
       var record={!! $cd4 !!};
       console.log(record);
       // Create our data table.
       var data = new google.visualization.DataTable();
        data.addColumn('string', 'Category');
        data.addColumn('number', 'No. of members');
       for(var k in record){
            var v = record[k];
           
             data.addRow([k,v]);
          console.log(v);
          }
        var options = {
          title: 'Client current CD4 Count',
          is3D: true,
          curveType: 'none',
        };        
        var chart = new google.visualization.PieChart(document.getElementById('cd4count'));
        chart.draw(data, options);        
      }
    </script>

 <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {    
       var record={!! $results !!};
       console.log(record);
       // Create our data table.
       var data = new google.visualization.DataTable();
        data.addColumn('string', 'FSG');
        data.addColumn('number', 'No. of members');
       for(var k in record){
            var v = record[k];
           
             data.addRow([k,v]);
          console.log(v);
          }
        var options = {
          title: 'Family Suport Group members',
          is3D: true,
          curveType: 'none',
        };        
        var chart = new google.visualization.PieChart(document.getElementById('morris-bar-stacked'));
        chart.draw(data, options);        
      }
    </script>



      <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {    
       var record={!! json_encode($lost_missed) !!};
       console.log(record);
       // Create our data table.
       var data = new google.visualization.DataTable();
        data.addColumn('string', 'Property');
        data.addColumn('number', 'Count');
       for(var k in record){
            var v = record[k];
           
             data.addRow([k,v]);
          console.log(v);
          }
        var options = {
          title: 'Client Lost missed Stopped count',
          is3D: true,
          curveType: 'none',
        };        
        var chart = new google.visualization.BarChart(document.getElementById('patients_lost_missed_stop_count'));
        chart.draw(data, options);        
      }
    </script>


     <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {    
       var record={!! $muac !!};
       console.log(record);
       // Create our data table.
       var data = new google.visualization.DataTable();
        data.addColumn('string', 'Category');
        data.addColumn('number', 'No. of members');
       for(var k in record){
            var v = record[k];
           
             data.addRow([k,v]);
          console.log(v);
          }
        var options = {
          title: 'Patients Current MUAC Analysis',
          is3D: true,
          curveType: 'none',
        };        
        var chart = new google.visualization.PieChart(document.getElementById('muac_chat'));
        chart.draw(data, options);        
      }
    </script>


    <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/5603ba0361b422211fc354d0/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
@endpush
