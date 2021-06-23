@extends('layouts.app')

@section('content')
<div class="destination_banner_wrap overlay"
    style="background-image: url({{ Voyager::image('kairat-murataliev-vdTYU7KAnFw-unsplash.jpg') }}); padding: 250px 0">
    <div class="destination_text text-center">
        <h3>บทความ</h3>
    </div>
</div>

<div class="popular_places_area">
    <div class="container">
        <div class="row">
            @foreach ($reviews as $review)
            <div class="col-lg-4 col-md-6">
                <div class="single_place">
                    <div class="thumb">
                        <img src="{{ Voyager::image($review->cover_image) }}" alt="">
                    </div>
                    <div class="place_info">
                        <div class="rating_days d-flex justify-content-between mb-4">
                            @if ($review->CommentHasReview()->count())
                            <span class="d-flex justify-content-center align-items-center">
                                @for ($start = 0; $start < ($review->CommentHasReview()->sum('score') /
                                    $review->CommentHasReview()->count()); $start++)
                                    <i class="fa fa-star text-danger"></i>
                                    @endfor
                                    @for ($leftStart = $start; $leftStart < 5; $leftStart++ ) <i
                                        class="fa fa-star text-secondary"></i>
                                        @endfor
                                        <a href="#">({{ $review->CommentHasReview()->count() }} Review)</a>
                            </span>
                            @else
                            <span class="d-flex justify-content-center align-items-center">
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <a href="#">(0 Review)</a>
                            </span>
                            @endif
                            <div class="days">
                                <p><i class="fa fa-tag"></i> {{ $review->category->name }}</p>
                            </div>
                        </div>
                        <a href="{{ route('review.show', $review) }}">
                            <h3>{{ $review->name }}</h3>
                        </a>
                        <p>{!! Str::limit(strip_tags($review->body), $limit = 80, $end = '...') !!}</p>
                        <hr>
                        <div class="d-flex justify-content-between">
                            <p>ผู้เขียน : <a href="javasctipt:void(0)" class="h6 text-danger">{{ $review->user->name ?? 'ไม่ระบุ' }}</a></p>
                            <div class="days">
                                <p><i class="fa fa-clock-o"></i> {{ $review->created_at->diffForHumans() }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

            <div class="col-12 d-flex justify-content-center">
                {{ $reviews->links() }}
            </div>
        </div>
    </div>
</div>
@endsection
