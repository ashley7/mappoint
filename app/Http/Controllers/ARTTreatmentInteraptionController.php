<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ArtTreatmentInteraption;
class ARTTreatmentInteraptionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
        $update=ArtTreatmentInteraption::find($id);

        $update->date_restart=str_replace("/", "-", $request->date_recieved);
        echo $request->date_recieved;
        $date_recieved=explode("/", $request->date_recieved);
        $update->month_restart=$date_recieved[1];
        $update->year_restart=$date_recieved[2];
        try {
            $update->save();
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
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
            ArtTreatmentInteraption::destroy($id);
        } catch (\Exception $e) {
            
        }
        return redirect()->back();
    }
}
