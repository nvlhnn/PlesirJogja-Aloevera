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
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <input class="form-control" type="search" id="search" placeholder="Search" aria-label="Search" style="width: 350px">
                        </li>
                        <li class="list-inline-item" style="margin-left: 540px">
                            <a href="{{route('adminSale.create')}}" class="btn btn-primary">
                                <i class="plus icon"></i>
                                Atur Rentang Tanggal
                            </a>
                        </li>
                    </ul>

                    <div class="chart-area">
                        {!! $saleChart->container() !!}
                        {!! $saleChart->script() !!}
                    </div>

                </div>
            </div>
        </div>


@endsection
