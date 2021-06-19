<?php

namespace App\Http\Controllers;

use App\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function Index()
    {
        $reviews = Review::with(['user', 'category'])->paginate(12);

        return view('review.index', [
            'reviews' => $reviews
        ]);
    }

    public function show(Review $review)
    {
        return view('review.show', [
            'review' => $review
        ]);
    }
}
