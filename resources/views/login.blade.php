<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <title>Вход &raquo; @include('blocks.title')</title>
    @include('blocks.links')
</head>

<body>
    <div class="wrapper_tot">
        <div class="content">
            @include('blocks.header')
            <div class="main_content">
                <div class="LoginMenu">@include('blocks.menu')</div>
                <form action="{{route('login')}}" method="post">
                    @csrf
                    <div class="contactNEW"><p>➜Вход</p></div>
                    <div class="contact LoginPanel">
                    @if($errors->any()) <!-- Afisarea erorilor -->
                        <p class="msg">
                            <ul class="listOfEro">
                                @foreach($errors->all() as $error)
                                    <li class = "each_msg">{{ $error }}</li>
                                @endforeach
                            </ul>
                        </p></br>
                    @elseif(session('error')) <!-- Afisarea mesajului de eroare -->
                        <p class="msg">
                            <ul class="listOfEro"><li class="each_msg">{{session('error')}}</li></ul>
                        </p></br>
                    @elseif(session('success')) <!-- Afisarea mesajului de success -->
                        <p class="msg_success">
                        <ul class="listOfSucc"><li class="each_msg">{{session('success')}}</li></ul>
                        </p></br>
                    @endif
                        <label for="login">Логин:</label>
                        <input type="text" name="name" placeholder="Введите логин..." class="form_control" /><br />

                        <label for="password">Пароль:</label>
                        <input type="password" name="password" placeholder="Введите пароль..." class="form_control" id="passId" />
                        <input class="DontForget" type="checkbox" name="remember"><h4 class="DontForgetT">Запомнить</h4>
                        <div class="ForgetPassword">
                            <a href="{{ route('password.request') }}">Забыли пароль</a>
                        </div><br /><br />

                        <div class="submitBTN"><button type="submit" name="send" class="btn_done">Войти</button></div><br /><br />

                    </div>
                </form>
            </div>
        </div>
    </div>
    @include('blocks.footer')
</body>

</html>
