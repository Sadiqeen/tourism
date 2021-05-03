<?php

namespace App\Http\View\Composers;

use App\Province;
use Illuminate\View\View;

class NavComposer
{
    public function __construct()
    {
        //
    }

    public function compose(View $view)
    {
        $view->with('nav_place_province', Province::whereHas('TouristAttraction')->get());
    }
}
