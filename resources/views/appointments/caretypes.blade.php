@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Care Types</h2>
                </div>
                <div class="pull-right">
                    <a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('care_types.create')}}">Add Care Types</a>
                 </div>
            </div>
                <table id="datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Description</th>            
                            <th>Action</th>                  
                        </tr>
                    </thead>


                    <tbody>

                        @foreach($read_CareType as $care_entry_point)
                            <tr>
                                <td>{{$care_entry_point->name}}</td>
                                <td>{{$care_entry_point->description}}</td>                          
                                <td>
                                    {{ Form::open(array('route' => array('care_types.destroy',$care_entry_point->id), 'method' => 'delete','onsubmit' => 'return confirm("Do you want to proceed?"); return false;')) }}

                                      <a title="Edit {{$care_entry_point->name}}" class="btn btn-info waves-effect" href="{{route('care_types.edit',$care_entry_point->id)}}"><i class="zmdi zmdi-edit"></i> <span>Edit</span>  </a>
                                    
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
