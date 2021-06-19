<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TouristAttraction;
use App\Comment;
use App\Hostel;
use App\Review;

class CommentController extends Controller
{
    public function TouristReview(TouristAttraction $tourism_attc, Request $request)
    {
        $comment = new Comment;
        $comment->score =  $request->score;
        $comment->comment = $request->review;
        $comment->user_id =  auth()->user()->id;
        $comment->is_approved =  false;

        $tourism_attc->Comment()->save($comment);
        return redirect()->back();
    }

    public function HostelReview(Hostel $hostel, Request $request)
    {
        $comment = new Comment;
        $comment->score =  $request->score;
        $comment->comment = $request->review;
        $comment->user_id =  auth()->user()->id;
        $comment->is_approved =  false;

        $hostel->Comment()->save($comment);
        return redirect()->back();
    }

    public function ReviewReview(Review $review, Request $request)
    {
        $comment = new Comment;
        $comment->score =  $request->score;
        $comment->comment = $request->review;
        $comment->user_id =  auth()->user()->id;
        $comment->is_approved =  false;

        $review->Comment()->save($comment);
        return redirect()->back();
    }

    public function DelComment(Comment $comment)
    {
        $comment->delete();
        return redirect()->back();
    }
}
