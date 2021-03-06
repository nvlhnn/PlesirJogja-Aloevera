<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Place;
use App\Ticket;
use DB;

class AdminSaleController extends Controller
{
    public function create()
    {
        return view('admin.sale.table.dateForm');
    }
    public function store(request $request)
    {
        $sale  = DB::table('tickets')
            ->join('places', 'places.id', '=', 'tickets.place_id')
            // ->join('comments', 'places.id', '=', 'comments.place_id')
            ->select('places.nama as a', 'places.harga_tiket as b', DB::raw('COUNT(tickets.place_id) as c'), DB::raw('COUNT(tickets.place_id)*places.harga_tiket as d'))
            ->whereBetween('tickets.created_at', [$request->start, $request->end])
            ->groupBy('places.id', 'a', 'b')
            ->get();

        $rating  = DB::table('tickets')
            ->leftjoin('comments', 'tickets.place_id', '=', 'comments.place_id')
        // ->join('comments', 'places.id', '=', 'comments.place_id')
            ->select(DB::raw('AVG(comments.rating) as rating'))
            ->whereBetween('tickets.created_at', [$request->start, $request->end])
            ->groupby('tickets.place_id')
            // ->avg('comments.rating')
            ->get();

        //     for ($i=0; $i <= sizeof($sale); $i++) { 
        //     $total[$i] = $sale[$i]->d;
        // }

        foreach ($sale as $key => $value) {
            $q[] = $value->d;
        }

        $total = array_sum($q);
        
            $start = $request->start;
            $end = $request->end;

            // dd($total);
           return view('admin.sale.table.index', compact('sale', 'rating', 'start', 'end', 'total'));
    }
}
