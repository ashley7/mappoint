@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">HIV CARE PATIENTS LIST</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('hiv_care_art_card.create')}}">Add Patient</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Unique Number</th>
	                        <th>Name</th>	                     
	                        <th>Phone Number</th>
	                        <th>Phone Owner</th>
	                        <th>Address</th>
	                        <th>Action</th>	                 
	                    </tr>
	                </thead>

	                <tbody>

	                	@foreach($read_only_numbers as $only_numbers)
	                	<tr>
	                		<td>{{$only_numbers->id}}</td>
	                		<td>{{$only_numbers->PatientNumber}}</td>
	                		<td>{{$only_numbers->surName}} {{$only_numbers->firstName}}</td>	                
	                		<td>{{$only_numbers->phone_number}}</td>
	                		<td>{{$only_numbers->phone_owner_name}}</td>
	                		<td>
	                			<?php 
		                			try {


		                				?>
											{{$only_numbers->village->name}} [{{$only_numbers->village->parish->name}}->{{$only_numbers->village->parish->sub_county->name}}->{{$only_numbers->village->parish->sub_county->district->name}}]
		                				<?php
		                				
		                			} catch (\Exception $e) {
		                				
		                			} 
	                			?>
	                			
	                		</td>
	                		<td>
	                			       
	                			  <a class="btn btn-rounded btn-info" title="Display Person records" href="{{route('hiv_care_art_card.show',$only_numbers->id)}}">Details</a>      				   
	                			  <a  class="btn btn-rounded btn-dark" title="Load Person form file" href="{{route('hiv_care_art_card.edit',$only_numbers->id)}}">Form</a>      			 
	                		</td>
	                	</tr>
	               	@endforeach
	               </tbody>
	            </table>
            </div>
        </div> 
@endsection
