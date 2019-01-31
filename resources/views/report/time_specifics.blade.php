@extends('layouts.master')
@section('content')
  <div class="card-box">
  	<h3>Generating time Lag report</h3>  
	   <form method="POST" action="{{URL('/time_specifics')}}">
       {{ csrf_field() }}
       <label>Choose Month</label>
       <select class="form-control" name="month">
           <option></option>
           <?php
	           for ($i=1; $i <=12 ; $i++) { 
	              ?>
	                <option value="{{$i}}">{{$i}}</option>
	              <?php
	          }
            ?>
       </select>
       <br>
       <label>Year</label>
       <select class="form-control" name="year">
        <option></option>
           <?php 
             for ($i=2018; $i <= (int)(date("Y")) ; $i++) { 
                 ?>
                <option value="{{$i}}">{{$i}}</option>
                <?php
             }
            ?>
       </select>
        <br><br>
        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Generate</button> 
    </form>
  </div>
@endsection
