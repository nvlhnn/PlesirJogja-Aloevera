@extends('layouts.appAdmin')

@section('content')
    <div class="container">
   <!-- Remove This Before You Start -->
   <h1>Info Pendapatan</h1>
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
   <form action="{{ route('adminChart.store') }}" method="post" enctype="multipart/form-data">
       {{ csrf_field() }}
       <div class="form-group">
           <label for="name">Tanggal Awal:</label>
           <input type="month" class="form-control" id="" name="start">
       </div>
       <div class="form-group">
            <label for="day">Tanggal Akhir: </label>
            <input type="month" class="form-control" id="" name="end">
        </div>
       <div class="form-group">
           <button type="submit" class="btn btn-md btn-primary">Submit</button>
           <button type="reset" class="btn btn-md btn-danger">Cancel</button>
       </div>
   </form>
    </div>
@endsection







