@extends('layouts.master')

@section('content')
     <div class="card-box">                 
        <div class="panel-body">
            <div class="clearfix">
                
                <div class="pull-right">
                	<a class="btn btn-dark btn-rounded waves-effect waves-light" href="{{route('district.index')}}">View District</a>
                 </div>
            </div>

            <br>

            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                    <section class="form-control">
                        <h2 style="color: #2b3d51">Create District</h2>                 
                         

                        <form method="POST" action="{{route('district.store')}}">
                            {{ csrf_field() }}

                            <label>Name:</label>
                            <input type="text" name="name" class="form-control">

                            <label>Description:</label>
                            <input type="text" name="description" class="form-control">

                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>              
                            
                        </form>
                    </section>
                </div>

                <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                    <section class="form-control">
                        <h2 style="color: #2b3d51">Division/Sub-County</h2>                 
                         

                        <form method="POST" action="{{route('sub_county.store')}}">
                            {{ csrf_field() }}

                            <label>District:</label>
                            <select class="form-control select2" name="district_id">
                                <option></option>
                                @foreach($read_districts as $districts)
                                    <option value="{{$districts->id}}">{{$districts->name}}</option>
                                @endforeach
                            </select>

                            <label>Name:</label>
                            <input type="text" name="name" class="form-control">

                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>                                   
                        </form>
                    </section>
                </div>
            </div> 

            <br>


            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                    <section class="form-control">
                        <h2 style="color: #2b3d51">Create Parish/Ward</h2>                 
                         

                        <form method="POST" action="{{route('parish.store')}}">
                            {{ csrf_field() }}

                            <label>District:</label>
                            <select class="form-control select2" id="district_id" name="district_id">
                                <option></option>
                                @foreach($read_districts as $districts)
                                    <option value="{{$districts->id}}">{{$districts->name}}</option>
                                @endforeach
                            </select>

                            <label>Division/Sub-County</label>
                            <select class="form-control select2" name="sub_county_id" id="Division_SubCounty"></select>

                            <label>Name:</label>
                            <input type="text" name="name" class="form-control">

                            <br><br>
                            <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>              
                            
                        </form> 
                    </section>
                </div>

                <div class="col-sm-12 col-md-6 col-lg-6 col-xs-12">
                    <section class="form-control">
                    <h2 style="color: #2b3d51">Village/Zone/Cell</h2>                 
                     

                    <form method="POST" action="{{route('village.store')}}">
                        {{ csrf_field() }}

                        <label>District:</label>
                        <select class="form-control select2 district_id" name="district_id">
                            <option></option>
                            @foreach($read_districts as $districts)
                                <option value="{{$districts->id}}">{{$districts->name}}</option>
                            @endforeach
                        </select>                        

                        <label>Division/Sub-County</label>
                        <select class="form-control select2 Division_SubCounty" name="Division_SubCounty">
                        </select>

                        <label>Village/Zone/Cell</label>
                        <select class="form-control select2 Village_Zone_Cell" name="parish_id">
                        </select>

                        <label>Name:</label>
                        <input type="text" name="name" class="form-control">

                        <br><br>
                        <button type="submit" class="btn btn-dark btn-rounded waves-effect waves-light">Save</button>                                   
                    </form>
                </section>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('scripts')
    <script type="text/javascript">
        $('#district_id').on('change',function(e){
          console.log(e);
          var district_id=e.target.value;
          // ajax
          $.get('/ajax_read_subcounty/'+district_id,function(data){
            console.log(data);        
              $('#Division_SubCounty').empty();
              $.each(data,function(index,subObject){
                        $('#Division_SubCounty').append("<option></option> <option value="+subObject.id+">"+subObject.name+"</option>");
                    });
            });
        });
    </script>

        <script type="text/javascript">
        $('.district_id').on('change',function(e){
          console.log(e);
          var district_id=e.target.value;
          // ajax
          $.get('/ajax_read_subcounty/'+district_id,function(data){
            console.log(data);        
              $('.Division_SubCounty').empty();
              $.each(data,function(index,subObject){
                        $('.Division_SubCounty').append("<option></option> <option value="+subObject.id+">"+subObject.name+"</option>");
                    });
            });
        });


        $('.Division_SubCounty').on('change',function(e){
          console.log(e);
          var Division_SubCounty_id=e.target.value;
          // ajax
          $.get('/ajax_read_parish/'+Division_SubCounty_id,function(data){
            console.log(data);        
              $('.Village_Zone_Cell').empty();
              $.each(data,function(index,subObject){
                        $('.Village_Zone_Cell').append("<option></option> <option value="+subObject.id+">"+subObject.name+"</option>");
                    });
            });
        });
    </script>

@endpush