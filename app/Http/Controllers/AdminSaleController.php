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
            // return dd($sale);
            return view('admin.sale.table.index', compact('sale'));
    }
}
