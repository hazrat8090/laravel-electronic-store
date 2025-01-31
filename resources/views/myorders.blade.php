@extends('master')
@section('content')
<div class="costum-product">
    <div class="col-sm-10">
        <a href="">Filter</a>
    </div>
    <div class="col-sm-10">
        <div class="trending-wrapper">
            <h4>My Orders </h4>
            @foreach($orders as $item)
            <div class="row searched-item card-list-devider">
               <div class="col-sm-3">
               <a href="detail/{{$item->id}}">
                <img  class="trending-image" src="{{ $item->gallery }}" >
                </a>
               </div>
               <div class="col-sm-2">
                <div class="">
                    <h2>Name : {{ $item->name }}</h2>
                    <h5>Delivery status : {{ $item->status }}</h5>
                    <h5>Address : {{ $item->address }}</h5>
                    <h5>Payment Status : {{ $item->payment_status }}</h5>
                    <h5>Payment Method : {{ $item->payment_method }}</h5>

                </div>
               </div>
               
            </div>
            @endforeach
        </div>
    </div>
</div>
@endsection