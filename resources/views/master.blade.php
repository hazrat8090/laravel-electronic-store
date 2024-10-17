<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>E-commerce</title>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">

<!-- Optional theme -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</head>
<body>

    {{View::make('header')}}
    @yield('content')
    {{View::make('footer')}}
  
</body>

<style>
    .custom-login{
        height: 500px;
        padding-top: 100px;
    }
    img.slider-img{
        height: 400px !important

    }
    .custom-product{
        height: 600px;
    }
    .slider-text{
        background-color: #4c754cc2 !important;
    }
    .trending-image{
        height: 100px;
    }
    .trending-item{
        float: left;
        width: 20%;
    }
    .trending-wrapper{
        margin: 30px;
    }
    .detail-img{
        height: 250px;
    }
    .search-box{
        width: 500px !important;
    }
    .card-list-devider{
        border-bottom: 2px solid #ccc;
        margin-bottom: 20px;
        padding-bottom: 20px;
    }
</style>



</html>