<?php
use Illuminate\Database\Seeder;
use App\Role;
class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $saverole=new Role();
        $saverole->name="main_admin";
        $saverole->display_name="Main Administrator";
        $saverole->description="Has supper accessibility to the entire system";
        try {
        	 $saverole->save();
        } catch (\Exception $e) {
        	 echo $e->getMessage();
        }
       

        $saverole=new Role();
        $saverole->name="link_facilitator";
        $saverole->display_name="Link facilitator";
        $saverole->description="This is a village person that cordinates the other HIV patients";
        try {
        	 $saverole->save();
        } catch (\Exception $e) {
        	 echo $e->getMessage();
        }

        $saverole=new Role();
        $saverole->name="user";
        $saverole->display_name="Normal User";
        $saverole->description="This is a general User";
        try {
             $saverole->save();
        } catch (\Exception $e) {
             echo $e->getMessage();
        }
       
    }
}