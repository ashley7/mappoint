@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">HIV EXPOSED INFANTS</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('hiv_exposed_infant.create')}}">Add Infant</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Unique Number</th>
	                        <th>Surname</th>	                     
	                        <th>Firstname</th>	                     
	                        <th>Date of registration</th>
	                        <th>Sex</th>
	                        <th>Date of Birth</th>                       
	                        <th>Action</th>	                 
	                    </tr>
	                </thead>

	                <tbody>
	                	@foreach($raed_HivExposedInfant as $infants)
	                	 <tr>
	                	 	<td>{{$infants->id}}</td>
	                	 	<td>{{$infants->infant_number}}</td>
	                	 	<td>{{$infants->surname}}</td>
	                	 	<td>{{$infants->firstname}}</td>
	                	 	<td>{{date('d-m-Y',$infants->date_of_registration)}}</td>
	                	 	<td>{{$infants->sex}}</td>
	                	 	<td>{{date('d-m-Y',$infants->date_of_birth)}}</td>
	                	 	<td>

	                	 	   
		                	 	<a href="{{route('hiv_exposed_infant.edit',$infants->id)}}" class="btn btn-warning">Form</a>
	                	 		<a href="{{route('hiv_exposed_infant.show',$infants->id)}}" class="btn btn-info">Details</a>
	          				  
                	 
	                	 		
	                	 	</td>
	                	 </tr>
	                	@endforeach
	                	 
	               </tbody>
	            </table>
            </div>
        </div> 
@endsection
