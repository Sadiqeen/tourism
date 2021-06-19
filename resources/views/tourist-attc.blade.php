@extends('layouts.app')

@section('content')
<div class="destination_banner_wrap overlay"
    style="background-image: url({{ Voyager::image('egle-sidaraviciute-egkbvqlQAa8-unsplash.jpg') }}); padding: 250px 0">
    <div class="destination_text text-center">
        <h3>แหล่งท่องเที่ยว</h3>
    </div>
</div>

<div class="popular_places_area">
    <div class="container">
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

            <div class="col-12 d-flex justify-content-center">
                {{ $tourism_attcs->links() }}
            </div>
        </div>
    </div>
</div>
@endsection
