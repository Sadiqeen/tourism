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

Route::group(['prefix' => 'auth'], function () {
    Voyager::routes();

    Route::get('login', ['uses' => 'AuthController@login', 'as' => 'voyager.login']);
    Route::get('register', ['uses' => 'AuthController@register', 'as' => 'voyager.register']);
    Route::post('register', ['uses' => 'AuthController@postRegister', 'as' => 'voyager.postRegister']);
});


Route::get('/', 'HomeController@home')->name('home');
Route::get('tourist-attractions', 'HomeController@ShowAllTouristAttc')->name('ShowAllTouristAtts');
Route::get('province/{province}', 'HomeController@ShowProvince')->name('ShowProvince');
Route::get('province/{province}/category/{category}', 'HomeController@ShowProvinceWithCategory')->name('ShowProvinceWithCategory');
Route::get('tourist-attraction/{tourism_attc}', 'HomeController@ShowTouristAtts')->name('ShowTouristAtts');
Route::post('tourist-attraction/{tourism_attc}', 'CommentController@TouristReview')->name('TourismReview');

Route::get('/hostel', 'HostelController@Index')->name('hostel.index');
Route::get('/hostels/{province}', 'HostelController@Province')->name('hostel.province');
Route::get('/hostel/{hostel}', 'HostelController@Show')->name('hostel.show');
Route::post('/hostel/{hostel}/review', 'CommentController@HostelReview')->name('hostel.review');

Route::delete('comment/{comment}', 'CommentController@DelComment')->name('DelComment');

Route::get('/review', 'ReviewController@Index')->name('review.index');
Route::get('/review/{review}/show', 'ReviewController@Show')->name('review.show');
Route::post('/review/{review}/review', 'CommentController@ReviewReview')->name('review.review');
