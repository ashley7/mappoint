@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create Link Facilitators</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('link_facilitator.index')}}">View Link Facilitators</a>
                 </div>
            </div>

            <form method="POST" action="{{route('link_facilitator.store')}}">
                {{ csrf_field() }}
                <div class="row">
                    <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">
                        <label>Name</label>
                        <input type="text" name="name" class="form-control">

                        <label>Email</label>
                        <input type="email" class="form-control" name="email">

                        <label>Phone Number</label>
                        <input type="text" name="phonenumber" placeholder="+256787444081" class="form-control">  

                        <fieldset class="form-group">  
                        <label>Address</label>
                            <select class="form-control select2" name="village_id">
                                @foreach($read_village as $village)      
                                    <option value="{{$village->id}}">{{$village->name}}</option>
                                @endforeach
                            </select>
                        </fieldset>         
                        <br><br>

                        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save Link Facilitator</button>
                    </form>
                </div>
            </div>

            </div>
        </div> 
@endsection