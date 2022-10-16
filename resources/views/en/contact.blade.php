<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>FeedBack &raquo; @include('en.blocks.title')</title>
    @include('en.blocks.links')
</head>

<body>
    <div class="wrapper_tot">
        <div class="content">
            @include('en.blocks.header')
            <div class="main_content">
                <div class="LoginMenu">@include('en.blocks.menu')</div>
                <form action="{{ route('contact-form') }}" class="contactFORM" method="post" enctype="multipart/form-data">
                    <div class="contactNEW"><p>📝FeedBack</p></div>
                    <div class="contact" id="contact_msg">
                        @csrf
                        @if($errors->any()) <!-- Afisarea erorilor -->
                            <p class="msg">
                                <ul class="listOfEro">
                                    @foreach($errors->all() as $error)
                                        <li class = "each_msg">{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </p><br>
                            @elseif(session('success')) <!-- Afisarea mesajului de succes -->
                                <p class="msg_success">
                                    {{session('success')}}
                                </p>
                            @elseif(session('error')) <!-- Afisarea mesajului de eroare -->
                                <p class="msg">
                                <ul class="listOfEro"><li class="each_msg">{{session('error')}}</li></ul>
                                </p></br>
                        @endif
                        <label for="name">Ваше имя:</label>
                        <input type="text" name="name" placeholder="Введите ваше имя..." class="form_control" value="{{ old('name') }}"/><br />

                        <label for="email">Ваш e-mail:</label>
                        <input type="email" name="email" placeholder="Введите ваш email..." class="form_control" value="{{ old('email') }}"/><br />

                        <label for="subject">Тема:</label>
                        <input type="text" name="subject" class="form_control" value="{{ old('subject') }}"/><br />

                        <label for="message">Сообщение:</label>
                        <textarea name="message" placeholder="Введите ваше сообщение..." class="form_control" id="message" value="{{ old('message') }}"></textarea><br />

                        <div class="form-group">
                            <label for=""></label>
                            <img src="{!!captcha_src()!!}" alt="captcha" class="captcha-img" data-refresh-config="default">
                            <a id="refresh" title="Refresh"><span class="glyphicon glyphicon-refresh"><img src="assets/reload.svg"></span></a></p>
                        </div>

                        <label for="pin_code">Enter code from the picture:</label>
                        <input type="text" name="captcha" class="form_control" /><br />

                        <div class="submitBTN"><button type="submit" name="send" class="btn_done">Send</button></div><br /><br />

                    </div>
                </form>
            </div>
        </div>
    </div>
    @include('blocks.footer')
    <script>
        $('#refresh').on('click',function(){
            var captcha = $('img.captcha-img');
            var config = captcha.data('refresh-config');
            $.ajax({
                method: 'GET',
                url: '/get_captcha/' + config,
            }).done(function (response) {
                captcha.prop('src', response);
            });
        });
    </script>
</body>

</html>
