<?php

namespace App\Http\Controllers;

use App\Comment;
use App\Place;
use App\Ticket;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;

class PlacesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $places  = DB::table('places')
            ->leftjoin('comments', 'places.id', '=', 'comments.place_id')
        // ->join('comments', 'places.id', '=', 'comments.place_id')
            ->select('places.nama as nama', 'places.id as id','places.gambar as gambar', DB::raw('AVG(comments.rating) as rating'))
            ->groupBy('nama', 'id', 'gambar')
            ->get();
        // return dd($places);

        return view('places.index', compact('places'));
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
        $this->middleware('auth');
            $place = Place::findOrFail($request->place_id);
            Ticket::create([
                'user_id'    => auth()->id(),
                'place_id'   => $place->id,
                'kode_tiket' => "$request->kode_tiket"
            ]);
        
        
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Place $place)
    {   
        $rating  = DB::table('places')
            ->leftjoin('comments', 'places.id', '=', 'comments.place_id')
        // ->join('comments', 'places.id', '=', 'comments.place_id')
            ->where('comments.place_id', $place->id)
            ->avg('comments.rating');
        return view('Places.show', compact('place', 'rating'));
        // return dd($rating);
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
