<?php
Route::any('test',function(){

	echo "string";

});
 
Route::group(['middleware' => 'api'], function () {

	Route::any("login","MobileAPIController@login");

	Route::any("user","MobileAPIController@user");

	Route::any("fsgs","MobileAPIController@fsgs");

	Route::any("fsgs_members","MobileAPIController@fsgs_members");

	Route::any("appointemnts","MobileAPIController@appointemnts");

	Route::any("appointemnts_records","MobileAPIController@appointemnts_records");

	Route::any("fsgsmembersappointemnts_pending","MobileAPIController@fsgsmembersappointemnts_pending");

	Route::any("fsgsmembersappointemnts_confirmed","MobileAPIController@fsgsmembersappointemnts_confirmed");

	Route::any("arttreatmentinteraption","MobileAPIController@arttreatmentinteraption");

	Route::any("appointemnts_confirmation","MobileAPIController@appointemnts_confirmation");

	Route::any("communication_update","MobileAPIController@communication_update");

	Route::any("add_send_sms","MobileAPIController@add_send_sms");

	Route::any("bulk_send_sms","MobileAPIController@bulk_send_sms");

	Route::any("contact_world_vision","MobileAPIController@contact_world_vision");

	Route::any("contact_tech","MobileAPIController@contact_tech");

	Route::any("forgot_password","MobileAPIController@forgot_password");

	Route::any("attandence","MobileAPIController@attandence");

	Route::any("attandence_list","MobileAPIController@attandence_list");

	Route::any("attendance_fsgsmembersappointemnts","MobileAPIController@attendance_fsgsmembersappointemnts");
	
});//middleware