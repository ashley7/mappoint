@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">District Clinician</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('district_clinician.create')}}">Add District Clinician</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>Name</th>
	                        <th>Description</th>	                                                         
	                        <th>District</th>
	                        <th></th>	                 
	                    </tr>
	                </thead>


	                <tbody>

	                	@foreach($read_district_clinician as $district_clinician)
	                		<tr>
	                			<td>{{$district_clinician->name}}</td>
	                			<td>{{$district_clinician->description}}</td>	                		 
	                			<td>{{$district_clinician->district->name}}</td>
	                			<td>
	                		 

                				  	  <a title="Edit {{$district_clinician->name}}" class="btn btn-secondary waves-effect" href="{{route('district_clinician.edit',$district_clinician->id)}}"><i class="zmdi zmdi-edit"></i><span>Edit</span>  </a>
                                    
                  				 	   
                			  
	                			</td>
	                		 
	                		</tr>
	                	@endforeach
	                     
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection
