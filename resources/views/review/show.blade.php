@extends('layouts.app')

@section('content')
<div class="destination_banner_wrap overlay"
    style="background-image: url({{ Voyager::image($review->cover_image) }}); padding: 200px 0">
    <div class="destination_text text-center">
        <h3>{{ $review->name }}</h3>
        <div class="d-flex d-md-none flex-column text-white justify-content-md-center">
            <div class="mt-3">
                <a class="text-white" href="{{ route('ShowProvince', $review->province->name) }}">
                    <i class="fa fa-map mr-1"></i> {{ $review->province->name }}
                </a>
            </div>
            <div class="mt-3">
                <a class="text-white"
                    href="{{ route('ShowProvinceWithCategory', [$review->province->name,  $review->category->name]) }}">
                    <i class="fa fa-bookmark mr-1"></i> {{ $review->category->name }}
                </a>
            </div>
            <div class="mt-3">
                <i class="fa fa-clock-o mr-1"></i> {{ $review->created_at->diffForHumans() }}
            </div>
        </div>
        <p class="d-none d-md-block mt-3">
            <a class="text-white" href="{{ route('ShowProvince', $review->province->name) }}">
                <i class="fa fa-map mr-1"></i> {{ $review->province->name }}
            </a>
            <a class="text-white"
                href="{{ route('ShowProvinceWithCategory', [$review->province->name,  $review->category->name]) }}">
                <i class="fa fa-bookmark ml-3 mr-1"></i> {{ $review->category->name }}
            </a>
            <i class="fa fa-clock-o ml-3 mr-1"></i> {{ $review->created_at->diffForHumans() }}
        </p>
    </div>
</div>

<div class="destination_details_info">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4 mb-5">
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action">ชื่อเรื่อง : {!! Str::limit(strip_tags($review->name), $limit = 20, $end = '...') !!}</a>
                    <a href="#" class="list-group-item list-group-item-action">งบประมาน : {{ $review->budget }} บาท</a>
                    <a href="#" class="list-group-item list-group-item-action">ระยะเวลา : {{ $review->duration }} วัน</a>
                    <a href="#" class="list-group-item list-group-item-action">ประเภท : {{ $review->category->name }}</a>
                    <a href="#" class="list-group-item list-group-item-action">จังหวัด : {{ $review->province->name }}</a>
                </div>
            </div>

            <div class="col-md-8">

                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="destination" role="tabpanel" aria-labelledby="home-tab">
                        <div class="destination_info">
                            {!! $review->body !!}
                        </div>
                        @if($review->panorama_image)
                        <div id="viewer"></div>
                        @endif
                    </div>
                </div>

            </div>

            <div class="col-8">
                @include('components.comment')
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
<style>
    #viewer {
        width: 100%;
        height: 500px;
    }
</style>
@endpush

@push('script')
@stack('moreScript')

@if($review->panorama_image)
<script>
    var viewer = new PhotoSphereViewer.Viewer({
    container: document.querySelector('#viewer'),
    panorama: '{{ Voyager::image( $review->panorama_image ) }}'
});
</script>
@endif
@endpush
