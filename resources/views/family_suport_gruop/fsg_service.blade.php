@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Family Support gruops Service</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('fsg_service.create')}}">Add Family suport group service</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Name</th>
	                        <th>Short name</th>                         
 	                        <th>Actions</th>
	                    </tr>
	                </thead>


	                <tbody>
	                	@foreach($raed_FsgService as  $fsgService)
	                	 <tr>
	                	 	<td>{{$fsgService->id}}</td> 
	                	 	<td>{{$fsgService->name}}</td> 
	                	 	<td>{{$fsgService->short_name}}</td>
	                	 
	                	 	<td>
	                	 		{{ Form::open(array('route' => array('fsg_service.destroy',$fsgService->id), 'method' => 'delete','onsubmit' => 'return confirm("You are about to delete a FSG service. This will remove all the data corresponding to it, Do you want to proceed?"); return false;')) }}     
	                	 		 <a title="Edit {{$fsgService->name}}" class="btn btn-secondary waves-effect" href="{{route('fsg_service.edit',$fsgService->id)}}"><i class="zmdi zmdi-edit"></i><span>Edit</span>  </a>

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
