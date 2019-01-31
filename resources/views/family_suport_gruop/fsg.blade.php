@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Family Support gruops</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('family_suport_group.create')}}">Add Family support group</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                        <th>#</th>
	                        <th>Name</th>
	                        <th>Description</th>                         
	                        <th>Number of members</th>	                  
	                        <th>Actions</th>
	                    </tr>
	                </thead>


	                <tbody>
	                	@foreach($read_FamilySuportGroup as  $familysuportgroup)
	                	 <tr>
	                	 	<td>{{$familysuportgroup->id}}</td> 
	                	 	<td>{{$familysuportgroup->name}}</td> 
	                	 	<td>{{$familysuportgroup->description}}</td>
	                	 	<td>
	                	 		<a href="{{route('family_suport_group.show',$familysuportgroup->id)}}" class="btn btn-success waves-effect">
	                	 			{{App\FalimlySuportGroupRegister::all()->where('family_suport_group_id',$familysuportgroup->id)->count()}}
	                	 		</a>
	                	 	</td>
	                	 	<td>
	                	 	    
	                	 		 <a title="Edit {{$familysuportgroup->name}}" class="btn btn-info waves-effect" href="{{route('family_suport_group.edit',$familysuportgroup->id)}}"><i class="zmdi zmdi-edit"></i> <span>Edit</span>  </a>

          				  	    
	                	 	</td>            	 	
	                	 </tr>

	                	@endforeach

	                	 
	                     
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection
