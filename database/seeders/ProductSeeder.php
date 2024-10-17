<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        DB::table('Products')->insert([
            [
                'name'=>"charger",
                'price'=>"200",
                'description'=>"Best Charging Stands For Phones (Review) in 2023 - Sacramento Bee",
                'category'=>"Devices",
                'gallery'=>"https://m.media-amazon.com/images/S/aplus-media/sc/43e32afb-5ecc-4b97-b8f5-3bdba9fccd6e.__CR0,0,300,300_PT0_SX300_V1___.jpg"
            ],
            [
                'name'=>"Mouse",
                'price'=>"500",
                'description'=>"The best mouse 2023: top computer mice for work and play | TechRadar",
                'category'=>"Device",
                'gallery'=>"https://i.rtings.com/assets/pages/B3SMmNOk/best-wireless-gaming-mouse-202106-medium.jpg"
            ]]);
    }
}
