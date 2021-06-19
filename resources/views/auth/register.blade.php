@extends('voyager::auth.master')

@section('content')
    <div class="login-container">

        <h3>สมัครสมาชิก</h3>

        <form action="{{ route('voyager.postRegister') }}" method="POST">
            {{ csrf_field() }}
            <div class="form-group form-group-default" id="nameGroup">
                <label>ชื่อ</label>
                <div class="controls">
                    <input type="text" name="name" id="name" value="{{ old('name') }}" placeholder="Name" class="form-control" required>
                </div>
            </div>

            <div class="form-group form-group-default" id="emailGroup">
                <label>อีเมลล์</label>
                <div class="controls">
                    <input type="text" name="email" id="email" value="{{ old('email') }}" placeholder="{{ __('voyager::generic.email') }}" class="form-control" required>
                </div>
            </div>

            <div class="form-group form-group-default" id="passwordGroup">
                <label>รหัสผ่าน</label>
                <div class="controls">
                    <input type="password" name="password" placeholder="{{ __('voyager::generic.password') }}" class="form-control" required>
                </div>
            </div>

            <div class="form-group form-group-default" id="CpasswordGroup">
                <label>ยืนยันรหัสผ่าน</label>
                <div class="controls">
                    <input type="password" name="password_confirmation" placeholder="Confirm password" class="form-control" required>
                </div>
            </div>

            <button type="submit" class="btn btn-block login-button">
                <span class="signingin hidden"><span class="voyager-refresh"></span> กำลังสมัครสมาชิก...</span>
                <span class="signin">สมัครสมาชิก</span>
            </button>

        </form>

        <div style="clear:both"></div>

        @if(!$errors->isEmpty())
            <div class="alert alert-red">
                <ul class="list-unstyled">
                    @foreach($errors->all() as $err)
                        <li>{{ $err }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

    </div> <!-- .login-container -->
@endsection

@section('post_js')

    <script>
        var btn = document.querySelector('button[type="submit"]');
        var form = document.forms[0];
        var namee = document.querySelector('[name="name"]');
        var email = document.querySelector('[name="email"]');
        var password = document.querySelector('[name="password"]');
        var password_confirmation = document.querySelector('[name="password_confirmation"]');
        btn.addEventListener('click', function(ev){
            if (form.checkValidity()) {
                btn.querySelector('.signingin').className = 'signingin';
                btn.querySelector('.signin').className = 'signin hidden';
            } else {
                ev.preventDefault();
            }
        });
        namee.focus();
        document.getElementById('nameGroup').classList.add("focused");

        // Focus events for email and password fields
        namee.addEventListener('focusin', function(e){
            document.getElementById('nameGroup').classList.add("focused");
        });
        namee.addEventListener('focusout', function(e){
            document.getElementById('nameGroup').classList.remove("focused");
        });

        email.addEventListener('focusin', function(e){
            document.getElementById('emailGroup').classList.add("focused");
        });
        email.addEventListener('focusout', function(e){
            document.getElementById('emailGroup').classList.remove("focused");
        });

        password.addEventListener('focusin', function(e){
            document.getElementById('passwordGroup').classList.add("focused");
        });
        password.addEventListener('focusout', function(e){
            document.getElementById('passwordGroup').classList.remove("focused");
        });

        password_confirmation.addEventListener('focusin', function(e){
            document.getElementById('CpasswordGroup').classList.add("focused");
        });
        password_confirmation.addEventListener('focusout', function(e){
            document.getElementById('CpasswordGroup').classList.remove("focused");
        });

    </script>
@endsection
