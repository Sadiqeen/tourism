<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('/', 'HomeController@home')->name('home');
Route::get('province/{province}', 'HomeController@ShowProvince')->name('ShowProvince');
Route::get('province/{province}/category/{category}', 'HomeController@ShowProvinceWithCategory')->name('ShowProvinceWithCategory');
Route::get('tourist-attraction/{tccs}', 'HomeController@ShowTouristAtts')->name('ShowTouristAtts');
