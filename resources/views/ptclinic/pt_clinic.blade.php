@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">PT Clinics</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('pt_clinic.create')}}">Add PT clinic</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>Name</th>
	                        <th>Description</th>
	                        <th>Number</th>                                     
	                        <th>District</th>
	                        <th>Actions</th>
	                    </tr>
	                </thead>


	                <tbody>

	                	@foreach($read_ptclinics as $ptclinics)
	                		<tr>
	                			<td>{{$ptclinics->name}}</td>
	                			<td>{{$ptclinics->description}}</td>
	                			<td>{{$ptclinics->number}}</td>
	                			<td>{{$ptclinics->district->name}}</td>
	                			<td>
	                				{{ Form::open(array('route' => array('pt_clinic.destroy',$ptclinics->id), 'method' => 'delete','onsubmit' => 'return confirm("You are about to delete a PT Clinic. This will remove all the data corresponding to it, Do you want to proceed?"); return false;')) }}

                				  	  <a title="Edit {{$ptclinics->name}}" class="btn btn-info waves-effect" href="{{route('pt_clinic.edit',$ptclinics->id)}}"><i class="zmdi zmdi-edit"></i><span>Edit</span>  </a>
                                    
                  				 	   <button type="submit" class="btn btn-danger waves-effect"> <i class="fa fa-trash m-r-5"></i> <span>Delete</span> </button>
                			     {{ Form::close()}}    
	                			</td>
	                		 
	                		</tr>
	                	@endforeach
	                     
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection
