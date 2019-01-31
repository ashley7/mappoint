<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FsgService;

class FsgServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $raed_FsgService=FsgService::all();
        return view("family_suport_gruop.fsg_service")->with(compact('raed_FsgService'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view("family_suport_gruop.create_fsg_service");
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
        $this->validate($request,["name"=>"required","short_name"=>"required"]);
        $save_FsgService=new FsgService();
        $save_FsgService->name=$request->name;
        $save_FsgService->short_name=$request->short_name;
        $save_FsgService->save();
        return redirect()->route('fsg_service.index');
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
        $read_FsgService=FsgService::find($id);
        return view("family_suport_gruop.edit_fsg_service")->with(compact('read_FsgService'));

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
        $save_FsgService=FsgService::find($id);
        if (!empty($request->name)) {
            # code...
            $save_FsgService->name=$request->name;
        }

        if (!empty($request->short_name)) {
            # code...
            $save_FsgService->short_name=$request->short_name;
        }
        
        
        $save_FsgService->save();
        return redirect()->route('fsg_service.index');
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
            FsgService::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->route('fsg_service.index');
    }
}
