@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Add Link Facilitators to family support group</h2>
                </div>
                <div class="pull-right">
                	<!-- <a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('family_suport_group.index')}}">View family suport group</a> -->
                 </div>
            </div>

            <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">
                    <form method="POST" action="{{route('family_suport_group_lf.store')}}">
                        {{ csrf_field() }}

                        <label>Choose a Link facilitator</label>
                        <select class="form-control select2" name="linkfacilitator">
                            @foreach($read_LinkFacilitator as $linkfacilitator)
                              <option value="{{$linkfacilitator->id}}">{{$linkfacilitator->user->name}}</option>
                            @endforeach
                        </select>
                        <br>
                        <label>Choose a Family suport group</label>
                        <select class="form-control" id="my_multi_select3" multiple="multiple" name="fsg[]">
                            @foreach($read_FamilySuportGroup as $familysuportgroup)
                              <option value="{{$familysuportgroup->id}}">{{$familysuportgroup->name}}</option>
                            @endforeach
                        </select>               
                                   
                        <br><br>

                        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>
                    </form>
             </div>
           </div>
        </div>
    </div> 
@endsection