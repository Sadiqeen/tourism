<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Province extends Model
{
    use Resizable;

    public function TouristAttraction()
    {
        return $this->hasMany('App\TouristAttraction');
    }
}
