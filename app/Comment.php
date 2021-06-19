<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Comment extends Model
{
    public function TouristAttraction()
    {
        return $this->belongsTo('App\TouristAttraction');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
