@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Create Follow-up section for Client No. {{$falimlysuportgroupregister->hivcareartcard->PatientNumber}} ({{$falimlysuportgroupregister->hivcareartcard->surName}} {{$falimlysuportgroupregister->hivcareartcard->firstName}})</h2>
                </div>
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('fsg_follow_up.show',$falimlysuportgroupregister->id)}}">View Follow-up Section</a>
                 </div>
            </div>
            

            <form method="POST" action="{{route('fsg_follow_up.store')}}">
                        {{ csrf_field() }}

                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">

                         <label>FSG Visit Number:</label>
                        <input type="text" name="fsg_number" value="{{old('fsg_number')}}" class="form-control">

                        <label>FSG Appointment Date</label>
                        <input type="text" name="appoint_date" value="{{old('appoint_date')}}" class="form-control datepicker">

                        <label>FSG Visit Date</label>
                        <input type="text" id="infant_dob" name="visit_date" value="{{old('visit_date')}}" class="form-control">

                        <label>H I V Status</label>
                        <select class="form-control select2" name="hiv_status">
                            <option></option>
                            <option value="Postive">Postive</option>
                            <option value="Negative">Negative</option>
                            <option value="Unknown">Unknown</option>
                        </select>

                        <label>Medical Services accessed</label>
                        <select  id="fsg_service_id_medical" multiple="multiple" name="medical_services_accessed[]" class="multi-select">
                            @foreach($read_FsgService as $service)
                                <option value="{{$service->id}}">{{$service->name}}</option>
                            @endforeach
                        </select>

                        Or Specify Medical Services accessed
                        <input type="text" name="medical_services_accessed_spec" class="form-control">

                        <label>Comments</label>
                        <input type="text" name="coments" class="form-control">

                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">

                        <label>Community services accessed</label>
                        <select class="multi-select" id="fsg_service_id_community" multiple="multiple" name="community_services_accessed[]">
                            @foreach($read_FsgService as $service)
                                <option value="{{$service->id}}">{{$service->name}}</option>
                            @endforeach
                        </select>

                         Or Specify Community services accessed
                        <input type="text" name="community_services_accessed_spec" class="form-control">
                       
                         <label>Family planning method</label>
                        <select id="family_planning_method" name="family_planning_method[]" multiple="multiple" class="multi-select">
                          <option></option>
                          <option value="Condoms">Condoms</option>
                          <option value="Oral Contraceptables">Oral Contraceptables</option>
                          <option value="Injectables">Injectables</option>                          
                          <option value="Implants">Implants</option>                          
                          <option value="BTL">BTL</option>                          
                          <option value="IUD">IUD</option>
                          <option value="NONE">NONE</option>                   
                        </select>                     
                        OR
                 
                        <label>Specify Family planning method</label>
                        <input type="text" id="family_planning_method_spec" name="family_planning_method_spec" class="form-control">
                                   
                        <br>

                        <input type="hidden" name="falimly_suport_group_register_id" value="{{$falimlysuportgroupregister->id}}">

                        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>

                    </div>
                </div>
            </form>
               
        </div>
    </div> 
@endsection