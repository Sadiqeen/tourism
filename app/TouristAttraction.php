<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class TouristAttraction extends Model
{
    use Resizable;

    public function Category()
    {
        return $this->belongsTo('App\Category');
    }

    public function Province()
    {
        return $this->belongsTo('App\Province');
    }

    public function Comment()
    {
        return $this->hasMany('App\Comment');
    }

    public function CommentHasReview()
    {
        return $this->hasMany('App\Comment')->where('score', '>', 0);
    }
}
