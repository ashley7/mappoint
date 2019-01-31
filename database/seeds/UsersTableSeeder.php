<?php
use Illuminate\Database\Seeder;
use App\User;
use Illuminate\Support\Facades\DB;
class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //seed default super user
        $saveuser=new User();
        $saveuser->name="M-Appoint Admin";
        $saveuser->email="mappoint@admin.com";
        $saveuser->password=bcrypt("password@");      
        $saveuser->mobile_password="password@";      
        $saveuser->remember_token=str_random(32);

        try {
        	$saveuser->save();
	        try {
	            $readrole_id=DB::table('roles')->where('name','main_admin')->select('id')->first();
	            DB::table('role_user')->insert([['user_id' =>  $saveuser->id, 'role_id' =>  $readrole_id->id],]);            
	        } catch (\Exception $e) {
	            echo $e->getMessage();
	        }
        	
        } catch (\Exception $e) {
        	echo $e->getMessage();
        }
    }
}