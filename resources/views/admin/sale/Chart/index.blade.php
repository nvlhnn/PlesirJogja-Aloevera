@extends('layouts.appAdmin')
@section('content')
<div class="container mt-4">
  <a href="{{route('adminChart.create')}}" class="btn btn-secondary btn-lg my-2 mx-2">Pendapatan</a>
  <a href="{{route('placeChart.create')}}" class="btn btn-secondary btn-lg my-2 mx-2">Tiket</a>
</div>
    
@endsection