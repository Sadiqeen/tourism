<?php

namespace App\Widgets;

use App\Review;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class ReviewDimmer extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = auth()->user()->hasRole('admin') ? Review::count() : Review::where('user_id', auth()->user()->id)->count();
        $string = $count > 1 ? "Reviews" : "Review";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-smile',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} reviews in your database. Click on button below to view all reviews.",
            'button' => [
                'text' => 'View all reviews',
                'link' => route('voyager.reviews.index'),
            ],
            'image' => Voyager::image('jonas-leupe-raWzvTTCBD8-unsplash.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return true;
    }
}
