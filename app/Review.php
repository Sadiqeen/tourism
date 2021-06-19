<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Review extends Model
{
    public function setUserIdAttribute()
    {
        $this->attributes['user_id'] = auth()->user()->id;
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    public function Comment()
    {
        return $this->hasMany('App\Comment');
    }

    public function province()
    {
        return $this->belongsTo('App\Province');
    }

    public function CommentHasReview()
    {
        return $this->hasMany('App\Comment')->where('score', '>', 0);
    }
}
