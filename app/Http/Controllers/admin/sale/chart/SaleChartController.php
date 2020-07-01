<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use App\Charts\saleChart;

class SaleChartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.sale.chart.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.sale.chart.chart sale.dateFormMonth');
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


        $sale  = DB::table('places')
            ->join('tickets', 'places.id', '=', 'tickets.place_id')
            ->select(DB::raw('MONTH(tickets.created_at) as Month'), DB::raw('COUNT(tickets.place_id)*places.harga_tiket as Total'))
            ->whereBetween('tickets.created_at', [$request->start, $request->end])
            ->groupBy('Month')
            ->get();


        foreach($sale as $p){
            if ($p->Month == 1){
                $p->Month = "Januari";
            }elseif($p->Month == 2){
                $p->Month = "Febuari";
            }elseif($p->Month == 3){
                $p->Month  = "Maret";
            }elseif($p->Month == 4){
                $p->Month = "April";
            }elseif($p->Month == 5){
                $p->Month= "Mei";
            }elseif($p->Month == 6){
                $p->Month= "Juni";
            }elseif($p->Month == 7){
                $p->Month = "Juli";
            }elseif($p->Month == 8){
                $p->Month = "Agustus";
            }elseif($p->Month == 9){
                $p->Month = "September";
            }elseif($p->Month == 10){
                $p->Month = "Oktober";
            }elseif($p->Month == 11){
                $p->Month = "November";
            }elseif($p->Month == 12){
                $p->Month = "Desember";
            }
        }

        $bulan = [];
        for($i=0; $i<sizeOf($sale); $i++){
            $bulan[$i] = $sale[$i]->Month; 
        }

        $pendapatan = [];
        for($i=0; $i<sizeOf($sale); $i++){
            $pendapatan[$i] = $sale[$i]->Total; 
        }

        


        $saleChart = new saleChart;
        $saleChart->title('Total Penjualan per Bulan', 30, "rgb(0)", true, 'Helvetica Neue');
        $saleChart->barwidth(0.0);
        $saleChart->displaylegend(false);
		$saleChart -> labels($bulan);
        $saleChart -> dataset('Total Penjualan (Rupiah)', 'line', $pendapatan)
            ->color("rgb(0, 0, 0)")
            ->backgroundcolor("rgb(0)")
            ->fill(false)
            ->linetension(0.1)
            ->dashed([5]);

        $start = current($bulan);
        $end   = end($bulan);
        // dd(current($bulan));
        
        return view('admin\sale\Chart\chart sale\ChartPenjualan', compact('saleChart', 'start', 'end'));

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
    }
}
