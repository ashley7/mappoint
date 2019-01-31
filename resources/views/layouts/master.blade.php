<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured Medical records system for HIV petients In Uganda.">
        <meta name="author" content="Thembo Charles Lwanga">

        <!-- App Favicon -->
        <link rel="icon" href="{{asset('images/wv_logo.png')}}">

        <!-- App title -->
        <title>{{ config('app.name', '') }}</title>

        <!-- Switchery css -->
        <link href="{{asset('back_end/assets/plugins/switchery/switchery.min.css')}}" rel="stylesheet" />

        

          <!-- DataTables -->
         
   
    
    <!--     <link rel="stylesheet" type="text/css" href=" https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css"> -->

        <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery.dataTables.min.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ asset('css/buttons.dataTables.min.css') }}">

        <link href="{{asset('back_end/assets/plugins/timepicker/bootstrap-timepicker.min.css')}}" rel="stylesheet">
        <link href="{{asset('back_end/assets/plugins/mjolnic-bootstrap-colorpicker/css/bootstrap-colorpicker.css')}}" rel="stylesheet">
        <link href="{{asset('back_end/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css')}}" rel="stylesheet">
        <link href="{{asset('back_end/assets/plugins/clockpicker/bootstrap-clockpicker.min.css')}}" rel="stylesheet">
        <link href="{{asset('back_end/assets/plugins/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">

        <link href="{{asset('back_end/assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css')}}" rel="stylesheet" />
        <link href="{{asset('back_end/assets/plugins/multiselect/css/multi-select.css')}}"  rel="stylesheet" type="text/css" />
        <link href="{{asset('back_end/assets/plugins/select2/css/select2.min.css')}}" rel="stylesheet" type="text/css" />

        <!-- App CSS -->
        <link href="{{asset('back_end/assets/css/style.css')}}" rel="stylesheet" type="text/css" />

        <style type="text/css">
            #topnav .topbar-main {
                background-color: #FF8C00;
            }

            .container {
                overflow: visible;  /* or 'visible' whatever */
            }
        </style>

        
 

        @yield('styles')

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <!-- Modernizr js -->
        <script src="{{asset('back_end/assets/js/modernizr.min.js')}}"></script>

    </head>


    <body>

        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container">

                    <!-- LOGO -->
                    <div class="topbar-left">
                        <a href="/home" class="logo">
                            <i class="zmdi zmdi-group-work icon-c-logo"></i>
                            <span>{{ config('app.name', '') }}</span>
                        </a>
                    </div>
                    <!-- End Logo container-->


                    <div class="menu-extras">

                        <ul class="nav navbar-nav pull-right">

                            <li class="nav-item">
                                <!-- Mobile menu toggle-->
                                <a class="navbar-toggle">
                                    <div class="lines">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                </a>
                                <!-- End mobile menu toggle-->
                            </li>              
                  
                        
                            <li class="nav-item dropdown notification-list">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
                                   aria-haspopup="false" aria-expanded="false">
                                    <!-- <img src="back_end/assets/images/users/avatar-1.jpg" alt="{{Auth::user()->name}}" class="img-circle"> -->
                                    <span style="color: #FFF;">{{Auth::user()->name}}</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-arrow profile-dropdown " aria-labelledby="Preview">                                
                                  

                                    <!-- item-->
                                    <a href="{{route('user.edit',Auth::user()->id)}}" class="dropdown-item notify-item">
                                        <i class="zmdi zmdi-account-circle"></i> <span>Profile</span>
                                    </a>      

                                     <a href="{{route('user.show','Change_password')}}" class="dropdown-item notify-item">
                                        <i class="zmdi zmdi-account-circle"></i> <span>Change password</span>
                                      </a>                          

                                    <!-- item-->                                 
                                      
                                    <a href="{{ route('logout') }}" class="dropdown-item notify-item"
                                        onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                                       <i class="zmdi zmdi-power"> Logout</i>
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                   
                                       
                                     

                                </div>
                            </li>

                        </ul>

                    </div> <!-- end menu-extras -->
                    <div class="clearfix"></div>

                </div> <!-- end container -->
            </div>
            <!-- end topbar-main -->


            <div class="navbar-custom">
                <div class="container">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">
                            <li>
                                <a href="/home"><i class="zmdi zmdi-view-dashboard"></i> <span> Home </span> </a>
                            </li>             
 
                            <li class="has-submenu">
                                <a href="#"><i class="ion-card"></i><span> HIV Care/ART Card </span> </a>
                                <ul class="submenu">
                                    <li><a href="{{route('hiv_care_art_card.index')}}">HIV care Patients</a></li>
                                    <li><a href="{{route('hiv_care_art_card.create')}}">Add new HIV care Patients</a></li>
                                    <li><a href="{{route('hiv_exposed_infant.create')}}">Add new HIV Exposed Infant</a></li>
                                    <li><a href="{{route('hiv_exposed_infant.index')}}">HIV Exposed Infant Register (FORM 082)</a></li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="zmdi zmdi-account"></i><span>Linkage facilitator </span> </a>
                                <ul class="submenu">
                                    <li><a href="{{route('link_facilitator.index')}}">View Link facilitators</a></li>
                                    <li><a href="{{route('link_facilitator.create')}}">Create link facilitator</a></li>
                                    <li><a href="{{route('family_suport_group_lf.create')}}">Add Family support group to Link facilitator</a></li>

                                </ul>
                            </li>
                     

                             <li class="has-submenu">
                                <a href="#"><i class="zmdi ion-person-stalker "></i><span>FSG</span> </a>
                                <ul class="submenu">
                                    <li><a href="{{route('family_suport_group.index')}}">Family support groups</a></li>
                                    <li><a href="{{route('fsg_register.index')}}">Family support group Register</a></li>
                                    <li><a href="{{route('fsg_register.create')}}">Add Family support group member</a></li>
                                    <li><a href="{{route('family_suport_group.create')}}">Create Family support group</a></li>
                                    <li><a href="{{route('family_suport_group_lf.create')}}">Add Family support group to Link facilitator</a></li>
                                    <li><a href="{{route('fsg_service.index')}}">Add Family Support Group Service</a></li>
                                </ul>
                            </li>

                             <li class="has-submenu">
                                <a href="#"><i class="ion-clock"></i><span>Appointments</span> </a>
                                <ul class="submenu">
                                    <li><a href="{{route('appointment_records.index')}}">Next appointments</a></li>
                                    <li><a href="{{route('appointments.index')}}">Family support groups Appointments</a></li>
                                    <li><a href="{{route('appointments.create')}}">Create Family support groups Appointments</a></li>
                                    <li><a href="{{route('attandance.index')}}">Attendance list</a></li>
                                    <li><a href="{{route('attandance.create')}}">Create Attendance</a></li>
                                    
                                </ul>
                            </li>

                             <li class="has-submenu">
                                <a href="#"><i class="zmdi ion-android-forums "></i><span>Communication</span> </a>
                                <ul class="submenu">
                                    <li><a href="{{route('communication.index')}}">Bulk SMS Records</a></li>
                                    <li><a href="{{route('communication.create')}}">Compose Bulk SMS</a></li>
                                </ul>
                            </li>                         
                            
                            <li class="has-submenu">
                                <a href="#"><i class="zmdi ion-android-forums "></i><span>Reports</span> </a>
                                <ul class="submenu">
                                    <li><a href="{{URL('/get_follow_up_report')}}">Client Follow up report</a></li>
                                    <li><a href="{{URL('/comprehessive_report')}}">Comprehessive report</a></li>
                                    <li><a href="{{URL('/time_specifics')}}">Time specific report</a></li>

                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="zmdi ion-ios7-settings"></i><span> Settings </span> </a>
                                <ul class="submenu">
                                    
                                    <li><a href="{{route('district.index')}}">Addresses</a></li>
                                    <li><a href="{{route('district.create')}}">Create Address</a></li>
                                    <li><a href="{{route('pt_clinic.index')}}">PT Clinics</a></li>
                                    <li><a href="{{route('district_clinician.index')}}">District Clinician</a></li>
                                    <li><a href="{{route('care_entry_point.index')}}">Care Entry Point</a></li>
                                    <li><a href="{{route('care_types.index')}}">Care types</a></li>
                                    <li><a href="{{route('person.index')}}">Users</a></li>
                                    <li><a href="{{route('person.create')}}">Create User</a></li>                                 
                                </ul>
                            </li>



                        </ul>
                        <!-- End navigation menu  -->
                    </div>
                </div>
            </div>
        </header>
        <!-- End Navigation Bar-->



        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="wrapper">
            <div class="container">

         <!-- ============================================================== -->
       <!--  Notification area -->
        <!-- ============================================================== -->
                @if (session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                @endif  

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

        <!-- ============================================================== -->
        <!-- End of Notification area -->
        <!-- ============================================================== -->


           <!--  <br><br> -->

       <!-- ============================================================== -->
       <!--  Blade template -->
        <!-- ============================================================== -->
                @yield('content')
        <!-- ============================================================== -->
        <!-- End Blade template -->
        <!-- ============================================================== -->   

            <!-- Footer -->
            <footer class="footer text-right">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                          <?php echo date("Y") ?>  © World vision.   (Help Line: +256 787 444 081)
                        </div>
                    </div>
                </div>
            </footer>             


            </div> <!-- container -->
           </div> <!-- End wrapper -->




        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
       
        <script src="{{asset('js/jquery-1.12.4.js')}}"></script>
        <script src="{{asset('back_end/assets/js/tether.min.js')}}"></script><!-- Tether for Bootstrap -->
        <script src="{{asset('back_end/assets/js/bootstrap.min.js')}}"></script>
        <script src="{{asset('back_end/assets/js/waves.js')}}"></script>
        <script src="{{asset('back_end/assets/js/jquery.nicescroll.js')}}"></script>
        <script src="{{asset('back_end/assets/plugins/switchery/switchery.min.js')}}"></script>


     
        <script src="{{asset('back_end/assets/js/jquery.app.js')}}"></script>
   
      

        <script src="{{asset('back_end/assets/plugins/moment/moment.js')}}"></script>
        <script src="{{asset('back_end/assets/plugins/timepicker/bootstrap-timepicker.min.js')}}"></script>
        <script src="{{asset('back_end/assets/plugins/mjolnic-bootstrap-colorpicker/js/bootstrap-colorpicker.js')}}"></script>
        <script src="{{asset('back_end/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>
        <script src="{{asset('back_end/assets/plugins/clockpicker/bootstrap-clockpicker.js')}}"></script>
        <script src="{{asset('back_end/assets/plugins/bootstrap-daterangepicker/daterangepicker.js')}}"></script>

        <script src="{{asset('back_end/assets/pages/jquery.form-pickers.init.js')}}"></script>

        <script src="{{asset('back_end/assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js')}}"></script>
        <script type="text/javascript" src="{{asset('back_end/assets/plugins/multiselect/js/jquery.multi-select.js')}}"></script>
        <script type="text/javascript" src="{{asset('back_end/assets/plugins/jquery-quicksearch/jquery.quicksearch.js')}}"></script>
        <script src="{{asset('back_end/assets/plugins/select2/js/select2.full.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('back_end/assets/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js')}}" type="text/javascript"></script>

        <!-- Autocomplete -->
        <script type="text/javascript" src="{{asset('back_end/assets/plugins/autocomplete/jquery.mockjax.js')}}"></script>
        <script type="text/javascript" src="{{asset('back_end/assets/plugins/autocomplete/jquery.autocomplete.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('back_end/assets/plugins/autocomplete/countries.js')}}"></script>
        <!-- <script type="text/javascript" src="{{asset('back_end/assets/pages/jquery.autocomplete.init.js')}}"></script> -->

        <script type="text/javascript" src="{{asset('back_end/assets/pages/jquery.formadvanced.init.js')}}"></script>


        <script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('js/dataTables.buttons.min.js') }}"></script>
        <script src="{{ asset('js/buttons.flash.min.js') }}"></script>
        <script src="{{ asset('js/jszip.min.js') }}"></script>
        <script src="{{ asset('js/pdfmake.min.js') }}"></script>
        <script src="{{ asset('js/vfs_fonts.js') }}"></script>
        <script src="{{ asset('js/buttons.html5.min.js') }}"></script>
        <script src="{{ asset('js/buttons.print.min.js') }}"></script>


        <!-- 
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src=" https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
 -->
        <script type="text/javascript">

             $(document).ready(function() {
                $('#datatable').DataTable( {
                    dom: 'Bfrtip',
                    buttons: [
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5'
                    ]
                } );
            } );


              $(document).ready(function() {
                $('#lost').DataTable( {
                    dom: 'Bfrtip',
                    buttons: [
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5'
                    ]
                } );
            } );
        </script>


    <script type="text/javascript">
        $(document).ready(function() {
        setInterval(function() {
            verify_response()
        }, 60000);
        });

        function verify_response() {
        $.ajax({
                type: "GET",
                url: "/send_appointment_reminders",
                data: {                
                    _token: "{{Session::token()}}" },
                success: function(result){
                console.log(result);
                }
            })
        }
    </script>
        @stack('scripts')

    </body>
</html>