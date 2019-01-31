@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Attendance list</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('attandance.create')}}">Record attendance</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
                            <th>Group Name</th>                          
                            <th>Appointment Date</th>                          
                            <th>Members present</th>                          
	                        <th>Members absent</th>	 
                            <th>Link facilitator</th>                                                     
                            <th>Phone</th>                                               
	                   </tr>
	                </thead>


	                <tbody>

                         @foreach($read_Appointment as $appointments)
                        <tr>
                            <td><a title="Show Members" href="{{route('family_suport_group.show',$appointments->familysuportgroup->id)}}"> {{$appointments->familysuportgroup->name}}</a></td>
                            <td>{{$appointments->date_to_return}} : {{$appointments->time_to_return}}</td>                          
                              
                            <td><a class="btn btn-success btn-rounded waves-effect waves-light" href="/present_members/{{$appointments->id}}">{{App\Attendance::where('appointment_id',$appointments->id)->where('status',1)->count()}}</a></td>

                            <td><a class="btn btn-danger btn-rounded waves-effect waves-light" href="/absent_members/{{$appointments->id}}"> {{App\Attendance::where('appointment_id',$appointments->id)->where('status',0)->count()}}</a></td>
                            <?php 
                                $link_facilitator=App\FamilySuportGroupLinkFacilitator::select('lf_id')->where('fs_group_id',$appointments->familysuportgroup->id)->get();?>
                            <td>
                                <?php 
                                  foreach ($link_facilitator as $fsgf_value) {
                                    $linkfacilitator=App\LinkFacilitator::find($fsgf_value->lf_id);
                                    echo $linkfacilitator->user->name;
                                 }

                                 ?>                                
                            </td>
                            <td>
                                 <?php 
                                  foreach ($link_facilitator as $fsgf_value) {
                                    $linkfacilitator=App\LinkFacilitator::find($fsgf_value->lf_id);
                                    echo $linkfacilitator->user->phone_number;
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
