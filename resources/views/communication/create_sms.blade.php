@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Compose Bulk Custom SMS</h2>
                </div>
                <div class="pull-right">
                  </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-5 col-lg-5 col-xs-12">

                        <form method="POST" action="{{route('communication.store')}}">
                            {{ csrf_field() }}

                            <label>Choose Patients</label>
                           <select name="patients[]" class="multi-select" multiple="" id="my_multi_select3" >
                                 @foreach($read_only_numbers as $patients)
                                   <option value="{{$patients->id}}">{{$patients->PatientNumber}}: {{$patients->surName}} {{$patients->firstName}} ({{$patients->phone_number}})</option>
                                 @endforeach
                            </select>

                            <label>SMS:</label>
                            <textarea id="textarea" name="sms" class="form-control" maxlength="160" rows="3" placeholder="Your SMS will not exceed 160 characters."></textarea>     
                      

                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Send</button>              
                            
                        </form>
                    </div>
                </div>
            </div>
        </div> 
@endsection