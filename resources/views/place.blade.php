@extends('layouts.app')

@section('content')
<div class="destination_banner_wrap overlay" style="background-image: url({{ Voyager::image($destination->cover_image) }})">
    <div class="destination_text text-center">
        <h3>{{ $destination->name }}</h3>
        <div class="d-flex d-md-none flex-column text-white justify-content-md-center">
            <div class="mt-3">
                <i class="fa fa-map mr-1"></i> {{ $destination->province->name }}
            </div>
            <div class="mt-3">
                <i class="fa fa-bookmark mr-1"></i> {{ $destination->category->name }}
            </div>
            <div class="mt-3">
                <i class="fa fa-clock-o mr-1"></i> {{ $destination->created_at->diffForHumans() }}
            </div>
        </div>
        <p class="d-none d-md-block mt-3">
            <i class="fa fa-map mr-1"></i> {{ $destination->province->name }}
            <i class="fa fa-bookmark ml-3 mr-1"></i> {{ $destination->category->name }}
            <i class="fa fa-clock-o ml-3 mr-1"></i> {{ $destination->created_at->diffForHumans() }}
        </p>
    </div>
</div>

<div class="destination_details_info">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-9">
                <div class="destination_info">
                    {!! $destination->body !!}
                </div>
                <div class="bordered_1px"></div>
                <div class="contact_join">
                    <h3>Contact for join</h3>
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="single_input">
                                    <input type="text" placeholder="Your Name">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="single_input">
                                    <input type="text" placeholder="Phone no.">
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single_input">
                                    <textarea name="" id="" cols="30" rows="10"placeholder="Message" ></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="submit_btn">
                                    <button class="boxed-btn4" type="submit">submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
