@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">SMS Records</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('communication.create')}}">Compose SMS</a>
                 </div>
            </div>
	            <table id="datatable" class="table table-striped table-bordered">
	                <thead>
	                    <tr>
	                    	<th>#</th>
	                        <th>Name</th>
	                        <th>Number</th>            
	                        <th>Phone number</th>
	                        <th>Message</th>
	                        <th>Status</th>
	                        <th>Amount</th>
	                        <th>Dates</th>
	                    </tr>
	                </thead>


	                <tbody>
	                	@foreach($read_Communication as $sms_communication)
	                		<tr>
	                			<td>{{$sms_communication->id}}</td>
	                			<td>
	                				<?php
	                				try {

	                					?>

	                					{{$sms_communication->hivcareartcard->surName}} {{$sms_communication->hivcareartcard->firstName}}

	                					<?php
	                				 	
	                				 } catch (\Exception $e) {
	                				 	
	                				 } 

	                				 ?>
	                				
	                			</td>
	                			<td>
	                				<?php 

	                				try {

	                					?>

	                					{{$sms_communication->hivcareartcard->PatientNumber}}

	                					<?php
	                					
	                				} catch (\Exception $e) {
	                					
	                				}

	                				 ?>
	                				
	                			</td>
	                			<td>{{$sms_communication->phonenumber}}</td>
	                			<td>{{$sms_communication->message}}</td>
	                			<td>{{$sms_communication->status}}</td>
	                			<td>{{$sms_communication->amount}}</td>
	                			<td>{{$sms_communication->updated_at}}</td>
	                		</tr>
	                	@endforeach                	 
	                </tbody>
	            </table>
            </div>
        </div> 
@endsection