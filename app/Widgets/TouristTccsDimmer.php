<?php

namespace App\Widgets;

use App\TouristAttraction;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class TouristTccsDimmer extends BaseDimmer
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
        $count = TouristAttraction::count();
        $string = $count > 1 ? "Tourist attractions" : "Tourist attraction";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-tree',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} tourist attractions in your database. Click on button below to view all tourist attractions.",
            'button' => [
                'text' => 'View all tourist attractions',
                'link' => route('voyager.tourist-attractions.index'),
            ],
            'image' => Voyager::image('egle-sidaraviciute-egkbvqlQAa8-unsplash.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', Voyager::model('User'));
    }
}
