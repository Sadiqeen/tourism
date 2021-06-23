<!-- slider_area_start -->
<div class="slider_area">
    <div class="slider_active owl-carousel">
        @foreach ($provinces as $province)
        <div class="single_slider  d-flex align-items-center overlay" style="background-image: url({{ Voyager::image($province->cover_image) }})">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-12 col-md-12">
                        <div class="slider_text text-center">
                            <h3>{{ $province->name }}</h3>
                            <p>{{ $province->description }}</p>
                            <a href="{{ route('ShowProvince', $province->name) }}" class="boxed-btn3">ชมสถานที่</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
<!-- slider_area_end -->
