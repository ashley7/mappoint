@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Addresses</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('district.create')}}">Add Address</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
                            <th>District</th>                          
                            <th>Division/Sub-County</th>                          
                            <th>Parish/Ward</th>                          
	                        <th>Village/Zone/Cell</th>	                       
	                        <th>Number of PT Clinics</th>                                     
	                        <th>Actions</th>
	                    </tr>
	                </thead>


	                <tbody>

                	@foreach($read_Village as $village)                     
                		<tr>
                			<td>{{$village->parish->sub_county->district->name}}</td>
                            <td>{{$village->parish->sub_county->name}}</td>
                            <td>{{$village->parish->name}}</td>
                            <td>{{$village->name}}</td>
                			 
                			<td>{{App\PtClinic::all()->where('district_id',$village->parish->sub_county->district->id)->count()}}</td>
                			<td>

               				  
                				<a title="Edit {{$village->parish->sub_county->district->name}}" class="btn btn-info waves-effect" href="{{route('district.edit',$village->parish->sub_county->district->id)}}"><i class="zmdi zmdi-edit"></i><span>Edit</span>  </a>
                                    
                  				              		 
                			
                			</td>
                		</tr>

                	@endforeach
	                     
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection
