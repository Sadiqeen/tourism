@extends('layouts.app')

@section('content')
<div class="destination_banner_wrap overlay"
    style="background-image: url({{ Voyager::image($destination->cover_image) }})">
    <div class="destination_text text-center">
        <h3>{{ $destination->name }}</h3>
        <div class="d-flex d-md-none flex-column text-white justify-content-md-center">
            <div class="mt-3">
                <a class="text-white" href="{{ route('ShowProvince', $destination->province->name) }}">
                    <i class="fa fa-map mr-1"></i> {{ $destination->province->name }}
                </a>
            </div>
            <div class="mt-3">
                <a class="text-white"
                    href="{{ route('ShowProvinceWithCategory', [$destination->province->name,  $destination->category->name]) }}">
                    <i class="fa fa-bookmark mr-1"></i> {{ $destination->category->name }}
                </a>
            </div>
            <div class="mt-3">
                <i class="fa fa-clock-o mr-1"></i> {{ $destination->created_at->diffForHumans() }}
            </div>
        </div>
        <p class="d-none d-md-block mt-3">
            <a class="text-white" href="{{ route('ShowProvince', $destination->province->name) }}">
                <i class="fa fa-map mr-1"></i> {{ $destination->province->name }}
            </a>
            <a class="text-white"
                href="{{ route('ShowProvinceWithCategory', [$destination->province->name,  $destination->category->name]) }}">
                <i class="fa fa-bookmark ml-3 mr-1"></i> {{ $destination->category->name }}
            </a>
            <i class="fa fa-clock-o ml-3 mr-1"></i> {{ $destination->created_at->diffForHumans() }}
        </p>
    </div>
</div>

<div class="destination_details_info">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-9">

                <ul class="nav nav-pills justify-content-center mb-4" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#destination" role="tab"
                            aria-controls="destination" aria-selected="true">Destination</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#gallary" role="tab"
                            aria-controls="gallary" aria-selected="false">Gallary</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#map" role="tab"
                            aria-controls="map" aria-selected="false">Map</a>
                    </li>
                </ul>

                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="destination" role="tabpanel" aria-labelledby="home-tab">
                        <div class="destination_info">
                            {!! $destination->body !!}
                        </div>
                    </div>

                    <div class="tab-pane fade" id="gallary" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="row text-center text-lg-left">

                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/pWkk7iiCoDM/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/aob0ukAYfuI/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/EUfxH-pze7s/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/M185_qYH8vg/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/sesveuG_rNo/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/AvhMzHwiE_0/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/2gYsZUmockw/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/EMSDtjVHdQ8/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/8mUEy0ABdNE/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/G9Rfc1qccH4/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/aJeH0KcFkuc/400x300" alt="">
                                </a>
                            </div>
                            <div class="col-md-4 col-6">
                                <a href="#" class="d-block mb-4 h-100">
                                    <img class="img-fluid img-thumbnail"
                                        src="https://source.unsplash.com/p2TQ-3Bh3Oo/400x300" alt="">
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="map" role="tabpanel" aria-labelledby="contact-tab">
                        <div class="d-flex justify-content-center">
                            {!! $destination->location !!}
                        </div>
                    </div>
                </div>

                @include('components.comment')
            </div>
        </div>
    </div>
</div>
@endsection
