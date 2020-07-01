<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\Place;
use App\Charts\saleChart;


class PlaceChartController extends Controller
{

    public function create()
    {
        $place = Place::all();

        // dd($place->keys());
        return view('admin.sale.chart.chart place.dateFormMonth', compact('place'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // ambil awal rentang input
        $sDate = explode('-', $request->start);
        $sYear   = $sDate[1];
        $sMonth = $sDate[0];

        $eDate = explode('-', $request->end);
        $eYear   = $eDate[1];
        $eMonth = $eDate[0];

        $request->start = $request->start."-01";
        $request->end = $request->end."-31";

        $place = $request->place;

        $sale  = DB::table('places')
            ->leftjoin('tickets', 'places.id', '=', 'tickets.place_id')
            ->select('places.nama as nama', DB::raw('COUNT(tickets.place_id)*places.harga_tiket as Total'))
            ->whereIn('places.nama', $place)
            ->whereBetween('tickets.created_at', [$request->start, $request->end])
            ->groupBy('nama')
            ->get();

        $nama = [];
        for($i=0; $i<sizeOf($sale); $i++){
            $nama[$i] = $sale[$i]->nama; 
        }

        $pendapatan = [];
        for($i=0; $i<sizeOf($sale); $i++){
            $pendapatan[$i] = $sale[$i]->Total; 
        }

        $borderColors = [
            "rgba(255, 99, 132, 1.0)",
            "rgba(22,160,133, 1.0)",
            "rgba(255, 205, 86, 1.0)",
            "rgba(51,105,232, 1.0)",
            "rgba(244,67,54, 1.0)",
            "rgba(34,198,246, 1.0)",
            "rgba(153, 102, 255, 1.0)",
            "rgba(255, 159, 64, 1.0)",
            "rgba(233,30,99, 1.0)",
            "rgba(205,220,57, 1.0)"
        ];
        $fillColors = [
            "rgba(255, 99, 132, 0.2)",
            "rgba(22,160,133, 0.2)",
            "rgba(255, 205, 86, 0.2)",
            "rgba(51,105,232, 0.2)",
            "rgba(244,67,54, 0.2)",
            "rgba(34,198,246, 0.2)",
            "rgba(153, 102, 255, 0.2)",
            "rgba(255, 159, 64, 0.2)",
            "rgba(233,30,99, 0.2)",
            "rgba(205,220,57, 0.2)"

        ];
        $placeChart = new saleChart;
        // $placeChart->barwidth(0.0);
        $placeChart->displaylegend(false);
        // $placeChart->minimalist(true);
        $placeChart->labels($nama);
        $placeChart->dataset('Total Pendapatan (Rupiah)', 'bar', $pendapatan)
            ->color($borderColors)
            ->backgroundcolor($fillColors);


        return view('admin\sale\Chart\chart place\ChartPlace', compact('placeChart'));

        // dd($placeChart);
    }







}
