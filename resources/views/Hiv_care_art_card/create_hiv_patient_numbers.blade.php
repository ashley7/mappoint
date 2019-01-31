@extends('layouts.master')

@section('content')
    <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create Patient Numbers</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('hiv_care_art_card.index')}}">View Patient List</a>
                 </div>
            </div>

            <div class="row">
            	<div class="col-sm-6 col-xs-12 col-md-6">
            		<form method="POST" action="{{route('hiv_care_art_card.store')}}">
                         {{ csrf_field() }}
            			<label>Enter the Unique Number of the patient</label>
            			<input type="text" id="unique_number" name="unique_number" class="form-control"><br>

            			<button type="submit" class="btn btn-dark waves-effect waves-light">Save</button>
            		</form>            		
            	</div>            	
            </div>
        </div>
    </div> 
@endsection
