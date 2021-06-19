<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends \TCG\Voyager\Models\User
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function HasReview($type, $id)
    {
        $query = '';

        switch ($type) {
            case 'review_id':
                $query = 'review_id';
                break;

            case 'hostel_id':
                $query = 'hostel_id';
                break;

            default:
                $query = 'tourist_attraction_id';
                break;
        }
        return $this->hasMany('App\Comment')->where($query, $id)->where('score', '>', 0);
    }
}
