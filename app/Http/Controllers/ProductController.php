<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Card;
use App\Models\order;
use Session;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    //
    function index()
    {
        $data = Product::all();
        return view('product', ['products' => $data]);
    }

    function detail($id)
    {
        $data =  Product::find($id);
        return view('detail', ['product' => $data]);
    }

    function search(Request $req)
    {
        $data = Product::where('name', 'like', '%' . $req->input('query') . '%')->get();
        return view('search', ['products' => $data]);
    }

    function AddToCard(Request $req)
    {
        if ($req->session()->has('user')) {
            $card = new Card;
            $card->user_id = $req->session()->get('user')['id'];
            $card->product_id = $req->product_id;
            $card->save();
            return redirect('/');
        } else {
            return redirect('/login');
        }
    }
    static function cardItem()
    {
        $userId = Session::get('user')['id'];
        return Card::where('user_id', $userId)->count();
    }

    function cardList()
    {

        $userId = Session::get('user')['id'];
        $products = DB::table('card')
            ->join('products', 'card.product_id', '=', 'products.id')
            ->where('card.user_id', $userId)
            ->select('products.*', 'card.id as card_id')
            ->get();

        return view('cardlist', ['products' => $products]);
    }

    function removeCard($id)
    {
        Card::destroy($id);
        return redirect('cardlist');
    }

    function orderNow()
    {
        $userId = Session::get('user')['id'];
        $total = $products = DB::table('card')
            ->join('products', 'card.product_id', '=', 'products.id')
            ->where('card.user_id', $userId)
            ->sum('products.price');

        return view('ordernow', ['total' => $total]);
    }

    function orderPlace(Request $req)
    {
        $userId = Session::get('user')['id'];
        $allCard = Card::where('user_id', $userId)->get();
        foreach ($allCard as $card) {
            $order = new Order;
            $order->product_id = $card['product_id'];
            $order->user_id = $card['user_id'];
            $order->status = "pending";
            $order->payment_method = $req->payment;
            $order->payment_status = "pending";
            $order->address = $req->address;
            $order->save();
            Card::where('user_id', $userId)->delete();
        }
        $req->input();
        return redirect('/');
    }

    function myOrders()
    {
        $userId = Session::get('user')['id'];
        $orders = DB::table('orders')
            ->join('products', 'orders.product_id', '=', 'products.id')
            ->where('orders.user_id', $userId)
            ->get();

        return view('myorders', ['orders' => $orders]);
    }
}
