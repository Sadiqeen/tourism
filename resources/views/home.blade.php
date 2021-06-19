@extends('layouts.app')

@section('content')

@if ($provinces)
@include('components.slide')
@endif

<div class="popular_places_area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section_title text-center mb_70">
                    <h3>สถานที่ท่องเที่ยว</h3>
                    {{-- <p>Suffered alteration in some form, by injected humour or good day randomised booth anim 8-bit
                        hella wolf moon beard words.</p> --}}
                </div>
            </div>
        </div>
        <div class="row">
            @foreach ($tourism_attcs as $place)
            <div class="col-lg-4 col-md-6">
                <div class="single_place">
                    <div class="thumb">
                        <img src="{{ Voyager::image($place->cover_image) }}" alt="">
                    </div>
                    <div class="place_info">
                        <a href="{{ route('ShowTouristAtts', $place->name) }}">
                            <h3>{{ $place->name }}</h3>
                        </a>
                        <p>{!! Str::limit(strip_tags($place->body), $limit = 20, $end = '...') !!}</p>
                        <div class="rating_days d-flex justify-content-between">
                            @if ($place->CommentHasReview()->count())
                            <span class="d-flex justify-content-center align-items-center">
                                @for ($start = 0; $start < ($place->CommentHasReview()->sum('score') /
                                    $place->CommentHasReview()->count()); $start++)
                                    <i class="fa fa-star text-danger"></i>
                                    @endfor
                                    @for ($leftStart = $start; $leftStart < 5; $leftStart++ ) <i
                                        class="fa fa-star text-secondary"></i>
                                        @endfor
                                        <a href="#">({{ $place->CommentHasReview()->count() }} Review)</a>
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
                                <i class="fa fa-clock-o"></i>
                                <a href="#">{{ $place->created_at->diffForHumans() }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="more_place_btn text-center">
                    <a class="boxed-btn4" href="{{ route('ShowAllTouristAtts') }}">ดูเพิ่มเติม</a>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="video_area video_bg overlay">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="video_wrap text-center">
                    <h3>Enjoy Video</h3>
                    <div class="video_icon">
                        <a class="popup-video video_play_button" href="https://www.youtube.com/watch?v=f59dDEk57i0">
                            <i class="fa fa-play"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@if ($reviews->count())
<div class="popular_places_area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section_title text-center mb_70">
                    <h3>รีวิว</h3>
                </div>
            </div>
        </div>
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
                            <p>ผู้เขียน : <a href="javasctipt:void(0)"
                                    class="h6 text-danger">{{ $review->user->name ?? 'ไม่ระบุ' }}</a></p>
                            <div class="days">
                                <p><i class="fa fa-clock-o"></i> {{ $review->created_at->diffForHumans() }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="more_place_btn text-center">
                    <a class="boxed-btn4" href="{{ route('review.index') }}">ดูเพิ่มเติม</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endif
@endsection
