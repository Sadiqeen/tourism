<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Hostel extends Model
{
    public function Comment()
    {
        return $this->hasMany('App\Comment');
    }

    public function CommentHasReview()
    {
        return $this->hasMany('App\Comment')->where('score', '>', 0);
    }

    public function Province()
    {
        return $this->belongsTo('App\Province');
    }
}
