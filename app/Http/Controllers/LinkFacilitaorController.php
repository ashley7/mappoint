<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\LinkFacilitator;
use App\Village;
use App\Communication;
use App\User;
use DB;

class LinkFacilitaorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $read_LinkFacilitator=LinkFacilitator::all();
        return view("link_facilitator.linkfacilitator")->with(compact('read_LinkFacilitator'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $read_village=Village::all();
        return view('link_facilitator.createlinkfacilitator')->with(compact('read_village'));
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
       $this->validate($request,["email"=>"required|unique:users","name"=>"required","phonenumber"=>"required"]);
       $create_user=new User();
       $create_user->name=$request->name;
       $create_user->email=$request->email;
       $create_user->phone_number=str_replace("+", "", $request->phonenumber);
       $create_user->address=$request->village_id;
       

       $characters = '123456789';
         $charactersLength = strlen($characters);
         $randomString = '';
            for ($i = 0; $i < 5; $i++) {
                $randomString .= $characters[rand(0, $charactersLength - 1)];
            }
         $pin=$randomString; 

         $create_user->password=bcrypt($pin);
         $create_user->mobile_password=$pin;

       try {
            $create_user->save();
            $readrole_id=DB::table('roles')->where('name','link_facilitator')->select('id')->first();
            DB::table('role_user')->insert([['user_id' => $create_user->id, 'role_id' =>  $readrole_id->id],]);
            $save_LinkFacilitator=new LinkFacilitator();
            $save_LinkFacilitator->user_id=$create_user->id;
            try {
                $save_LinkFacilitator->save();
                $sms="Dear ".$create_user->name.", You have been made a Linkage Facilitator your Login email is: ".$create_user->email." Phone Number is: ".$request->phonenumber." and Password is: ".$pin;
                $save_Communication=new Communication();
                $save_Communication->pushBulk_SMS($request->phonenumber,$sms,NULL,NULL);
            } catch (\Exception $e) {
                 
            }
       } catch (\Exception $e) {
         
           
       }      
       return redirect()->route('link_facilitator.index');
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
        try {
            LinkFacilitator::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->route('link_facilitator.index');
    }
}
