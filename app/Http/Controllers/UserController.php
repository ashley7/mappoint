<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\DB;
use Auth;
use Image;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if (Auth::user()->hasRole('admin')) {
            # code...
            $users=User::all();
            return view('pages.userlist')->with(compact('users'));
        }
        else {
            # code...
            return redirect()->back();
        }
      
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $thisuser=Auth::user();
        return view('pages.profile')->with(compact('thisuser'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
     //changing password
        $this->validate($request,['email'=>'required','password'=>'required|min:5|confirmed','password_confirmation'=>'required|min:5']);
            $user_password=User::all()->where('id',Auth::user()->id)->last();        
            $user_password->password=bcrypt($request->password);
            $user_password->mobile_password=$request->password;
            $user_password->email=$request->email;
            try {
                 $user_password->save();
                 return redirect()->back()->with('status','new password and email have been set.');
            } catch (\Exception $e) {
                return redirect()->back()->with('status','The new Email you are changing to is already taken. Operation failed.');

            }
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
        return view('auth.passwords.reset');
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
          $user=User::find($id);
          return view('auth.edituser')->with(compact('user'));
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
        $this->validate($request,["name"=>"required","email"=>"required","phone_number"=>"required","address"=>"required"]);
        $save_users=User::find($id);
        $save_users->name=$request->name;
        $save_users->email=$request->email;
        $save_users->phone_number=$request->phone_number;
        $save_users->address=$request->address;

        try {
            if (!empty($request->file('photo'))) {
           
             $image_files=$request->file('photo');
             $image_name=time().'.'.$image_files->getClientOriginalExtension();
             $destination=public_path('images/'.$image_name);
             Image::make($image_files)->resize(30,35)->save($destination);
             $save_users->picture=$image_name;
             }                
            } catch (\Exception $e) {
                echo $e->getMessage();
                exit();
            }  
        try {
            $save_users->save();
            $status="User updated successfully";
        } catch (\Exception $e) {
            $status="User Not updated";
        }

        return redirect()->back()->with(compact('status'));
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
        try {
            $thisuser=User::find($id);
            if ($thisuser->email=="sales@zimba.com") {
                # code...
                $status="This User can not be deleted."; 
                return redirect()->route("user.index")->with(compact('status')); 
            }
            
            User::destroy($id);  
            $status="User deleted successfully"; 
                 
        } catch (\Exception $e) {
            $status="User not deleted"; 
        }
          return redirect()->route("user.index")->with(compact('status'));  
    }
}
