<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Регистрация &raquo; @include('blocks.title')</title>
    @include('blocks.links')
</head>

<body>
    <div class="wrapper_tot">
        <div class="content">
            @include('blocks.header')
            <div class="main_content">
                <div class="LoginMenu">@include('blocks.menu')</div>
                <form action="{{route('register.store')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="contactNEW"><p>➜Регистрация</p></div>
                    <div class="contact" id="contact_msg">
                        @if($errors->any()) <!-- Afisarea erorilor -->
                            <p class="msg">
                                <ul class="listOfEro regERR">
                                    @foreach($errors->all() as $error)
                                        <li class = "each_msg">{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </p>
                        @elseif(session('error')) <!-- Afisarea mesajului de eroare -->
                            <p class="msg">
                            <ul class="listOfEro"><li class="each_msg">{{session('error')}}</li></ul>
                            </p></br>
                        @endif
                        <label for="name">Логин:</label>
                        <input type="text" name="name" placeholder="Введите никнейм..." class="form_control" value="{{ old('name') }}"/><br />

                        <label for="email">Email:</label>
                        <input type="email" name="email" placeholder="Введите ваш email..." class="form_control" value="{{ old('email') }}"/><br />

                        <label for="avatar">Аватарка(необязательно):</label>
                        <input type="file" name="avatar" id="img_prof"/><br />

                        <!--<label for="about_user">О себе(необязательно):</label><br />
                        <textarea name="about_user" placeholder="Введите ваш текст..." class="form_control" id="message"></textarea><br /><br />-->

                        <label for="password">Пароль:</label>
                        <input type="password" name="password" placeholder="Введите пароль..." class="form_control" id="passId"/><br />

                        <label for="password_confirmation">Повторите пароль:</label>
                        <input type="password" name="password_confirmation" class="form_control" placeholder="Введите пароль..." id="passId2"/>
                        <input class="ShowPass" type="checkbox" onclick="ShowPass()"><h4>Показать пароль</h4><br />

                        <div class="form-group">
                            <label for=""></label>
                            <img src="{!!captcha_src()!!}" alt="captcha" class="captcha-img" data-refresh-config="default">
                            <a id="refresh" title="Refresh"><span class="glyphicon glyphicon-refresh"><img src="assets/reload.svg"></span></a></p>
                        </div>

                        <label for="pin_code">Введите код с картинки:</label>
                        <input type="text" name="captcha" class="form_control" /><br />

                        <div class="submitBTN"><button type="submit" name="send" class="btn_done">Зарегистрироваться</button></div><br /><br />
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
