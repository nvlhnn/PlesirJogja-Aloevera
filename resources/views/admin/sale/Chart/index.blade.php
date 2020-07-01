@extends('layouts.appAdmin')
@section('content')
<div class="container mt-4">
  <a href="{{route('adminChart.create')}}" class="btn btn-secondary btn-lg my-2 mx-2">Pendapatan</a>
  <a href="{{route('adminUsers.index')}}" class="btn btn-secondary btn-lg my-2 mx-2">Tiket</a>
  <a href="{{route('adminSale.create')}}" class="btn btn-secondary btn-lg my-2 mx-2">Lokasi</a>
</div>
    
@endsection