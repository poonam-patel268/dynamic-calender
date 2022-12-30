<?php

namespace App\Http\Controllers;

use App\Models\Calander;
use App\Models\SubjectPerDay;
use Illuminate\Http\Request;

class CalanderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('calender');
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
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $calender = new Calander();
        $calender->no_of_working_days = $request->no_of_working_days;
        $calender->no_of_subjects_per_day = $request->no_of_subjects_per_day;
        $calender->save();

        foreach($request->subjects as $key => $val){
            $subjectPerDay = new SubjectPerDay();
            $subjectPerDay->calender_id = $calender->id;
            $subjectPerDay->subject_id = $val;
            $subjectPerDay->hours = 1;
            $subjectPerDay->save();
        }

        $subjectsPerDay = SubjectPerDay::where('calender_id',$calender->id)->get();

        return view('dynamic-calender', compact('calender','subjectsPerDay'));

    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Calander $calander
     * @return \Illuminate\Http\Response
     */
    public function show(Calander $calander)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Calander $calander
     * @return \Illuminate\Http\Response
     */
    public function edit(Calander $calander)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Calander $calander
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Calander $calander)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Calander $calander
     * @return \Illuminate\Http\Response
     */
    public function destroy(Calander $calander)
    {
        //


    }

    public function dynamicCalender()
    {
        $calender = Calander::orderBy('id', 'desc')->first();
        return view('dynamic-calender', ['days' => $calender->no_of_working_days, 'subjects' => $calender->no_of_subjects_per_day]);

    }
}
