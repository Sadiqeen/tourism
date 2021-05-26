@auth
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
                    <textarea name="" id="" cols="30" rows="10" placeholder="Message"></textarea>
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
@else
<div class="bordered_1px"></div>
<div class="alert alert-primary" role="alert">
    กรุณาเข้าสู่ระบบเพื่อรีวิว <a href="{{ route('voyager.login') }}" class="float-right">เข้าสู่ระบบ</a>
</div>
</div>
@endauth
