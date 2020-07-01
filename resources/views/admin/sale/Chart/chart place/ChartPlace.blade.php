@extends('layouts.appAdmin')
@section('content')
<link href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css" rel="stylesheet">
<script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>

<div class="container mt-4">
            <div class="card mt-2">
                <div class="card-header text-center">
                    <h2><strong>Data Penjualan</strong></h2>

                </div>
                <div class="card-body">
                    <a style="margin-left: 900px" href="{{route('placeChart.create')}}" class="btn btn-primary">
                        <i class="plus icon"></i>
                         Atur Rentang Tanggal
                    </a>
                    <div class="chart-area">
                        {!! $placeChart->container() !!}
                        {!! $placeChart->script() !!}
                    </div>

                </div>
            </div>
        </div>


@endsection
