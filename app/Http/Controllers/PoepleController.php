<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Role;
use App\Village;
use App\Communication;
use DB;

class PoepleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $users=User::all();
        return view("user.users")->with(compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $roles=Role::all();
        $village=Village::all();
        return view("user.create_user")->with(compact('roles','village'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request,["name"=>"required","email"=>"required|unique:users","phone_number"=>"required","role_id"=>"required","village_id"=>"required"]);

        $save_user=new User;
        $save_user->name=$request->name;
        $save_user->email=$request->email;
        $save_user->phone_number=$request->phone_number;
        $save_user->address=$request->village_id;

         $characters = '123456789';
         $charactersLength = strlen($characters);
         $randomString = '';
            for ($i = 0; $i < 5; $i++) {
                $randomString .= $characters[rand(0, $charactersLength - 1)];
            }
         $pin=$randomString; 

         $save_user->password=bcrypt($pin);
         $save_user->mobile_password=$pin;

        $save_user->save();

        foreach ($request->role_id as $role_value) {
            try {
                 DB::table('role_user')->insert([['user_id' =>  $save_user->id, 'role_id' => $role_value],]); 
            } catch (\Exception $e) {
               
            }
        }  

        $save_Communication=new Communication();
        $sms="Dear ".$save_user->name." Your M-Appoint account has been created. your Email is ".$save_user->email." and Password is ".$save_user->mobile_password;
            try {
               $save_Communication->pushBulk_SMS($save_user->phone_number,$sms,NULL,NULL); 
              
            } catch (\Exception $e) {
                 $status=$e->getMessage();
            }  

            return redirect()->route('person.index');    
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
