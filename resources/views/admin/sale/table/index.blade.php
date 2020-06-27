@extends('layouts.appAdmin')
@section('content')
<div class="container mt-4">
            <div class="card mt-2">
                <div class="card-header text-center">
                    <h2><strong>Data Obyek Wisata</strong></h2>
                </div>
                <div class="card-body">
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <input class="form-control" type="search" id="search" placeholder="Search" aria-label="Search" style="width: 350px">
                        </li>
                        <li class="list-inline-item" style="margin-left: 540px">
                            <a href="{{route('adminPlaces.create')}}" class="btn btn-primary">
                                <i class="plus icon"></i>
                                Tambah Obyek Wisata
                            </a>
                        </li>
                    </ul>
                    <table class="table table-bordered table-hover table-striped" style="font-size: 15px; text-align: center" align="center">
                        <thead>
                            <tr>
                                <th scope="col" style="font-size: 17px;">No</th>
                                <th scope="col" style="font-size: 17px;">Nama</th>
                                <th scope="col" style="font-size: 17px;">Harga Tiket (Satuan)</th>
                                <th scope="col" style="font-size: 17px;">Tiket Terjual</th>
                                <th scope="col" style="font-size: 17px;">Total Pemasukan </th>
                            </tr>
                        </thead>
                        @php
                            $no=1;
                        @endphp
                        <tbody id="tabel">
                            @foreach($sale as $p)
                            <tr style="position: center center">
                                <td style="text-align: center center">{{$no++}}</td>
                                <td>{{ $p->a }}</td>
                                <td>{{ $p->b }}</td>
                                <td>{{ $p->c}}</td>
                                <td>{{ $p->d }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                        
                    </table>
                </div>
            </div>
        </div>
@endsection