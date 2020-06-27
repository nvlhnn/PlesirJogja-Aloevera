<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Place;
use App\Ticket;
use DB;

class AdminSaleController extends Controller
{
    public function index()
    {
        $sale  = DB::table('places')
            ->join('tickets', 'places.id', '=', 'tickets.place_id')
            ->select('places.nama as a', 'places.harga_tiket as b', DB::raw('COUNT(tickets.place_id) as c'), DB::raw('COUNT(tickets.place_id)*places.harga_tiket as d'))
            ->groupBy('places.id', 'a', 'b')
            ->get();
            return view('admin.sale.table.index', compact('sale'));

    }
}
