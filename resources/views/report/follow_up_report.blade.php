@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Get follow up report</h2>
                </div>              
            </div>

            <form method="POST" action="{{URL('/post_follow_up_report')}}">
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
                     for ($i=2018; $i <=(date("Y")) ; $i++) { 
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
        </div> 
@endsection