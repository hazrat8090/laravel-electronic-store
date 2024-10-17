@extends('master')
@section('content')
<div class="costum-product">
    <div class="col-sm-10">
        <a href="">Filter</a>
    </div>
    <div class="col-sm-10">
        <div class="trending-wrapper">
            <h4>Result For Products</h4>
            <a href="ordernow" class="btn btn-success">Order Now</a><br><br>
            @foreach($products as $item)
            <div class="row searched-item card-list-devider">
               <div class="col-sm-3">
               <a href="detail/{{$item->id}}">
                <img  class="trending-image" src="{{ $item->gallery }}" >
                </a>
               </div>
               <div class="col-sm-2">
                <div class="">
                    <h2>{{ $item->name }}</h2>
                    <h5>{{ $item->description }}</h5>
                </div>
               </div>
               <div class="col-sm-3">
               <a href="/removecard/{{$item->card_id}}"class="btn btn-warning">Remove From Card</a>
              </div>
            </div>
            @endforeach
        </div>
        <a href="ordernow" class="btn btn-success">Order Now</a><br><br>
    </div>
</div>
@endsection