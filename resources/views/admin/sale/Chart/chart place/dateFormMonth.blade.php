@extends('layouts.appAdmin')

@section('content')
    <div class="container">
   <!-- Remove This Before You Start -->
   <h1>Info Pendapatan Tempat Wisata</h1>
   <hr>
   @if (count($errors) > 0)
   <div class="alert alert-danger">
       <ul>
           @foreach ($errors->all() as $error)
               <li>{{ $error }}</li>
           @endforeach
       </ul>
   </div>
   @endif
   <form action="{{ route('placeChart.store') }}" method="post" enctype="multipart/form-data">
       {{ csrf_field() }}
       <div class="form-group">
           <label for="name">Bulan Awal:</label>
           <input type="month" class="form-control" id="" name="start">
       </div>
       <div class="form-group">
            <label for="day">Bulan Akhir: </label>
            <input type="month" class="form-control" id="" name="end">
        </div>

        @foreach ($place as $p)
        <div class="custom-control custom-checkbox custom-control-inline">
            <input type="checkbox" class="custom-control-input" id="{{$p->nama}}" name="place[]" value="{{$p->nama}}">
            <label style="width: 125px; height: 30px" class="custom-control-label" for="{{$p->nama}}">{{$p->nama}}</label>
        </div>  
        @endforeach     

        <div style="margin-top: 50px; float: right" class="form-group">
           <button type="submit" class="btn btn-md btn-primary">Submit</button>
           <button type="reset" class="btn btn-md btn-danger">Cancel</button>
       </div>
   </form>
    </div>
@endsection







