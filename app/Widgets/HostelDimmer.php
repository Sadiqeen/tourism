<?php

namespace App\Widgets;

use App\Hostel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;

class HostelDimmer extends BaseDimmer
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
        $count = Hostel::count();
        $string = $count > 1 ? "Hostels" : "Hostel";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-company',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} hostels in your database. Click on button below to view all hostels.",
            'button' => [
                'text' => 'View all hostels',
                'link' => route('voyager.hostels.index'),
            ],
            'image' => Voyager::image('nicate-lee-kT-ZyaiwBe0-unsplash.jpg'),
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
