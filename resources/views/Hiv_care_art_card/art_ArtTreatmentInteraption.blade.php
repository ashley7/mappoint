@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">ART interruption</h2>
                </div>
              
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>Name</th>
	                        <th>Patient Number</th>	                                                         
	                        <th>Phone Number</th>
	                        <th>Circle</th>	  
	                        <th>Date</th>  
	                        <th>Reason</th>             
	                    </tr>
	                </thead>


	                <tbody>
	                	@foreach($art_ArtTreatmentInteraption as $art_TreatmentInteraption)
	                		<tr>
	                			<td>
	                				<a href="{{route('hiv_care_art_card.show',$art_TreatmentInteraption->hiv_care_art_card_id)}}">
	                					{{$art_TreatmentInteraption->surName}} {{$art_TreatmentInteraption->firstName}}
	                				</a>
	                			</td>
	                			<td>{{$art_TreatmentInteraption->PatientNumber}}</td>
	                			<td>{{$art_TreatmentInteraption->phonenumber}}</td>
	                			<td>{{$art_TreatmentInteraption->circle}}</td>
	                			<td>{{$art_TreatmentInteraption->date_accured}}</td>
	                			<td>{{$art_TreatmentInteraption->reason}}</td>

	                		</tr>

	                	@endforeach                 
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection
