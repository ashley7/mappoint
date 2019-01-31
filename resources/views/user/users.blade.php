@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Users</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('person.create')}}">Add User</a>
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
	                        <th>Role</th>
	                         
	                    </tr>
	                </thead>

	                <tbody>
	                	@foreach($users as $user)
	                		<tr>
	                			<td>{{$user->id}}</td>
	                			<td>{{$user->name}}</td>
	                			<td>{{$user->phone_number}}</td>
	                			<td>{{$user->email}}</td>
	                			<td>
	                				<?php try {
	                					$village=App\Village::find($user->address);

	                					echo $village->name." -> ".$village->parish->name." -> ".$village->parish->sub_county->name." -> ".$village->parish->sub_county->district->name;
	                				} catch (\Exception $e) {
	                					echo $user->address;
	                				} ?>
	                			 </td>

	                			 <td>
	                			 	<?php
	                			 	  $user_roles=DB::table('role_user')->select('role_id')->where('user_id',$user->id)->get();

	                			 	  foreach ($user_roles as $role_value) {
	                			 	  	# code...
	                			 	  	echo App\Role::find($role_value->role_id)->display_name.", ";
	                			 	  }

	                			 	 ?>

	                			 </td>
	                		</tr>
	                	@endforeach               
			        </tbody>
	            </table>
            </div>
        </div> 
@endsection
