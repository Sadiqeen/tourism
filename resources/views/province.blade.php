@extends('layouts.app')

@section('content')
<div class="destination_banner_wrap overlay"
    style="background-image: url({{ Voyager::image($province->cover_image) }})">
    <div class="destination_text text-center">
        <h3>{{ $province->name }}</h3>
        <p>{{ $province->description }}</p>
    </div>
</div>

@if (count($categories) > 1)
<div class="d-flex justify-content-center mt-5">
    <ul class="nav nav-pills">
        @if (count($categories) > 1)
        <li class="nav-item">
            <a class="nav-link {{ !request()->route()->category ? 'active' : '' }}"
                href="{{ route('ShowProvince', $province->name) }}">ทั้งหมด</a>
        </li>
        @endif
        @foreach ($categories as $category)
        <li class="nav-item">
            <a class="nav-link {{ request()->route()->category === $category->name ? 'active' : '' }}"
                href="{{ route('ShowProvinceWithCategory', [$province->name, $category->name]) }}">{{ $category->name }}</a>
        </li>
        @endforeach
    </ul>
</div>
@endif

<div class="popular_places_area pt-5">
    <div class="container">
        <div class="row">
            @foreach ($places as $place)
            <div class="col-lg-4 col-md-6">
                <div class="single_place">
                    <div class="thumb">
                        <img src="{{ Voyager::image($place->cover_image) }}" alt="">
                        <a href="{{ $place->location }}" target="_blank" class="prise"><i class="fa fa-map-marker"
                                aria-hidden="true"></i></a>
                    </div>
                    <div class="place_info">
                        <a
                            href="{{ route('ShowTouristAtts', $place->name) }}">
                            <h3>{{ $place->name }}</h3>
                        </a>
                        <p>{!! Str::limit(strip_tags($place->body), $limit = 20, $end = '...') !!}</p>
                        <div class="rating_days d-flex justify-content-between">
                            <span class="d-flex justify-content-center align-items-center">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <a href="#">(20 Review)</a>
                            </span>
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

        <div class="d-flex justify-content-center">
            {{ $places->links() }}
        </div>
    </div>
</div>
@endsection
