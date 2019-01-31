@extends('layouts.master')
@section('content')
     <div class="card-box">                 
        <div class="panel-body">
             <div class="clearfix">
                <div class="pull-left">
                    <h2 class="logo" style="color: #2b3d51 !important;">Client Follow up report for {{$month}} {{$year}}</h2>
                </div> 
              </div> 

              <div class="row">
                <div class="col-xs-6 col-md-6 col-lg-6 col-xl-6">
                  <div class="card-box tilebox-one">
                      <i class="ion-android-contacts pull-xs-right text-muted"></i>
                      <h6 class="text-muted text-uppercase m-b-20">Present Clients</h6>
                      <h2 class="m-b-20" data-plugin="counterup">{{$present_count}}</h2>
                  </div>
                </div>

                <div class="col-xs-6 col-md-6 col-lg-6 col-xl-6">
                  <div class="card-box tilebox-one">
                      <i class="ion-android-contacts pull-xs-right text-muted"></i>
                      <h6 class="text-muted text-uppercase m-b-20">Missed follow-up</h6>
                      <h2 class="m-b-20" data-plugin="counterup">{{$lost_count}}</h2>
                  </div>
                </div>
              </div>

                 <div class="col-md-6 col-xs-12 m-t-20">
                                     

                      <ul class="nav nav-tabs m-b-10" id="myTab" role="tablist">
                          <li class="nav-item">
                              <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home"
                                 role="tab" aria-controls="home" aria-expanded="true">Present clients</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile"
                                 role="tab" aria-controls="profile">Lost Clients</a>
                          </li>
                          
                      </ul>
                      <div class="tab-content" id="myTabContent">
                          <div role="tabpanel" class="tab-pane fade in active" id="home"
                               aria-labelledby="home-tab">
                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                          <th>#</th>
                                          <th>Name</th>
                                          <th>Phone Number</th>                                 
                                          <th>Client Address</th>
                                          <th>Linkage facilitator name</th>
                                          <th>Linkage facilitator phone</th>
                                        </tr>
                                    </thead>

                                    <tbody>   

                                    @foreach($prsents_patients as $p_clients)    
                                     <tr>
                                       <td><a href="{{route('hiv_care_art_card.show',$p_clients->id)}}"> {{$p_clients->PatientNumber}}</a></td>
                                       <td>{{$p_clients->surName}} {{$p_clients->firstName}}</td>
                                       <td>{{$p_clients->phone_number}}</td>
                                       
                                       <td>{{$p_clients->address}}</td>
                                       <td>

                                        <?php
                                        try {
                                           ?>
                                            @foreach(App\FamilySuportGroupLinkFacilitator::where('fs_group_id',$p_clients->falimlysuportgroupregister->familysuportgroup->id)->get() as $link_facilitator)
                                            <?php 
                                                try {
                                                   echo App\LinkFacilitator::find($link_facilitator->lf_id)->user->name;
                                                } catch (\Exception $e) {
                                                  
                                                }
                                             ?>
                                                
                                            @endforeach

                                           <?php
                                         } catch (\Exception $e) {
                                           
                                         } 

                                         ?>                         
                                        </td>
                                       <td>
                                        <?php
                                        try {
                                          ?>

                                          @foreach(App\FamilySuportGroupLinkFacilitator::where('fs_group_id',$p_clients->falimlysuportgroupregister->familysuportgroup->id)->get() as $link_facilitator)
                                            <?php 
                                                try {
                                                   echo App\LinkFacilitator::find($link_facilitator->lf_id)->user->phone_number;
                                                } catch (\Exception $e) {
                                                  
                                                }
                                             ?>
                                          @endforeach
                                          <?php
                                           
                                         } catch (\Exception $e) {
                                           
                                         } 

                                         ?>
                                         
                                       </td>
                                     </tr>   
                                    @endforeach
                                  </tbody>
                                </table>
                           </div>
                          <div class="tab-pane fade" id="profile" role="tabpanel"
                               aria-labelledby="profile-tab">

                               <table id="lost" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                          <th>#</th>
                                          <th>Name</th>
                                          <th>Phone Number</th>                                 
                                          <th>Address</th>
                                          <th>Linkage facilitator name</th>
                                          <th>Linkage facilitator phone</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>    

                                     @foreach($absent_patients as $p_clients)    
                                     <tr>
                                       <td><a href="{{route('hiv_care_art_card.show',$p_clients->id)}}"> {{$p_clients->PatientNumber}}</a></td>
                                       <td>{{$p_clients->surName}} {{$p_clients->firstName}}</td>
                                       <td>{{$p_clients->phone_number}}</td>
                                       
                                       <td>{{$p_clients->address}}</td>
                                      
                                       <td>
              
                                        <?php
                                        try {

                                          ?>

                                           @foreach(App\FamilySuportGroupLinkFacilitator::where('fs_group_id',$p_clients->falimlysuportgroupregister->familysuportgroup->id)->get() as $link_facilitator)
                                              <?php 
                                                try {
                                                   echo App\LinkFacilitator::find($link_facilitator->lf_id)->user->name;
                                                } catch (\Exception $e) {
                                                  
                                                }
                                             ?>
                                          @endforeach

                                          <?php
                                           
                                         } catch (\Exception $e) {
                                          
                                           
                                         } 

                                         ?>
                                        </td>
                                        <td>

                                          <?php
                                          try {

                                            ?>
                                          @foreach(App\FamilySuportGroupLinkFacilitator::where('fs_group_id',$p_clients->falimlysuportgroupregister->familysuportgroup->id)->get() as $link_facilitator)
                                            <?php 
                                                try {
                                                   echo App\LinkFacilitator::find($link_facilitator->lf_id)->user->phone_number;
                                                } catch (\Exception $e) {
                                                  
                                                }
                                             ?>
                                        @endforeach

                                            <?php
                                             
                                           } catch (\Exception $e) {
                                             
                                           } 

                                           ?>                                        
 
                                       </td>
                                     </tr>   
                                    @endforeach            
                                       
                                         
                                    </tbody>
                                </table>
                           </div>
                           
                      </div>
                  </div>            
             
 
            </div>
        </div> 
@endsection