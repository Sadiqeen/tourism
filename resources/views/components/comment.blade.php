<div class="bordered_1px"></div>

@php
if(isset($destination)) {
    $comments = $destination;
    $route = 'TourismReview';
    $query = ['tourist_attraction_id', $destination->id];
} elseif(isset($hostel)) {
    $comments = $hostel;
    $route = 'hostel.review';
    $query = ['hostel_id', $hostel->id];
} else {
    $comments = $review;
    $route = 'review.review';
    $query = ['review_id', $review->id];
}

if (auth()->check()) {
    $reviewed = auth()->user()->HasReview($query[0], $query[1])->count();
} else {
    $reviewed = false;
}
@endphp

<div class="comment-list">
    @forelse ($comments->comment as $comment)
    <div class="single-comment mb-5">
        <div class="d-flex justify-content-between">
            <div>
                <a href="#" class="h5 text-success">{{ $comment->user->name }}</a>
                @if (auth()->check() && (auth()->user()->hasRole('admin') || auth()->user()->id === $comment->user->id))
                <form action="{{ route('DelComment', $comment) }}" method="post" id='DelCommentForm{{ $comment->id }}' style="display: inline;">
                    @csrf
                    @method('DELETE')
                    <a href="javascript:$('#DelCommentForm{{ $comment->id }}').submit()"><i class="fa fa-trash-o fa-sm text-danger ml-3" aria-hidden="true"></i></a>
                </form>
                @endif
            </div>
            <div class="text-warning" style="font-size: 2rem">
                @for ($i = 0; $i < $comment->score; $i++)
                   <span>★</span>
                @endfor
            </div>
        </div>
        <p class="comment h5">
            {{ $comment->comment }}
        </p>
        <p class="date">{{ $comment->created_at->diffForHumans() }}</p>
    </div>
    @empty

    @endforelse
</div>

@auth
<div class="contact_join">
    <div class="row">
        <div class="col-md-6">
            <h3>Review</h3>
        </div>

        @if (!$reviewed)
        <div class="col-md-6">
            <div class="rating float-md-right text-warning" style="font-size: 2rem"></div>
        </div>
        @endif
    </div>

    <form action="{{ route($route, $comments) }}"
        method="POST" id="reviewForm">
        @csrf
        <input type="hidden" name="score" id='score' value="0">

        <div class="row">
            <div class="col-lg-12">
                <div class="single_input">
                    <textarea name="review" id="review" cols="30" rows="10" placeholder="Message" required></textarea>
                    <small class="text-danger d-none" id="reviewError">กรุณาเพิ่มความคิดเห็น</small>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="submit_btn">
                    <button class="boxed-btn4" type="button" onclick="submitReviewForm()">submit</button>
                </div>
            </div>
        </div>
    </form>
</div>

<!-- Modal -->
<div class="modal fade" id="notice" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">ข้อแนะนำ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center h4">
                การให้ 0 ดาวจะไม่ถูกคำนวนในคะแนนรีวิว
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-danger" data-dismiss="modal">ยกเลิก</button>
                <button type="button" class="btn btn-success" onclick="$('#reviewForm').submit();">ตกลง</button>
            </div>
        </div>
    </div>
</div>

@push('moreScript')
<script>
    // Options
var options = {
    max_value: 5,
    step_size: 1,
    initial_value: 0,
}

$(".rated").rate();
$(".rating").rate(options);

$(".rating").on("change", function(ev, data){
    $('#score').val(data.to)
});

function submitReviewForm() {
    const score = $('#score').val()
    const review = $('#review').val()

    if (review === '') {
        $('#reviewError').removeClass('d-none');
        $('#review').addClass('border border-danger');
    }
    @if (!$reviewed)
    else if (score < 1 || score > 5) {
        $('#reviewError').addClass('d-none');
        $('#review').removeClass('border border-danger');
        $('#notice').modal('show');
    }
    @endif
    else {
        $('#reviewForm').submit();
    }
}
</script>
@endpush

@else
<div class="bordered_1px"></div>
<div class="alert alert-primary" role="alert">
    กรุณาเข้าสู่ระบบเพื่อรีวิว <a href="{{ route('voyager.login') }}" class="float-right">เข้าสู่ระบบ</a>
</div>
</div>
@endauth
