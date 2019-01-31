@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Link Facilitators</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('link_facilitator.create')}}">Add Link Facilitator</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Name</th>
	                        <th>Phone Number</th>                                    
	                        <th>Email</th>
	                        <th>Address</th>
	                        <th>Groups</th>
	                        <th>Actions</th>
	                    </tr>
	                </thead>

	                <tbody>
	                	@foreach($read_LinkFacilitator as  $LinkFacilitator)
	                	 <tr>
	                	 	<td>{{$LinkFacilitator->id}}</td>
	                	 	<td>{{$LinkFacilitator->user->name}}</td> 
	                	 	<td>{{$LinkFacilitator->user->phone_number}}</td> 
	                	 	<td>{{$LinkFacilitator->user->email}}</td>
	                	 	<td>
	                	 		<?php
	                	 		try {
	                	 		  $vilage=App\Village::find($LinkFacilitator->user->address); 
	                	 		  echo $vilage->name."->".$vilage->parish->name."->".$vilage->parish->sub_county->name."->".$vilage->parish->sub_county->district->name;
	                	 		} catch (\Exception $e) {
	                	 			echo $LinkFacilitator->user->address;
	                	 		}
	                	 		  



	                	 		 ?>
	                	 	</td>
	                	 	<td>
	                	 		<a href="{{route('family_suport_group_lf.show',$LinkFacilitator->id)}}" class="btn btn-success waves-effect">
	                	 			{{App\FamilySuportGroupLinkFacilitator::all()->where('lf_id',$LinkFacilitator->id)->count()}}
	                	 		</a>
	                	 	</td>

	                	 	<td>
	                	             				  	  
                         
	                	 	</td>            	 	
	                	 </tr>

	                	@endforeach

	                	 
	                     
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection
