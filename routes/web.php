<?php
Route::get('/', function () {   
 return view("auth.login");//this is the entry point
});

Route::get('/forgot_password', function () {  
  return view("auth.passwords.email"); 
});

Route::post('forgot_password','TasksController@forgot_password');




Auth::routes();
Route::group(['middleware' => 'auth'], function () {

	Route::get('/home', 'HomeController@index')->name('home');
	Route::resource('user','UserController');
	Route::resource('district','DistrictController');
	Route::resource('pt_clinic','PtClinicController');
	Route::resource('district_clinician','DistrictClinicianController');
	Route::resource('care_entry_point','CareEntryPointController');
	Route::resource('hiv_care_art_card','HivCareArtCardController');
	Route::resource('art_regimen','ARTRegimenController');
	Route::resource('art_treatmentinteraption','ARTTreatmentInteraptionController');
	Route::resource('art_familymember','HivCareArtCartFamilyMemberController');
	Route::resource('art_prior','PriorARTController');
	Route::resource('hivecard_records','HivCardRrecordsController');
	Route::resource('link_facilitator','LinkFacilitaorController');
	Route::resource('family_suport_group','FamilySuportGroupController');
	Route::resource('family_suport_group_lf','FamilySuportGroupLinkFacilitatorController');
	Route::resource('fsg_service','FsgServiceController');
	Route::resource('fsg_register','FalimlySuportGroupRegisterController');
	Route::resource('child_hivstatus','ChildrenHivStatusController');
	Route::resource('appointments','AppointmentController');
	Route::resource('appointment_records','ApointmentRecordController');
	Route::resource('care_types','CareTypesController');
	Route::resource('appointmentcarepoint','AppointmentRecordCareTypeController');
	Route::resource('communication','CommunicationController');
	Route::resource('sub_county','SubcountyController');
	Route::resource('parish','ParishController');
	Route::resource('village','VillageController');
	Route::resource('exposedinfant_followup','ExposedInfantFollowupController');
	Route::resource('attandance','AttendanceController');
	Route::resource('person','PoepleController');
	Route::resource('fsg_follow_up','FamilySupportGroupRegisterFollowupController');
	Route::resource('hivie_test_info','HivExposedInfantTesingInformationController');
	Route::resource('hivie_follow_up','HivExposedInfantFollowupController');

	Route::resource('hiv_exposed_infant','HivExposedInfantController');
	Route::resource('hiv_exposed_infant_visit','HivExposedInfantVisitController');
	
	Route::get('ajax_read_subcounty/{id}','TasksController@ajax_read_subcounty');
	Route::get('ajax_read_parish/{id}','TasksController@ajax_read_parish');
	Route::get('present_members/{id}','TasksController@present_members');
	Route::get('absent_members/{id}','TasksController@absent_members');
	Route::get('art_interuptions','TasksController@art_interuptions');
	Route::get('get_follow_up_report','TasksController@get_follow_up_report');
	Route::get('tb_clients','HomeController@tb_clients')->name('tb_clients');
	Route::get('cd4_count_plus','HomeController@tb_clients')->name('cd4_count_plus');
	Route::get('cd4_count_minus','HomeController@cd4_count_minus')->name('cd4_count_minus');
	Route::get('client_muac_plus','HomeController@client_muac_plus')->name('client_muac_plus');
	Route::get('client_muac_minus','HomeController@client_muac_minus')->name('client_muac_minus');
	Route::get('comprehessive_report','HomeController@comprehessive_report')->name('comprehessive_report');
	Route::post('post_follow_up_report','TasksController@post_follow_up_report');
	Route::get('send_appointment_reminders','MobileAPIController@send_appointment_reminders')->name('send_appointment_reminders');

	Route::get('time_specifics','MobileAPIController@time_specifics')->name('time_specifics');
	Route::post('time_specifics','HomeController@timespecifics')->name('time_specifics');
});//middleware
