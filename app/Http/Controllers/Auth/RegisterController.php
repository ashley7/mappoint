<?php

namespace App\Http\Controllers\Auth;

use App\User;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'role_id'=>'required',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        // return User::create([
        //     'name' => $data['name'],
        //     'email' => $data['email'],
        //     'password' => bcrypt($data['password']),
        // ]);

        $saveuser=new User();
        $saveuser->name=$data['name'];
        $saveuser->email=$data['email'];
        $saveuser->password=bcrypt($data['password']);
        $saveuser->mobile_password=$data['password'];
        $saveuser->remember_token=str_random(10);
        $saveuser->save();

        try {
            if ($data['role_id']==1) {
               $readrole_id=DB::table('roles')->where('name','client')->select('id')->first();
            }
            elseif ($data['role_id']==0) {
               $readrole_id=DB::table('roles')->where('name','buyer')->select('id')->first();
            }            
            DB::table('role_user')->insert([['user_id' =>   $saveuser->id, 'role_id' =>  $readrole_id->id],]);
            } catch (\Exception $e) {
                echo $e->getMessage();
            }
            return User::find($saveuser->id);
        }
    }