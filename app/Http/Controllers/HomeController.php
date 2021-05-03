<?php

namespace App\Http\Controllers;

use App\Category;
use App\Province;
use App\TouristAttraction;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home()
    {
        $province = Province::whereHas('TouristAttraction')->orderBy('order', 'asc')->get();
        $tourism_attcs = TouristAttraction::with(['Province', 'Category'])->orderBy('created_at', 'desc')->limit(6)->get();

        return view('home', [
            'provinces' => $province,
            'tourism_attcs' => $tourism_attcs,
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

    public function ShowTouristAtts($province_name, $category_name, $tourism_attcs_name)
    {
        $tourism_attc = TouristAttraction::whereHas('Province', function ($query) use($province_name) {
            $query->where('provinces.name', $province_name);
        })->whereHas('Category', function ($query) use($category_name) {
            $query->where('categories.name', $category_name);
        })->where('name', $tourism_attcs_name)->firstOrFail();

        return view('place', [
            'destination' => $tourism_attc
        ]);
    }
}
