@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">FSG for {{ $read_LinkFacilitator->user->name}}</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('family_suport_group.create')}}">Add Family support group</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>	            
	                        <th>Name</th>
	                        <th>Number of members</th>                         
 	                        <th>Actions</th>
	                    </tr>
	                </thead>

	                <tbody> 
	                @foreach($read_LinkFacilitator->familysuportgrouplinkfacilitator as $fsp)    
	                @php 
	                	$fs_group=App\FamilySuportGroup::find($fsp->fs_group_id);
	                	$id=$fs_group->id."_".$fsp->lf_id;
	                 @endphp
	                <tr>
	                	<td>{{$fs_group->name}}</td>
	                	<td>
	                		<a href="{{route('family_suport_group.show',$fs_group->id)}}" class="btn btn-success waves-effect">
	                	 			{{App\FalimlySuportGroupRegister::all()->where('family_suport_group_id',$fs_group->id)->count()}}
	                	 		</a>
	                	</td>

	                	<td>
	                		{{ Form::open(array('route' => array('family_suport_group_lf.destroy',$id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}     
	       				  	  	 <button type="submit" title="Remove group from Link facilitator." class="btn btn-indigo waves-effect"> <i class="fa fa-trash m-r-5"></i> <span>Remove</span> </button>
                			{{ Form::close()}}
	                	</td>
	                </tr>    

	                @endforeach	 
	                     
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection
