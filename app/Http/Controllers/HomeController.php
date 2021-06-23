<?php

namespace App\Http\Controllers;

use App\Category;
use App\Comment;
use App\Province;
use App\Review;
use App\TouristAttraction;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home()
    {
        $province = Province::whereHas('TouristAttraction')->orderBy('order', 'asc')->get();
        $tourism_attcs = TouristAttraction::with(['Province', 'Category'])
                            ->select('tourist_attractions.*', \DB::raw('score.total_score/row.total_row As total_star'))
                            ->joinSub('SELECT SUM(score) as total_score, `tourist_attraction_id` FROM `comments` WHERE `score` > 0 GROUP BY `tourist_attraction_id`', 'score', 'score.tourist_attraction_id', '=', 'tourist_attractions.id', 'left')
                            ->joinSub('SELECT count(tourist_attraction_id) as total_row, `tourist_attraction_id` FROM `comments` WHERE `score` > 0 GROUP BY `tourist_attraction_id`', 'row', 'row.tourist_attraction_id', '=', 'tourist_attractions.id', 'left')
                            ->limit(6)
                            ->orderBy('total_star', 'DESC')
                            ->get();

        $reviews = Review::with(['user', 'category'])
                        ->select('reviews.*', \DB::raw('score.total_score/row.total_row As total_star'))
                        ->joinSub('SELECT SUM(score) as total_score, `review_id` FROM `comments` WHERE `score` > 0 GROUP BY `review_id`', 'score', 'score.review_id', '=', 'reviews.id', 'left')
                        ->joinSub('SELECT count(tourist_attraction_id) as total_row, `review_id` FROM `comments` WHERE `score` > 0 GROUP BY `review_id`', 'row', 'row.review_id', '=', 'reviews.id', 'left')
                        ->orderBy('total_score', 'DESC')
                        ->limit(6)->get();

        return view('home', [
            'provinces' => $province,
            'tourism_attcs' => $tourism_attcs,
            'reviews' => $reviews,
        ]);
    }

    public function ShowAllTouristAttc()
    {
        $tourism_attcs = TouristAttraction::with(['Province', 'Category', 'Comment'])->orderBy('created_at', 'desc')->paginate(12);

        return view('tourist-attc', [
            'tourism_attcs' =>  $tourism_attcs
        ]);
    }

    public function ShowProvince($province_name, Request $request)
    {
        $tourism_attcs = new TouristAttraction;
        $cat_query = $request->query('category');
        $province = Province::where('name', $province_name)->firstOrFail();
        $categories = Category::whereHas('TouristAttraction', function ($query) use($province) {
                            $query->where('tourist_attractions.province_id', $province->id);
                        })->get();

        if ($cat_query) {
            $category = Category::where('name', $cat_query)->firstOrFail();
            $places = $tourism_attcs->where('province_id', $province->id)->where('category_id', $category->id)->paginate(15);
        } else {
            $places = $tourism_attcs->where('province_id', $province->id)->paginate(15);
        }

        return view('province', [
            'province' => $province,
            'places' => $places,
            'categories' => $categories
        ]);
    }

    public function ShowProvinceWithCategory($province_name, $category_name)
    {
        $tourism_attcs = new TouristAttraction;
        $province = Province::where('name', $province_name)->firstOrFail();
        $categories = Category::whereHas('TouristAttraction', function ($query) use($province) {
                            $query->where('tourist_attractions.province_id', $province->id);
                        })->get();

        $category = Category::where('name', $category_name)->firstOrFail();
        $places = $tourism_attcs->where('province_id', $province->id)->where('category_id', $category->id)->paginate(15);

        return view('province', [
            'province' => $province,
            'places' => $places,
            'categories' => $categories
        ]);
    }

    public function ShowTouristAtts($tourism_attcs_name)
    {
        $tourism_attc = TouristAttraction::with(['category', 'province', 'comment.user'])->where('name', $tourism_attcs_name)->firstOrFail();

        Carbon::setLocale('th');
        return view('place', [
            'destination' => $tourism_attc
        ]);
    }

}
